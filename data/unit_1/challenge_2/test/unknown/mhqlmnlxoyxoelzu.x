From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jul  1 13:31:23 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61HVJL9003369
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 13:31:21 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 9F9842E532; Sun,  1 Jul 2007 17:31:34 +0000 (UTC)
Old-Return-Path: <skellogg@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,LDOSUBSCRIBER,SPF_PASS 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.233])
	by murphy.debian.org (Postfix) with ESMTP id 7156A2E33D
	for <debian-legal@lists.debian.org>; Sun,  1 Jul 2007 17:31:29 +0000 (UTC)
Received: by nz-out-0506.google.com with SMTP id q3so604178nzb
        for <debian-legal@lists.debian.org>; Sun, 01 Jul 2007 10:31:07 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:from:to:subject:date:user-agent:references:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:message-id;
        b=DhOHpmbT0kXGWngxyo6LaFjU2ry0Ccq4+0vmRRpCWwLcbUga2t5UqS1wh20JIAwz/zOz8nnA8jwXHssdGaxxXY/v3jF01fjCJoDq/ieoWUHifSbYncHlsahVJb6ns/y8xvMEDWBffLrfMErLBxI9WWblf3QWefmnHNDk/D5rj+4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:from:to:subject:date:user-agent:references:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:message-id;
        b=Tg1UOgbYRTU2hgvaL1R1LKZ/rDoQr/e2YD4ZOQxMia4jnqvDgO9xm0TZhug7Q7UFqtuu1d43osN2hNwG/b1Jn48wNQo7oNMWoImWvTcXW6G4Y5VxQZDHiWMwQxOET2HfNZX4seBTBj5+3XUNZKryPmb+CPLEaf6GTNWudbaHu1U=
Received: by 10.140.132.5 with SMTP id f5mr1228396rvd.1183311066324;
        Sun, 01 Jul 2007 10:31:06 -0700 (PDT)
Received: from gnosis.local ( [71.202.245.83])
        by mx.google.com with ESMTP id k14sm14840809rvb.2007.07.01.10.31.04
        (version=SSLv3 cipher=OTHER);
        Sun, 01 Jul 2007 10:31:05 -0700 (PDT)
From: Sean Kellogg <skellogg@gmail.com>
To: debian-legal@lists.debian.org
Subject: Re: Final text of GPL v3
Date: Sun, 1 Jul 2007 10:31:00 -0700
User-Agent: KMail/1.9.7
References: <1183167342.21261.45.camel@Skye> <200707010024.59940.skellogg@gmail.com> <200707010236.56299.mgb@yosemite.net>
In-Reply-To: <200707010236.56299.mgb@yosemite.net>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Disposition: inline
Message-Id: <200707011031.01068.skellogg@gmail.com>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <3PgtzC.A.VcD.2T-hGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36821
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  1 Jul 2007 17:31:34 +0000 (UTC)
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l61HVJL9003369

Lots of questions since I last posted...  lost of people getting testy. Can't 
do much about that, but I will try to explain a few things based on what I 
know from law school. First up, there is a pretty well established definition 
for what constitutes "legal advice." It can be phrased as: "particular 
courses of action in response to particular facts."  The particularity is 
key.

Here a good pair of examples --

Not Legal Advice:
Q: Is it true that a judge can reduce your traffic ticket.
A: Yes.

Legal Advice:
Q: I got a traffic ticket for going 20 miles over the speed limit, what should 
I do?
A: Go to the judge and argue for a decrease in the fine.

The critical difference is the particularity of fact, both by the questioner 
and the answerer.  Which is why debian-legal, for the most part, is in the 
clear (at least in the US, more on that in a moment).  Folks show up and ask 
general questions about legal implication and folks respond saying here are 
various things to consider.  An interesting grey area is with regards to the 
DFSG, which is a legal document, of sorts, but debian (as an organization) 
can provide advice to others on how to interpret it.  Just as a car salesman 
can explain the terms of a car sale document, so can debian lay-persons 
explain the terms of their own governing docs.  Where Francesco went wrong, 
in my opinion, is giving a definite answer to a definite question about a 
third-party license.

Now, as for me, I will admit that I don't know much about non-US law, although 
I would be very surprised to hear that law is more liberal on this point in 
the EU than the US, since these "no practice without a license" laws are 
consumer protection in nature, and as a general rule, the EU is more strict 
than the US on such things. Second, I am not technically a lawyer, while I 
have completed all of the necessary education, testing, and certification 
steps to become so, I have not yet taken the final oath and paid my 
membership fees.  Which means I too cannot provide legal advice, regardless 
of jurisdiction.

The reason I feel the above is not legal advice is because it is non-specific 
in nature.  I am doing my best to describe the law and point out what I 
believe was an improper action.  The above does not apply to a specific set 
of facts beyond those that have already transpired to which I've said, in my 
opinion, were improper.

On the topic of disclaimers, while I always enjoy a fun word game, your 
attempt to point out circular reason fails.  Disclaimers do not work for the 
purposes of shielding anyone from the prohibition on providing legal advice, 
it either is, or is not, legal advice.  However, a disclaimer is a nice 
courtesy, and perhaps a wise idea, in that it can avoid the situation where 
the advisee acts on that legal advice, ends up in a bind, and comes after the 
advisor.  It's like committing a common tort but doing it in a way that there 
is no harm...  yes, there is possible suit, but there will be no finding of 
damages.  It's just good sense.

On the topic of global jurisdiction, I wonder where the courts have fallen 
down on this topic?  I honestly don't know.  It was easy, before the 
internet, to say only CA lawyers could give advice to CA residents and 
businesses...  but with the internet, it's tricky. I imagine there is case 
law on this out there, since there is case law on things like minimal 
contacts established by a globably accessible website. Something to look 
into.

On Sunday 01 July 2007 02:36:53 am Mike Bird wrote:
> Personally, IANAL.  I don't give legal advice.  I argue law all I want.
The above quote struck me.  My understanding is you can argue the law all you 
want. However, when giving specific advice to specific questions, you move 
from the arguing phase to the legal advice phase--regardless of whether you 
are a lawyer.

-Sean

-- 
Sean Kellogg
e: skellogg@gmail.com
w: http://blog.probonogeek.org/

So, let go
 ...Jump in
  ...Oh well, what you waiting for?
   ...it's all right
    ...'Cause there's beauty in the breakdown


   

/oaYtta -A