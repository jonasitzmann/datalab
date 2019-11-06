From perl6-all-return-82510-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jul  2 17:20:20 2007
Return-Path: <perl6-all-return-82510-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l62LKJL9019135
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 17:20:20 -0400
Received: (qmail 32651 invoked by uid 514); 2 Jul 2007 21:20:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 32646 invoked from network); 2 Jul 2007 21:20:14 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of bgeron@gmail.com designates 66.249.92.172 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:x-enigmail-version:openpgp:content-type:content-transfer-encoding;
        b=MPmz3VFzYSJ4B5gSw6TgkH2KMFsSvF0p5y+XbaFlsXqlXusXL6FdYtfZtt7iPwm/q9LJG6XYhXPLPZFBEEnGi0AcQfP3pLmFthnG2hoAK41+YuRSGHP62XfZEPYSc+Is2fRDzmx7/YW1Zjv8PiGD720OaonB3oBFna0kw2n78sg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:x-enigmail-version:openpgp:content-type:content-transfer-encoding;
        b=kX/J2I3ibWyfJhuS37z1z9+QLue0j69gNjiLYscVRcKNiRECxdoaNZAvMzNrdvnmkptnHxejIy7r+DaCZz03OHTB7v+eCN5ROTXEukY1iMiYkdDPSwPUH9NRSWD93E2lAbUSw2p3KFUhA8r428GzzW1YVVHPMFDGtpn7a9TIpIo=
Message-ID: <46896BEB.1060000@gmail.com>
Date: Mon, 02 Jul 2007 23:19:39 +0200
From: Bram Geron <bgeron@gmail.com>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: perl6-internals@perl.org
CC: bugs-bitbucket@netlabs.develooper.com
Subject: [perl #43462] [PATCH] some clearups, illegal memory accessing
References: <RT-Ticket-43462@perl.org>	<4687879D.4090902@gmail.com>	<rt-3.6.HEAD-1276-1183287230-1103.43462-72-0@perl.org> <18056.13346.117062.122876@rgrjr.dyndns.org>
In-Reply-To: <18056.13346.117062.122876@rgrjr.dyndns.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=E7B9E65E
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Bob Rogers wrote:
> . . .
> 
> I think you will have to send me your test case, or at least a more
> detailed recipe.  I do not see how the above sequence of events can lead
> to a dangling reference to a deleted sub -- unless there is also a GC
> bug, in which case I am unlikely to be able to reproduce the problem
> from just a description.

I'm sorry -- I wrongly assumed that marking a context doesn't mark its
current_sub, but it does. I thought it wasn't necessary (lexpad holds
all the info we'd need). The segfault I got must have been a symptom
from another GC bug.

Thanks for checking my patch.
-- 
Bram Geron | GPG 0xE7B9E65E

  

diH.}ce
n�o