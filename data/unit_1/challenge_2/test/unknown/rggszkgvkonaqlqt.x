From perl6-all-return-82117-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 19:56:00 2007
Return-Path: <perl6-all-return-82117-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JNtxL9003706
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 19:55:59 -0400
Received: (qmail 12606 invoked by uid 514); 19 Jun 2007 23:55:56 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 12601 invoked from network); 19 Jun 2007 23:55:56 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
Message-ID: <46786BF0.2020106@perl.org>
Date: Tue, 19 Jun 2007 16:51:12 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.12 (Macintosh/20070509)
MIME-Version: 1.0
To: p2 <parrot-porters@perl.org>, perl6-announce@perl.org,
   perl6-language@perl.org, perl5-porters@perl.org
Subject: Parrot 0.4.13 "Clifton" Released
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On behalf of the Parrot team, I'm proud to announce Parrot 0.4.13
"Clifton." Parrot (http://parrotcode.org/) is a virtual machine aimed
at running all dynamic languages.

Parrot 0.4.13 can be obtained via CPAN (soon), or follow the
download instructions at http://parrotcode.org/source.html.

Parrot 0.4.13 News:
- Languages:
  + Updated Lisp, Lua, PHP ("Plumhead"), Python ("Pynie"), ABC,
    WMLScript, and Tcl ("ParTcl").
  + Perl 6 passes all of the sanity tests.
  + PGE supports latest Perl 6 grammar syntax. Perl 6, Python
    ("Pynie"), and ABC parsers updated to match.
  + Updated PHP ("Plumhead") to Antlr 3.0.
  + Lua added the beginnings of a PGE/TGE based compiler (not yet
    replacing the Perl/Yapp compiler).
  + Lisp updated for current features, added a test suite.
- Core Implementation:
  + Filled in features and backward compatibility for PDD 15 objects.
    New object metamodel passes 85% of old test suite.
  + GCC API symbols are visible externally only when explicitly exported.
  + Added generated GCC compiler attributes to increase warnings, and
    cleaned up resulting warnings.
  + Code cleanup efforts and fixed memory leaks by the cage cleaners,
    resulting in notable speed increases.
- Misc:
  + Updated Parrot distribution to Artistic License 2.0, from dual
    Artistic 1/GPL license.
  + SDL examples brought up-to-date with current features.

For those who would like to develop on Parrot, or help develop
Parrot itself, we recommend using Subversion or SVK on the
source code repository to get the latest and best Parrot code.
The next scheduled release is July 17, 2007.

Thanks to all our contributors for making this possible, and our
sponsors for supporting this project.

Enjoy!
Allison

                

Gfi aoA-