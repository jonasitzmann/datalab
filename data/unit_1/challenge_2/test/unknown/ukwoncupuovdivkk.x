From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jun  4 14:43:25 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54IhPhB031452
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 14:43:25 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 543522E5E3; Mon,  4 Jun 2007 18:43:01 +0000 (UTC)
Old-Return-Path: <jordigh@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,IMPRONONCABLE_1,
	LDOSUBSCRIBER,SPF_PASS autolearn=no version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.231])
	by murphy.debian.org (Postfix) with ESMTP id 85C642E600
	for <debian-legal@lists.debian.org>; Mon,  4 Jun 2007 18:42:56 +0000 (UTC)
Received: by nz-out-0506.google.com with SMTP id 9so964215nzo
        for <debian-legal@lists.debian.org>; Mon, 04 Jun 2007 11:43:11 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=NQccWMYZKDl57pDzebbjQtue0sr1F6Eux4wqv4Ubri6djXKJuihCtRE0jyoVhG3f2De9882KjPAl8iBwtZEChW59aV+FbGhgzfAo+yDL1rnRnZOd/sXAxxr9Y3bw3INfWv4tGTjw8e9shEH2Ys16eCmBb+Sx/kob5ipMAI/rHdU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Bj+rQ+YueoG8AMzMclmm1pW4fChBibZ3Gc4LD2LBSEs125GmerM73Y1Dt/Jo68kUovT7Rd47C7ez6Wod8aayzNcag6IFIdBG0zMNW2LnljvksTaxZ1jahP2tVlPPq+kqdShW2VWWub16PYYrVY8MM0QCytTmrV614C5F/vULJYc=
Received: by 10.115.46.9 with SMTP id y9mr5080713waj.1180982590816;
        Mon, 04 Jun 2007 11:43:10 -0700 (PDT)
Received: by 10.114.26.19 with HTTP; Mon, 4 Jun 2007 11:43:10 -0700 (PDT)
Message-ID: <9543b3a40706041143k2e811dd5v86df17d255f18fff@mail.gmail.com>
Date: Mon, 4 Jun 2007 13:43:10 -0500
From: "Jordi Gutierrez Hermoso" <jordigh@gmail.com>
To: debian-legal@lists.debian.org
Subject: Re: Request for suggestions of DFSG-free documentation licences
In-Reply-To: <20070604004806.GG9271@volo.donarmstrong.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <4656DD92.1060704@gmail.com>
	 <9543b3a40705261425y77653733g28275ac18a1c8e28@mail.gmail.com>
	 <87zm3rp1f9.fsf@benfinney.id.au>
	 <9543b3a40706021716j7f6f85b3lca3756d9d18a0296@mail.gmail.com>
	 <20070603115313.GA18207@angband.pl>
	 <9543b3a40706031624n780bd3e4v581d9e42d29e4eaa@mail.gmail.com>
	 <9543b3a40706031633t31e42115i2764a07e3da7a0be@mail.gmail.com>
	 <20070603234415.GC9271@volo.donarmstrong.com>
	 <9543b3a40706031716g7ca403jfcac3c9b17e91261@mail.gmail.com>
	 <20070604004806.GG9271@volo.donarmstrong.com>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <oxOuGD.A.jfC.10FZGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36602
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Mon,  4 Jun 2007 18:43:01 +0000 (UTC)

On 03/06/07, Don Armstrong <don@debian.org> wrote:
> On Sun, 03 Jun 2007, Jordi Gutierrez Hermoso wrote:
> > Debian decided to make it a problem for itself and for its users.
>
> the maintainer (and the developers) recognized that
> users may need or want such documentation, even though it does not
> meet the DFSG, so the documentation was made available in non-free.

That's a rather unsatisfactory fix. Although it does work for most
practical purposes, the inability to ship Debian CDs with the
necessary docs is quite a hindrance. There's also the PR image of
Debian to consider, I think.

> If you disagree with the determination of the Developers, you can
> easily install the work from non-free, or cease supporting Debian in
> its entirety. The choice is yours, really.

That's unfair. I have been exclusively a Debian user since 2001.
Installing GFDLed stuff from non-free is what I do, but it's
inconvenient to track down those packages that aren't installed by
default anymore. The moralistic tone of the installation is also
problematic for me, since I'm very proud to say that all of my work is
done exclusively with free software (practically the BIOS is the only
non-free software I have to use anymore). This an important
distinction for the mathematical and scientific work that I do
(proprietary software is unscientific, etc).

"Our way or the highway" isn't a nice thought either. Do you really
think that the DDs that voted against putting the GFDL in non-free
should fork off too? Debian is the best distro out there, and I'm very
loyal to it, but I'malso  very unhappy with its treatement of the
GFDL, and I think this horrible mess should be fixed.

- Jordi G. H.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

      

a_t 