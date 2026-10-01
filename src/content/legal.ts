/**
 * Legal page copy (Terms, Privacy, DMCA). Each section is a list of blocks:
 * a paragraph string, a bullet list ({ ul }), a numbered list ({ ol }), or a
 * contact line ({ email: true }) that renders the site's contact address.
 */
export type LegalBlock = string | { ul: string[] } | { ol: string[] } | { email: true; label?: string };
export interface LegalSection { id: string; title: string; blocks: LegalBlock[] }
export interface LegalDoc {
  slug: 'terms' | 'privacy' | 'dmca';
  title: string;
  kicker: string;
  summary: string;
  updated: string;
  intro: LegalBlock[];
  sections: LegalSection[];
}

const EMAIL: LegalBlock = { email: true };

export const terms: LegalDoc = {
  slug: 'terms',
  title: 'Terms & Conditions',
  kicker: 'Legal',
  summary: 'The rules and regulations for using the GREAT NATION website.',
  updated: 'October 1, 2026',
  intro: [
    'Welcome to GREAT NATION!',
    'These Terms and Conditions outline the rules and regulations for the use of the GREAT NATION website, located at https://greatnation.webcraftio.com.',
    'By accessing this website, you agree to be bound by these Terms and Conditions. If you do not agree with any of the terms stated on this page, please discontinue your use of the website.',
    'The following terminology applies to these Terms and Conditions, Privacy Policy, Disclaimer, and all related agreements: "Client", "You", and "Your" refers to you, the person accessing or using this website and complying with these Terms and Conditions. "The Company", "Ourselves", "We", "Our", and "Us" refers to GREAT NATION. "Party", "Parties", or "Us" refers to both you and GREAT NATION.',
    'All terms refer to the offer, acceptance, and consideration necessary to provide our services and operate the website in accordance with applicable laws. Any use of the above terminology or other words in the singular, plural, capitalization, and/or he/she or they are taken as interchangeable and therefore as referring to the same.',
  ],
  sections: [
    {
      id: 'cookies', title: 'Cookies', blocks: [
        'We use cookies and similar technologies to improve your experience on our website.',
        'By accessing GREAT NATION, you agree to the use of cookies in accordance with our Privacy Policy.',
        'Cookies may be used to enable certain website functionality, remember preferences, analyze website usage, and improve our services. Some third-party services, including analytics, advertising, or affiliate partners, may also use cookies or similar technologies.',
      ],
    },
    {
      id: 'license', title: 'License', blocks: [
        'Unless otherwise stated, GREAT NATION and/or its licensors own the intellectual property rights for all material on this website. All intellectual property rights are reserved.',
        'You may access material from GREAT NATION for your own personal, non-commercial use, subject to the restrictions set out in these Terms and Conditions.',
        'You must not:',
        { ul: [
          'Republish material from GREAT NATION without prior written permission.',
          'Sell, rent, or sub-license material from GREAT NATION.',
          'Reproduce, duplicate, or copy material from GREAT NATION for unauthorized commercial purposes.',
          'Redistribute content from GREAT NATION without permission.',
          'Use website content in a manner that violates applicable laws or third-party rights.',
        ] },
        'This Agreement begins on the date you first access or use the website.',
      ],
    },
    {
      id: 'user-content', title: 'User Comments and Content', blocks: [
        'Certain areas of this website may allow users to post, submit, or exchange opinions, information, comments, or other content.',
        'GREAT NATION does not necessarily review user-generated content before it is posted. Comments and other user submissions represent the views and opinions of the individuals who post them and do not necessarily represent the views or opinions of GREAT NATION, its owners, employees, agents, or affiliates.',
        'To the maximum extent permitted by applicable law, GREAT NATION shall not be responsible or liable for user-generated content or for any claims, damages, losses, or expenses resulting from the posting, use, or appearance of such content on the website.',
        'We reserve the right to monitor, moderate, edit, restrict, or remove any user content that we believe is inappropriate, offensive, unlawful, misleading, or otherwise violates these Terms and Conditions.',
        'By submitting content to our website, you represent and warrant that:',
        { ul: [
          'You have the right and necessary permissions to submit the content.',
          'Your content does not infringe any intellectual property rights, including copyright, trademark, patent, or other rights of any third party.',
          'Your content does not contain defamatory, libelous, offensive, indecent, unlawful, or privacy-infringing material.',
          'Your content is not intended to unlawfully solicit or promote commercial activities or unlawful activity.',
        ] },
        'By submitting content to GREAT NATION, you grant us a non-exclusive, worldwide, royalty-free license to use, reproduce, publish, display, modify, and distribute that content in connection with operating and promoting our website and services, subject to applicable law.',
      ],
    },
    {
      id: 'hyperlinking', title: 'Hyperlinking to Our Content', blocks: [
        'The following organizations may link to our website without prior written approval:',
        { ul: [
          'Government agencies;',
          'Search engines;',
          'News organizations;',
          'Online directory distributors, when linking in the same manner as they link to other listed websites; and',
          'Other organizations that do not use deceptive, misleading, or inappropriate linking practices.',
        ] },
        'Organizations may link to our homepage or other publicly available pages provided that the link:',
        { ol: [
          'Is not deceptive;',
          'Does not falsely imply sponsorship, endorsement, or approval by GREAT NATION; and',
          'Fits within the context of the linking website.',
        ] },
        'We may consider and approve other link requests from organizations such as:',
        { ul: [
          'Commonly known consumer or business information sources;',
          'Online community websites;',
          'Associations and organizations;',
          'Online directory distributors;',
          'Internet portals;',
          'Accounting, law, or consulting firms;',
          'Educational institutions; and',
          'Trade associations.',
        ] },
        'We may approve such requests at our discretion where the link is relevant, appropriate, and does not negatively affect the reputation or operation of GREAT NATION.',
        'If you wish to request permission to link to our website, please contact us at:',
        EMAIL,
        'Please include your name, organization name, contact information, the URL of your website, the URLs from which you intend to link, and the pages on our website to which you would like to link.',
        'Approved organizations may hyperlink to our website using:',
        { ul: [
          'Our corporate name, GREAT NATION;',
          'The URL being linked to; or',
          'Another appropriate description of our website that makes sense within the context of the linking website.',
        ] },
        'You may not use the GREAT NATION logo or other artwork for linking without prior written permission.',
      ],
    },
    {
      id: 'iframes', title: 'iFrames', blocks: [
        'Without prior approval and written permission, you may not create frames around our webpages that alter the visual presentation, appearance, or functionality of our website.',
      ],
    },
    {
      id: 'content-liability', title: 'Content Liability', blocks: [
        'We are not responsible for content appearing on websites operated by third parties that link to or reference GREAT NATION.',
        'You agree to protect and defend GREAT NATION against claims arising from content or activities on your website where such claims result from your use of links to our website.',
        'No link to our website should appear on a website that may reasonably be interpreted as:',
        { ul: [
          'Libelous or defamatory;',
          'Obscene or unlawful;',
          'Criminal or promoting criminal activity;',
          'Infringing third-party intellectual property rights; or',
          'Otherwise violating applicable laws or regulations.',
        ] },
      ],
    },
    {
      id: 'privacy', title: 'Your Privacy', blocks: [
        'Please review our Privacy Policy for information about how we collect, use, store, and protect information relating to visitors and users of the website.',
      ],
    },
    {
      id: 'reservation', title: 'Reservation of Rights', blocks: [
        'We reserve the right to request that you remove any link to our website or any particular page on our website.',
        'You agree to immediately remove such links upon our request.',
        'We also reserve the right to amend these Terms and Conditions and our linking policy at any time. By continuing to use or link to our website after changes are published, you agree to be bound by the updated Terms and Conditions.',
      ],
    },
    {
      id: 'link-removal', title: 'Removal of Links from Our Website', blocks: [
        'If you find any link on GREAT NATION that you believe is offensive, inappropriate, misleading, or otherwise problematic, you may contact us at:',
        EMAIL,
        'We will consider requests to remove links, but we are not obligated to remove any particular link or to respond directly to every request.',
      ],
    },
    {
      id: 'website-information', title: 'Website Information', blocks: [
        'We do not guarantee that the information provided on this website is always complete, accurate, or current.',
        'We do not warrant that the website will always remain available or that all information and materials will always be kept up to date.',
      ],
    },
    {
      id: 'disclaimer', title: 'Disclaimer', blocks: [
        'To the maximum extent permitted by applicable law, GREAT NATION excludes all representations, warranties, and conditions relating to our website and your use of the website.',
        'Nothing in this disclaimer will:',
        { ul: [
          'Limit or exclude liability for death or personal injury where such liability cannot legally be excluded;',
          'Limit or exclude liability for fraud or fraudulent misrepresentation;',
          'Limit any liability in a manner that is not permitted under applicable law; or',
          'Exclude any liability that cannot legally be excluded.',
        ] },
        'The limitations and exclusions of liability contained in these Terms and Conditions and elsewhere on the website are subject to the preceding provisions and apply to liabilities arising under contract, tort, negligence, breach of statutory duty, or otherwise, to the maximum extent permitted by applicable law.',
        'Where the website and its information or services are provided free of charge, GREAT NATION will not be liable for any loss or damage of any nature to the maximum extent permitted by applicable law.',
      ],
    },
    {
      id: 'contact', title: 'Contact Us', blocks: [
        'If you have any questions, concerns, or requests regarding these Terms and Conditions, please contact us at:',
        EMAIL,
      ],
    },
  ],
};

export const privacy: LegalDoc = {
  slug: 'privacy',
  title: 'Privacy Policy',
  kicker: 'Legal',
  summary: 'What information may be collected through GREAT NATION, how it may be used, and the choices available to you.',
  updated: 'October 1, 2026',
  intro: [
    'At GREAT NATION, accessible from https://greatnation.webcraftio.com, your privacy is important to us. This Privacy Policy explains what information may be collected through our website, how that information may be used, and the choices available to you.',
    'By using our website, you acknowledge the practices described in this Privacy Policy.',
  ],
  sections: [
    {
      id: 'information-we-collect', title: 'Information We Collect', blocks: [
        'The information we collect depends on how you interact with our website.',
      ],
    },
    {
      id: 'information-you-provide', title: 'Information You Provide', blocks: [
        'If you contact us directly, we may receive information such as:',
        { ul: [
          'Your name;',
          'Email address;',
          'The contents of your message;',
          'Attachments or other information you choose to provide; and',
          'Any other information you voluntarily submit.',
        ] },
        'We only use information provided through direct communication for purposes reasonably related to responding to your request, providing support, handling inquiries, or managing our website.',
      ],
    },
    {
      id: 'automatically-collected', title: 'Automatically Collected Information', blocks: [
        'When you visit GREAT NATION, certain technical information may be collected automatically by our hosting provider, analytics services, security systems, or other technologies used to operate the website.',
        'This information may include:',
        { ul: [
          'IP address;',
          'Browser type and version;',
          'Device type;',
          'Operating system;',
          'Date and time of access;',
          'Referring and exit pages;',
          'Approximate geographic information;',
          'Pages visited; and',
          'Other technical or usage information.',
        ] },
        'This information may be used to operate, maintain, secure, and improve the website and to understand how visitors interact with it.',
      ],
    },
    {
      id: 'how-we-use', title: 'How We Use Information', blocks: [
        'Information collected through the website may be used to:',
        { ul: [
          'Operate and maintain GREAT NATION;',
          'Improve website functionality and user experience;',
          'Understand website traffic and usage patterns;',
          'Respond to questions, requests, or communications;',
          'Detect, prevent, and investigate fraud, abuse, or security incidents;',
          'Maintain website security;',
          'Analyze technical performance; and',
          'Comply with applicable legal obligations.',
        ] },
        'We do not use personal information for purposes unrelated to the operation of the website or the purpose for which it was provided, except where permitted or required by law.',
      ],
    },
    {
      id: 'cookies', title: 'Cookies and Similar Technologies', blocks: [
        'GREAT NATION may use cookies and similar technologies to support website functionality, remember preferences, understand website usage, and improve the user experience.',
        'Some cookies may be placed by third-party services that provide functionality, analytics, advertising, security, or other services on our behalf.',
        'You can manage or disable cookies through your browser settings. Disabling certain cookies may affect the functionality of parts of the website.',
      ],
    },
    {
      id: 'third-party-services', title: 'Third-Party Services', blocks: [
        'GREAT NATION may use third-party services to operate, analyze, secure, or improve the website.',
        'These third parties may process certain technical or usage information in accordance with their own privacy policies.',
        'We do not control the privacy practices of third-party websites or services. We encourage you to review the privacy policies of any third-party services you access through our website.',
      ],
    },
    {
      id: 'third-party-links', title: 'Third-Party Links', blocks: [
        'Our website may contain links to external websites, platforms, or services.',
        'GREAT NATION is not responsible for the privacy practices, content, security, or policies of third-party websites. Once you leave our website, the privacy policy of the destination website may apply.',
      ],
    },
    {
      id: 'data-security', title: 'Data Security', blocks: [
        'We take reasonable measures to protect information handled through our website against unauthorized access, alteration, disclosure, or destruction.',
        'However, no website, online service, or method of electronic transmission can be guaranteed to be completely secure. Therefore, we cannot guarantee absolute security of information transmitted to or through our website.',
      ],
    },
    {
      id: 'data-retention', title: 'Data Retention', blocks: [
        'We retain information only for as long as reasonably necessary for the purposes described in this Privacy Policy, to maintain business and website records, resolve disputes, enforce agreements, or comply with applicable legal obligations.',
        'The actual retention period may vary depending on the type of information and the reason it was collected.',
      ],
    },
    {
      id: 'children', title: "Children's Privacy", blocks: [
        'GREAT NATION does not knowingly seek to collect personal information from children where such collection is prohibited by applicable law.',
        'If you believe that a child has provided personal information through our website without appropriate consent, please contact us at:',
        EMAIL,
        'If we determine that such information has been collected improperly, we will take reasonable steps to delete it where required by applicable law.',
      ],
    },
    {
      id: 'your-rights', title: 'Your Privacy Rights', blocks: [
        'Depending on your location and applicable law, you may have certain rights regarding your personal information. These may include the right to:',
        { ul: [
          'Request access to personal information we hold about you;',
          'Request correction of inaccurate information;',
          'Request deletion of personal information in certain circumstances;',
          'Object to or restrict certain processing;',
          'Request portability of certain information; and',
          'Withdraw consent where processing is based on consent.',
        ] },
        'To exercise an applicable privacy right, contact us at:',
        EMAIL,
        'We may need to verify your identity before processing certain requests. We will respond to valid requests within the timeframe required by applicable law.',
      ],
    },
    {
      id: 'changes', title: 'Changes to This Privacy Policy', blocks: [
        'We may update this Privacy Policy from time to time to reflect changes to our website, services, technologies, or legal requirements.',
        'Any changes will be posted on this page with an updated "Last Updated" date.',
        'We encourage you to review this Privacy Policy periodically.',
      ],
    },
    {
      id: 'contact', title: 'Contact Us', blocks: [
        'If you have questions, concerns, or requests regarding this Privacy Policy, please contact us at:',
        EMAIL,
      ],
    },
  ],
};

export const dmca: LegalDoc = {
  slug: 'dmca',
  title: 'Copyright & Content Disclaimer',
  kicker: 'DMCA',
  summary: 'How GREAT NATION handles third-party content and how to report a copyright concern.',
  updated: 'October 1, 2026',
  intro: [],
  sections: [
    {
      id: 'ownership', title: 'Ownership Disclaimer', blocks: [
        'GREAT NATION respects the intellectual property rights of others. Some images, videos, articles, references, or other materials displayed on this website may originate from publicly available sources, social media platforms, third-party websites, or other online sources. We do not claim ownership of third-party content unless explicitly stated.',
      ],
    },
    {
      id: 'purpose', title: 'Purpose of Use', blocks: [
        'Content on GREAT NATION may be used for informational, educational, commentary, criticism, news, research, or entertainment purposes where applicable. The presence of third-party content on this website does not necessarily imply ownership or endorsement by GREAT NATION.',
        'Nothing on this page should be interpreted as a blanket claim that all third-party content qualifies for fair use or another copyright exception. Copyright exceptions vary depending on the circumstances and applicable law.',
      ],
    },
    {
      id: 'reporting', title: 'Reporting Copyright Concerns', blocks: [
        'If you are the copyright owner or an authorized representative of copyrighted material appearing on GREAT NATION and believe that your rights have been infringed, please contact us at:',
        EMAIL,
        "Please include sufficient information to identify the copyrighted work, the material in question, the location of the material on our website, your contact information, and evidence that you are the copyright owner or authorized to act on the owner's behalf.",
        'After receiving a valid copyright complaint, we will review the matter and, where appropriate, take reasonable action, which may include removing or disabling access to the identified material.',
      ],
    },
    {
      id: 'dmca-compliance', title: 'DMCA Compliance', blocks: [
        'GREAT NATION respects applicable copyright laws and will respond to valid copyright notices in accordance with applicable law, including the Digital Millennium Copyright Act (DMCA), where applicable.',
      ],
    },
    {
      id: 'third-party', title: 'Third-Party Content', blocks: [
        'GREAT NATION may link to or reference content hosted by third parties. We are not responsible for the content, availability, or copyright practices of external websites or platforms.',
      ],
    },
    {
      id: 'note', title: 'Note', blocks: [
        'Information and content published on GREAT NATION may be changed, updated, or removed without prior notice. Users are encouraged to review this page periodically for updates.',
      ],
    },
    {
      id: 'contact', title: 'Contact', blocks: [
        'If you have any copyright-related questions or concerns, please contact:',
        EMAIL,
      ],
    },
  ],
};
