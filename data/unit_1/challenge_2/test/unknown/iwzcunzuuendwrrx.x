From perl6-all-return-81783-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 21:41:18 2007
Return-Path: <perl6-all-return-81783-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l541fFhB021818
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 21:41:16 -0400
Received: (qmail 2756 invoked by uid 514); 4 Jun 2007 01:41:08 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2751 invoked from network); 4 Jun 2007 01:41:08 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: FOTW src/debug.c
Date: Sun, 3 Jun 2007 18:40:30 -0700
User-Agent: KMail/1.9.6
Cc: Leopold Toetsch <lt@toetsch.at>, Andy Spieherty <spiehera@lafayette.edu>,
   Klaas-Jan Stol <parrotcode@gmail.com>
References: <200705221550.07740.chromatic@wgz.org> <Pine.LNX.4.64.0705230923260.11937@fractal.phys.lafayette.edu> <200705232349.02803.lt@toetsch.at>
In-Reply-To: <200705232349.02803.lt@toetsch.at>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Disposition: inline
Message-Id: <200706031840.30575.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l541fFhB021818

On Wednesday 23 May 2007 14:49:02 Leopold Toetsch wrote:

> Am Mittwoch, 23. Mai 2007 15:26 schrieb Andy Spieherty:
> > /*
> >  * These constants correspond to the debugger commands and are
> >  * used in src/debug.c. To map command strings to their
> >  * numeric values, use the algorithm from parse_command() in that file.
> >  */
> >
> > #define c_b             25245
>
> Another WTF from code history.
>
> leo - please remove this - kthx.

We have to replace it with something; any ideas?

-- c

         

Qg09hnsS:u