From perl6-all-return-82249-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:35:56 2007
Return-Path: <perl6-all-return-82249-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMZtL9009927
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:35:55 -0400
Received: (qmail 29567 invoked by uid 514); 22 Jun 2007 16:00:34 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29553 invoked from network); 22 Jun 2007 16:00:31 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.2 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,PLING_QUERY,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Fri, 22 Jun 2007 16:57:49 +0100
From: Aaron Crane <perl@aaroncrane.co.uk>
To: perl6-language@perl.org
Subject: Re: Generalizing ?? !!
Message-ID: <20070622155749.GJ7468@aaroncrane.co.uk>
Mail-Followup-To: perl6-language@perl.org
References: <ef30550b0706101410l44485919m472e675a700a1daf@mail.gmail.com> <83F5E0A4-3320-46F2-9319-35DEF2E79584@audreyt.org> <ef30550b0706110809w47d436e3veeb0962cfb38f620@mail.gmail.com> <f60fe000706110845p48815ad9s8a18d4b28aaeffb3@mail.gmail.com> <466DAEA1.9060306@conway.org> <pan.2007.06.22.14.01.01.25762@PSDT.com> <20070622144037.GH7468@aaroncrane.co.uk> <20070622153538.GA16198@istic.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070622153538.GA16198@istic.org>
Mail-Copies-To: nobody
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.2 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,PLING_QUERY,SPF_PASS

Daniel Hulme writes:
> On Fri, Jun 22, 2007 at 03:40:37PM +0100, Aaron Crane wrote:
> >   my $b = 1 && 0 || 42;
> >   # Now $b is 17
> s/17/42/ or vice-versa, I think. 

Uh, yes.  Serves me right for trying to change metasyntactic numbers
midstream.

-- 
Aaron Crane

         


0"a.bdta