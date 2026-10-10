import { Resend } from 'resend';
import { siteConfig } from '@/config/site';

const resendApiKey = process.env.RESEND_API_KEY || '';
export const resend = new Resend(resendApiKey);

// Verified domain on Resend: greatnation.webcraftio.com
export const EMAIL_FROM = process.env.EMAIL_FROM || 'Great Nation <notifications@greatnation.webcraftio.com>';

interface ConfirmationParams {
  email: string;
  dramaName: string;
  dramaId: string;
  unsubscribeToken: string;
}

interface EpisodeAlertParams {
  email: string;
  dramaName: string;
  dramaId: string;
  season: number;
  episode: number;
  bolum?: number | null;
  watchUrl: string;
  thumbnailUrl?: string;
  unsubscribeToken: string;
}

export async function sendSubscriptionConfirmation({
  email,
  dramaName,
  dramaId,
  unsubscribeToken,
}: ConfirmationParams) {
  const dramaUrl = `${siteConfig.domain}/drama/${dramaId}`;
  const unsubscribeUrl = `${siteConfig.domain}/api/notifications/unsubscribe?token=${unsubscribeToken}`;

  const html = `
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Subscribed to ${dramaName} Alerts</title>
      </head>
      <body style="margin: 0; padding: 0; background-color: #09090b; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; color: #f4f4f5;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px; margin: 0 auto; padding: 40px 20px;">
          <tr>
            <td align="center" style="padding-bottom: 24px;">
              <a href="${siteConfig.domain}" style="text-decoration: none; color: #f59e0b; font-size: 24px; font-weight: 800; letter-spacing: -0.5px;">
                Great Nation<span style="color: #fbbf24;">.</span>
              </a>
            </td>
          </tr>
          <tr>
            <td style="background-color: #18181b; border: 1px solid #27272a; border-radius: 16px; padding: 36px 32px; box-shadow: 0 10px 25px rgba(0,0,0,0.5);">
              <div style="display: inline-block; padding: 6px 12px; background-color: rgba(245, 158, 11, 0.15); border: 1px solid rgba(245, 158, 11, 0.3); border-radius: 9999px; color: #fbbf24; font-size: 12px; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 16px;">
                ✓ Subscription Confirmed
              </div>
              <h1 style="margin: 0 0 16px; color: #fafafa; font-size: 24px; font-weight: 700; line-height: 1.3;">
                You're all set for ${dramaName} alerts!
              </h1>
              <p style="margin: 0 0 24px; color: #a1a1aa; font-size: 15px; line-height: 1.6;">
                We'll email you the moment the newest episode drops with verified Urdu and English subtitles. No spam, no fluff—just direct streaming links.
              </p>
              <div style="margin: 28px 0;">
                <a href="${dramaUrl}" style="display: inline-block; background-color: #f59e0b; color: #09090b; font-size: 15px; font-weight: 700; text-decoration: none; padding: 14px 28px; border-radius: 8px; box-shadow: 0 4px 14px rgba(245, 158, 11, 0.3);">
                  Browse Available Episodes
                </a>
              </div>
              <p style="margin: 24px 0 0; font-size: 13px; color: #71717a; border-top: 1px solid #27272a; padding-top: 20px;">
                Expected broadcast slots and countdown timers are available anytime on our live schedule.
              </p>
            </td>
          </tr>
          <tr>
            <td align="center" style="padding-top: 24px; font-size: 12px; color: #71717a; line-height: 1.5;">
              You received this because you requested episode notifications for ${dramaName} on Great Nation.<br>
              <a href="${unsubscribeUrl}" style="color: #a1a1aa; text-decoration: underline; margin-top: 8px; display: inline-block;">
                Unsubscribe from ${dramaName} alerts
              </a>
            </td>
          </tr>
        </table>
      </body>
    </html>
  `;

  const text = `Great Nation - Subscribed to ${dramaName} Alerts\n\nYou're all set! We'll email you the moment the newest episode drops with verified Urdu and English subtitles.\n\nBrowse available episodes: ${dramaUrl}\n\nTo unsubscribe from ${dramaName} alerts, visit: ${unsubscribeUrl}`;

  return await resend.emails.send({
    from: EMAIL_FROM,
    to: email,
    subject: `Subscribed: ${dramaName} episode alerts on Great Nation`,
    html,
    text,
    headers: {
      'List-Unsubscribe': `<${unsubscribeUrl}>`,
      'List-Unsubscribe-Post': 'List-Unsubscribe=One-Click',
    },
  });
}

export async function sendEpisodeReleaseAlert({
  email,
  dramaName,
  dramaId,
  season,
  episode,
  bolum,
  watchUrl,
  thumbnailUrl,
  unsubscribeToken,
}: EpisodeAlertParams) {
  const unsubscribeUrl = `${siteConfig.domain}/api/notifications/unsubscribe?token=${unsubscribeToken}`;
  const episodeHeading = `Season ${season} Episode ${episode}${bolum != null && bolum !== episode ? ` (Bölüm ${bolum})` : ''}`;

  const html = `
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>New Episode: ${dramaName} ${episodeHeading}</title>
      </head>
      <body style="margin: 0; padding: 0; background-color: #09090b; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; color: #f4f4f5;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px; margin: 0 auto; padding: 40px 20px;">
          <tr>
            <td align="center" style="padding-bottom: 24px;">
              <a href="${siteConfig.domain}" style="text-decoration: none; color: #f59e0b; font-size: 24px; font-weight: 800; letter-spacing: -0.5px;">
                Great Nation<span style="color: #fbbf24;">.</span>
              </a>
            </td>
          </tr>
          <tr>
            <td style="background-color: #18181b; border: 1px solid #27272a; border-radius: 16px; overflow: hidden; box-shadow: 0 10px 25px rgba(0,0,0,0.5);">
              ${
                thumbnailUrl
                  ? `<div style="width: 100%; height: 260px; overflow: hidden; background-color: #000;">
                      <img src="${thumbnailUrl}" alt="${dramaName} ${episodeHeading}" style="width: 100%; height: 100%; object-fit: cover; display: block;" />
                    </div>`
                  : ''
              }
              <div style="padding: 32px 28px;">
                <div style="display: inline-block; padding: 6px 12px; background-color: rgba(34, 197, 94, 0.15); border: 1px solid rgba(34, 197, 94, 0.3); border-radius: 9999px; color: #4ade80; font-size: 12px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 14px;">
                  ● NOW STREAMING
                </div>
                <h1 style="margin: 0 0 8px; color: #fafafa; font-size: 24px; font-weight: 800; line-height: 1.25;">
                  ${dramaName}
                </h1>
                <h2 style="margin: 0 0 16px; color: #fbbf24; font-size: 18px; font-weight: 600;">
                  ${episodeHeading}
                </h2>
                <p style="margin: 0 0 24px; color: #a1a1aa; font-size: 15px; line-height: 1.6;">
                  The latest episode is now live on Great Nation with full HD streaming and verified Urdu &amp; English subtitles.
                </p>
                <div style="margin: 28px 0 12px;">
                  <a href="${watchUrl}" style="display: inline-block; background-color: #f59e0b; color: #09090b; font-size: 16px; font-weight: 800; text-decoration: none; padding: 15px 32px; border-radius: 8px; box-shadow: 0 4px 14px rgba(245, 158, 11, 0.4);">
                    Watch Episode Now ▶
                  </a>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <td align="center" style="padding-top: 24px; font-size: 12px; color: #71717a; line-height: 1.5;">
              You're receiving this instant alert because you follow ${dramaName} on Great Nation.<br>
              <a href="${unsubscribeUrl}" style="color: #a1a1aa; text-decoration: underline; margin-top: 8px; display: inline-block;">
                Unsubscribe from ${dramaName} alerts
              </a>
            </td>
          </tr>
        </table>
      </body>
    </html>
  `;

  const text = `Great Nation - New Episode Live\n\n${dramaName} - ${episodeHeading}\n\nThe latest episode is now live on Great Nation with full HD streaming and verified Urdu & English subtitles.\n\nWatch Episode Now: ${watchUrl}\n\nTo unsubscribe from ${dramaName} alerts, visit: ${unsubscribeUrl}`;

  return await resend.emails.send({
    from: EMAIL_FROM,
    to: email,
    subject: `New Episode: ${dramaName} ${episodeHeading} is now streaming`,
    html,
    text,
    headers: {
      'List-Unsubscribe': `<${unsubscribeUrl}>`,
      'List-Unsubscribe-Post': 'List-Unsubscribe=One-Click',
    },
  });
}
