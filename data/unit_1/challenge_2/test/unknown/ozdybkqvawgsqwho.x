From perl6-all-return-82082-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 04:57:23 2007
Return-Path: <perl6-all-return-82082-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5J8vML9027561
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 04:57:22 -0400
Received: (qmail 7132 invoked by uid 514); 19 Jun 2007 08:57:20 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7126 invoked from network); 19 Jun 2007 08:57:19 -0000
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
Message-ID: <4677995F.7030608@perl.org>
Date: Tue, 19 Jun 2007 01:52:47 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.12 (Macintosh/20070509)
MIME-Version: 1.0
To: p2 <parrot-porters@perl.org>
Subject: Re: [svn:parrot] r19081 - trunk/include/parrot
References: <20070618062123.6E909CB9E1@x12.develooper.com>
In-Reply-To: <20070618062123.6E909CB9E1@x12.develooper.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

All XXX notes should be attached to an RT ticket.

petdance@cvs.perl.org wrote:
> Author: petdance
> Date: Sun Jun 17 23:21:22 2007
> New Revision: 19081
> 
> Modified:
>    trunk/include/parrot/register.h
> 
> Log:
> add an XXX note
> 
> Modified: trunk/include/parrot/register.h
> ==============================================================================
> --- trunk/include/parrot/register.h	(original)
> +++ trunk/include/parrot/register.h	Sun Jun 17 23:21:22 2007
> @@ -59,6 +59,7 @@
>  /*
>   * same with the default name interpreter
>   */
> +/* XXX Redfine these to explicitly pass interp, rather than assuming it's there */
>  #define REG_INT(x) INTERP_REG_INT(interp, x)
>  #define REG_NUM(x) INTERP_REG_NUM(interp, x)
>  #define REG_STR(x) INTERP_REG_STR(interp, x)
> 

         

t 60ziCn