From perl6-all-return-81990-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 05:04:55 2007
Return-Path: <perl6-all-return-81990-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F94tL9031868
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 05:04:55 -0400
Received: (qmail 6338 invoked by uid 514); 15 Jun 2007 09:04:53 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6333 invoked from network); 15 Jun 2007 09:04:53 -0000
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
Subject: Re: [perl #43006] Tail call force-frees current context
Date: Fri, 15 Jun 2007 01:44:09 -0700
User-Agent: KMail/1.9.6
Cc: Bram Geron <bgeron@gmail.com>, parrotbug-followup@parrotcode.org
References: <46507292.4040608@gmail.com> <200705202300.11782.lt@toetsch.at> <466A7587.4030205@gmail.com>
In-Reply-To: <466A7587.4030205@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706150144.09608.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Saturday 09 June 2007 02:40:23 Bram Geron wrote:

> The patch I attached should solve that. In a freshly created context,
> the refcount is zero, and this increases it by one. I think incrementing
> it is slightly better than directly assigning it a refcount of 1,
> because that could cause bugs if we incremented the refcount before for
> some mysterious reason. (far-fetched, I admit.)

Thanks, applied as r19019.

> With the patch, [perl #42790] "[BUG] Tailcall with slurpy argument
> passing causes a memory leak" is solved for me too.

Great!

There are other context memory leaks.  Valgrind is a great source of 
frustration.  I tried calling Parrot_free_context() on ctxp->from_ctx and 
ctxp->to_ctx within Parrot_free_context(), as it made sense to me, but that 
didn't work so well.

If you understand this code well enough to have produced a successful patch 
(and you have), there's other investigation here....

-- c

                   

E1 2sAdd2t