const fs = require('fs');
const path = require('path');
const ts = require('typescript');
const Module = require('module');
const cache = new Map();
function loadTypescript(file) {
  const absolute = path.resolve(file);
  if (cache.has(absolute)) return cache.get(absolute).exports;
  const compiled = ts.transpileModule(fs.readFileSync(absolute, 'utf8'), {
    compilerOptions: { module: ts.ModuleKind.CommonJS, target: ts.ScriptTarget.ES2020, jsx: ts.JsxEmit.ReactJSX, esModuleInterop: true },
  }).outputText;
  const mod = new Module(absolute, module);
  mod.filename = absolute;
  mod.paths = Module._nodeModulePaths(path.dirname(absolute));
  cache.set(absolute, mod);
  const nativeRequire = mod.require.bind(mod);
  mod.require = request => {
    // Only used by these Node verification scripts; Next enforces server-only in the app.
    if (request === 'server-only') return {};
    const stem = request.startsWith('@/') ? path.resolve('src', request.slice(2)) : request.startsWith('.') ? path.resolve(path.dirname(absolute), request) : null;
    if (stem) {
      const target = [stem + '.ts', stem + '.tsx'].find(fs.existsSync);
      if (target) return loadTypescript(target);
    }
    return nativeRequire(request);
  };
  mod._compile(compiled, absolute);
  return mod.exports;
}
module.exports = { loadTypescript };
