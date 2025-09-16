import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'Y Millennial Funding | Business Funding Solutions | Up to $5M Direct Funding',
  description: 'Direct business funder specializing in first-time loans and 1st-5th position MCA deals up to $5M. 24-month terms, same-day decisions, 24-hour funding.',
  keywords: 'business funding, business loans, MCA stacking, 1st position MCA, merchant cash advance, direct funder, alternative lending, working capital',
  authors: [{ name: 'Y Millennial Funding' }],
  openGraph: {
    title: 'Y Millennial Funding | Business Funding Solutions',
    description: 'Direct business funder specializing in first-time loans and 1st-5th position MCA deals up to $5M. Same-day decisions, 24-hour funding.',
    url: 'https://ymillennialfunding.com',
    siteName: 'Y Millennial Funding',
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Y Millennial Funding | Business Funding Solutions',
    description: 'Direct business funder specializing in first-time loans and 1st-5th position MCA deals up to $5M. Same-day decisions.',
    site: '@ymillennialfunding',
    creator: '@ymillennialfunding',
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
    },
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <head>
        <link rel="canonical" href="https://ymillennialfunding.com" />
        <meta name="geo.region" content="US" />
        <meta name="geo.placename" content="United States" />
        <meta name="theme-color" content="#1a1f3a" />
        
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{
            __html: JSON.stringify({
              "@context": "https://schema.org",
              "@type": "FinancialService",
              "name": "Y Millennial Funding",
              "description": "Direct business funder specializing in first-time business loans and 1st-5th position merchant cash advance deals up to $5M.",
              "url": "https://ymillennialfunding.com",
              "telephone": "+1-800-FUNDING",
              "email": "funding@ymillennialfunding.com",
              "areaServed": "US",
              "serviceType": ["Business Loans", "Merchant Cash Advance"],
              "aggregateRating": {
                "@type": "AggregateRating",
                "ratingValue": "4.8",
                "reviewCount": "247"
              }
            })
          }}
        />
      </head>
      <body className={inter.className}>
        {children}
      </body>
    </html>
  )
}
