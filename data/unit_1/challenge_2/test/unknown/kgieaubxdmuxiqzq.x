From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 11:19:10 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TFJ9L9027454
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 11:19:09 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 01FD52E360; Fri, 29 Jun 2007 15:16:32 +0000 (UTC)
Old-Return-Path: <gustavorfranco@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,LDOSUBSCRIBER,
	MURPHY_DRUGS_REL8,SPF_PASS autolearn=ham version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.175])
	by murphy.debian.org (Postfix) with ESMTP id B3BCB2E376
	for <debian-desktop@lists.debian.org>; Fri, 29 Jun 2007 15:16:21 +0000 (UTC)
Received: by ug-out-1314.google.com with SMTP id i24so869223ugd
        for <debian-desktop@lists.debian.org>; Fri, 29 Jun 2007 08:16:11 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=A5gjydA9Xt+EOU9aSy3qAPQUMgVO1jB2FUCsp634cixbDMLvGm05vtuf7qwYQxxLQc6V5lJ+xT0SB9tIKiT9PD/OMy61wGbQC+g4dFKaOHWwk6iB9XCBR+7iyL/QCdz3d34DrVDijnMBNk9CdXDzd05Apf0+uSOoKLng0qByCpI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=nCI39ZPuDzaKhKRhwohszTT00dLIN11JRFmWgD65T31oHZA3hyWXoQpmvT/gQlFvNdp4NULIT0DnXpWw9LrcMVetCzPnSkzBmR/LSbWxqvYDT77v7CMOlq87qITXYfFKo/l9bueKcltG3GBk1DoPozCTq+gqczIgeb6YZi9EzTo=
Received: by 10.78.134.12 with SMTP id h12mr1674912hud.1183130171457;
        Fri, 29 Jun 2007 08:16:11 -0700 (PDT)
Received: by 10.78.150.6 with HTTP; Fri, 29 Jun 2007 08:16:11 -0700 (PDT)
Message-ID: <5fabd6fd0706290816p7ac237a8t23300276eb52d332@mail.gmail.com>
Date: Fri, 29 Jun 2007 12:16:11 -0300
From: "Gustavo Franco" <stratus@debian.org>
Sender: gustavorfranco@gmail.com
To: debian-desktop@lists.debian.org
Subject: Re: Debian Desktop Etch+1 - the long road to binoculars.
In-Reply-To: <1183027860.4002.2.camel@portatel>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Disposition: inline
References: <5fabd6fd0706271255k35deb74dy8e1ec7e0fe050c0a@mail.gmail.com>
	 <1182990610.3774.12.camel@portatel>
	 <5fabd6fd0706271950k2b2441e9s814615e28133f6dd@mail.gmail.com>
	 <1183027860.4002.2.camel@portatel>
X-Google-Sender-Auth: 93b78c8627bb73fc
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <y2_EHC.A.esG.PJShGB@murphy>
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1780
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 15:16:32 +0000 (UTC)
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5TFJ9L9027454

On 6/28/07, Luis Matos <luis.matos@ua.pt> wrote:
> Qua, 2007-06-27 �s 23:50 -0300, Gustavo Franco escreveu:
> > development (out of scope here) or desktop development tasks? Probably
> > you also care about this blog post:
>
> desktop development ...
>
> I have seen that people look at linux and asks ... now, what do i do to
> develop something.
>
> That people are not programmers (as in informatics), they are mechanical
> engineers, for example, that code in visual basic, C#, C/C++ and not
> that much.
> If you show to them that they can easily have a development environment,
> their perspective changes.
> This was a target of a thread in -devel sometime ago.

Hi Lu�s,

You can start helping with this dropping a task format file into
/usr/share/taskel (realize that in the Packages field you won't use
task-fields but the list of packages itself) containing such desktop
development tasks.

After that you can figure out the best way on how somebody could
install that. synaptic has rudimentar support to install tasks that
could be better. I've some suggestions and should write some patches
for this, but you can invoke it for tests running: 'synaptic
--task-window'.

Have fun! ;-)

cheers,
-- stratus
http://stratusandtheswirl.blogspot.com
get debian @ http://get.debian.net/


       

zntfptbb