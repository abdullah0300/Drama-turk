import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const token = searchParams.get('token');

  if (!token) {
    return new NextResponse(renderHtml('Invalid Link', 'Missing unsubscribe token.', false), {
      status: 400,
      headers: { 'Content-Type': 'text/html; charset=utf-8' },
    });
  }

  const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;
  const supabase = createClient(url, key);

  const { data, error } = await supabase
    .from('drama_subscriptions')
    .update({ status: 'unsubscribed', updated_at: new Date().toISOString() })
    .eq('unsubscribe_token', token)
    .select('email, drama_name, drama_id')
    .single();

  if (error || !data) {
    return new NextResponse(
      renderHtml('Subscription Not Found', 'This subscription link is invalid or has already been removed.', false),
      {
        status: 404,
        headers: { 'Content-Type': 'text/html; charset=utf-8' },
      }
    );
  }

  return new NextResponse(
    renderHtml(
      'Unsubscribed Successfully',
      `You have been unsubscribed from notifications for <strong>${data.drama_name || data.drama_id}</strong>. You will no longer receive episode alerts for this series.`,
      true
    ),
    {
      status: 200,
      headers: { 'Content-Type': 'text/html; charset=utf-8' },
    }
  );
}

function renderHtml(title: string, message: string, isSuccess: boolean) {
  return `
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title} | Great Nation</title>
        <style>
          body {
            margin: 0;
            padding: 0;
            background-color: #09090b;
            color: #f4f4f5;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
          }
          .card {
            background-color: #18181b;
            border: 1px solid #27272a;
            border-radius: 16px;
            padding: 40px;
            max-width: 460px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.5);
            margin: 20px;
          }
          .icon {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            margin-bottom: 20px;
            background-color: ${isSuccess ? 'rgba(34, 197, 94, 0.15)' : 'rgba(239, 68, 68, 0.15)'};
            color: ${isSuccess ? '#4ade80' : '#f87171'};
          }
          h1 {
            font-size: 22px;
            margin: 0 0 12px;
            color: #fafafa;
          }
          p {
            font-size: 15px;
            line-height: 1.6;
            color: #a1a1aa;
            margin: 0 0 28px;
          }
          a.btn {
            display: inline-block;
            background-color: #f59e0b;
            color: #09090b;
            font-weight: 700;
            text-decoration: none;
            padding: 12px 24px;
            border-radius: 8px;
            font-size: 14px;
          }
        </style>
      </head>
      <body>
        <div class="card">
          <div class="icon">${isSuccess ? '✓' : '!'}</div>
          <h1>${title}</h1>
          <p>${message}</p>
          <a href="/" class="btn">Return to Great Nation</a>
        </div>
      </body>
    </html>
  `;
}
