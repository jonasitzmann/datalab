From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 21:36:02 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5U1a1L9001016
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 21:36:01 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 69EDC2DF9D; Sat, 30 Jun 2007 01:36:06 +0000 (UTC)
Old-Return-Path: <nicol.iain@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=4.0 tests=SPF_PASS autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.174])
	by murphy.debian.org (Postfix) with ESMTP id 5A0322DDAC
	for <debian-legal@lists.debian.org>; Sat, 30 Jun 2007 01:35:56 +0000 (UTC)
Received: by ug-out-1314.google.com with SMTP id i24so964733ugd
        for <debian-legal@lists.debian.org>; Fri, 29 Jun 2007 18:35:44 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:subject:to:content-type:date:message-id:mime-version:x-mailer:content-transfer-encoding:from:sender;
        b=phq0RqBwb5Rtq0R7fMkpP7S3en32sOx0b3KglfkvSW6COdOgKX8qAhkDOC4kZHzfksYL5qkBphlgDL/bPTyz1z4TZ0oUcFB0gt4aSobJ2lGKk3lYmAntyTMLXe6l4jwHwoNkqh5RDKPraYcTvxXe2X0giKjsH72T4TfkMkMfD9g=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:subject:to:content-type:date:message-id:mime-version:x-mailer:content-transfer-encoding:from:sender;
        b=XHn6BGrIeRn5R69frVwYgSEu+p2VM+xO0W/HJ5QcoT+0bY5Gbm947UrCMdu+XwFnKtktgZRfCImg2pC8KRtrkXGDJs4tsEZLoLsOWx9L2go2aXnZ7Pkdl82L3s686XLyipMxrPSfbUg1EaBlAYPs30Pcv25zzNqiC17BUzp+LSs=
Received: by 10.67.96.14 with SMTP id y14mr3061995ugl.1183167344895;
        Fri, 29 Jun 2007 18:35:44 -0700 (PDT)
Received: from ?192.168.1.38? ( [85.189.71.226])
        by mx.google.com with ESMTP id y34sm24362063iky.2007.06.29.18.35.43
        (version=TLSv1/SSLv3 cipher=RC4-MD5);
        Fri, 29 Jun 2007 18:35:44 -0700 (PDT)
Subject: Re: Final text of GPL v3
To: Debian Legal <debian-legal@lists.debian.org>
Content-Type: text/plain
Date: Sat, 30 Jun 2007 02:35:42 +0100
Message-Id: <1183167342.21261.45.camel@Skye>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
From: Iain Nicol <iain@thenicols.net>
Sender: Iain Nicol <nicol.iain@gmail.com>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <Z2X-m.A.VOH.GObhGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36771
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sat, 30 Jun 2007 01:36:06 +0000 (UTC)

(First: apologies. This message probably won't thread properly. This is
because I reading this list via Usenet, but because the Usenet gateway
is, I presume, one-way gateway, I have to reply via the list email
address. The trouble is my email client has no message to reply to,
because it's not my NNTP client.)

Concerning section 5d of the final text of the GPL 3:
>   5. Conveying Modified Source Versions.
[...]
>     d) If the work has interactive user interfaces, each must display
>     Appropriate Legal Notices; however, if the Program has interactive
>     interfaces that do not display Appropriate Legal Notices, your
>     work need not make them do so.

Francesco Poli worries:
> It mandates a feature that I *must* implement in *any* interactive
> interface of my modified work. [...] it seems that when a
> non-interactive work is modified so that it becomes an interactive
> work, the modifier is *compelled* to implement these features in *any*
> newly created interactive interface.
Could this requirement be interpreted more liberally? I'm concentrating
on the bit from "however". Suppose: I receive a program under the GPL 3.
I create a new interface for the program, without the legal notices.

The license says that, when distributing my modified version, I "need
not make" interfaces of "the Program" that don't display a legal notice
display a legal notice. I think, then, to be exempt from the requirement
to make user interfaces display legal notices, my modified version of
the Program would have to count as just "the Program".

Consider that "The Program" is defined as:
>  "The Program" refers to any copyrightable work licensed under this
> License. 
When I convey a modified source version, 5c) requires the entire
modified work be licensed under the GPL. This then means that when you
convey a modified "the Program", the new bits are licensed, and so the
whole modified program becomes just "the Program". I do not need to add
legal notices to interfaces of "the Program" that lack then.

I'm curious how far fetched people think this is.

If this interpretation were true, then the only burden of this section
would be to keep the legal notices in the user interfaces that you keep,
but you would *not* be required to add any notices to any user
interface, regardless of whether you wrote the interface or not.


-- 
Iain Nicol


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org



nV5tw5saaa  