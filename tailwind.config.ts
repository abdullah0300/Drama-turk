import type { Config } from 'tailwindcss';

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        canvas: {
          DEFAULT: 'var(--canvas-bg)',
          subtle: 'var(--canvas-subtle)',
          elevated: 'var(--canvas-elevated)',
          overlay: 'var(--canvas-overlay)',
        },
        surface: {
          DEFAULT: 'var(--surface-bg)',
          hover: 'var(--surface-hover)',
          active: 'var(--surface-active)',
          border: 'var(--surface-border)',
          'border-strong': 'var(--surface-border-strong)',
        },
        brand: {
          DEFAULT: 'var(--accent-primary)',
          hover: 'var(--accent-hover)',
          muted: 'var(--accent-muted)',
          subtle: 'var(--accent-subtle)',
        },
        text: {
          primary: 'var(--text-primary)',
          secondary: 'var(--text-secondary)',
          tertiary: 'var(--text-tertiary)',
          muted: 'var(--text-muted)',
        },
        amber: {
          50: '#fef9ec', 100: '#fdf0c9', 200: '#fbe092', 300: '#f8cd62',
          400: '#f6c04e', 500: '#f2b33d', 600: '#d99a22', 700: '#b27a18',
          800: '#8a5e17', 900: '#6e4b17', 950: '#3d2708',
        },
        status: {
          success: '#10b981',
          warning: '#f59e0b',
          error: '#ef4444',
          info: '#3b82f6',
        }
      },
      fontFamily: {
        sans: ['var(--font-sans)', 'system-ui', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'sans-serif'],
        display: ['var(--font-display)', 'Georgia', 'Cambria', 'serif'],
        urdu: ['var(--font-urdu)', 'Noto Nastaliq Urdu', 'Jameel Noori Nastaleeq', 'Urdu Typesetting', 'Tahoma', 'sans-serif'],
      },
      maxWidth: {
        'page': '1440px',
        'reading': '72ch',
      },
      aspectRatio: {
        'poster': '2 / 3',
        'backdrop': '16 / 9',
        'thumbnail': '16 / 9',
        'square': '1 / 1',
      },
      boxShadow: {
        'card': '0 4px 20px -2px rgba(0, 0, 0, 0.5)',
        'elevated': '0 10px 30px -5px rgba(0, 0, 0, 0.7)',
        'player': '0 20px 50px -10px rgba(0, 0, 0, 0.8)',
        'focus': '0 0 0 3px var(--accent-subtle), 0 0 0 1px var(--accent-primary)',
      },
      transitionDuration: {
        'instant': '150ms',
        'standard': '250ms',
        'reveal': '350ms',
      }
    },
  },
  plugins: [],
};
export default config;
