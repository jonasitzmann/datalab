From sugar-bounces@lists.laptop.org  Wed Jun 20 17:39:49 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KLdnL9015196
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:39:49 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id D3ECD58BC7E3;
	Wed, 20 Jun 2007 17:39:01 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 7D40658BC7E7; Wed, 20 Jun 2007 17:39:01 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 7A9CC58BC7E3
	for <sugar@laptop.org>; Wed, 20 Jun 2007 17:39:01 -0400 (EDT)
X-ASG-Debug-ID: 1182375581-685d00040000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mail6.dotsterhost.com[72.5.54.120]
X-Barracuda-Start-Time: 1182375581
Received: from mail6.dotsterhost.com (mail6.dotsterhost.com [72.5.54.120])
	by spam.laptop.org (Spam Firewall) with SMTP id 0D123314
	for <sugar@laptop.org>; Wed, 20 Jun 2007 17:39:41 -0400 (EDT)
Received: (qmail 6088 invoked from network); 20 Jun 2007 21:39:40 -0000
Received: from unknown (HELO ?140.247.244.80?)
	(julius@younglucks.com@[140.247.244.80])
	by 72.5.54.120 with SMTP; 20 Jun 2007 21:39:40 -0000
Mime-Version: 1.0 (Apple Message framework v752.2)
To: sugar@laptop.org
Replyto: j.b.lucks.01@cantab.net
Message-Id: <1932D0A3-01EB-43FD-846B-2A8CA86F166A@younglucks.com>
From: "Julius B. Lucks" <julius@younglucks.com>
X-ASG-Orig-Subj: i18n for python with gettext
Date: Wed, 20 Jun 2007 17:39:40 -0400
X-Mailer: Apple Mail (2.752.2)
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.20500
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: [sugar] i18n for python with gettext
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5605254184608802370=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org


--===============5605254184608802370==
Content-Type: multipart/alternative; boundary=Apple-Mail-6-57434051


--Apple-Mail-6-57434051
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=US-ASCII;
	delsp=yes;
	format=flowed

Hi All,

There has been some recent discussion about i18n and activities.   
Using the python gettext module, I set up i18n in Kuku, and put up  
some notes at http://wiki.laptop.org/go/Python_i18n .  It looks like  
there is a bit of code that needs to be in each activity, such as  
some logic for determining which language to localize to, and pulling  
the correct .mo file for it. etc.  Is it appropriate to put this code  
in some sugar module (sugar.i10n for example?) so that all activity  
developers have to do is wrap strings in _(), create the .pot/.po/.mo  
files, and do something like (suggested by mncharity)

from sugar import i10n
i10n.install()

?

Is there already something like this?

Cheers,

Julius

------------------------------------------------------------------------ 
---
http://www.openwetware.org/wiki/User:Julius_B._Lucks
------------------------------------------------------------------------ 
---




--Apple-Mail-6-57434051
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=ISO-8859-1

<HTML><BODY style=3D"word-wrap: break-word; -khtml-nbsp-mode: space; =
-khtml-line-break: after-white-space; ">Hi All,<DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV>There has been some recent =
discussion about i18n and activities.=A0 Using the python gettext =
module, I set up i18n in Kuku, and put up some notes at=A0<A =
href=3D"http://wiki.laptop.org/go/Python_i18n">http://wiki.laptop.org/go/P=
ython_i18n</A> .=A0 It looks like there is a bit of code that needs to =
be in each activity, such as some logic for determining which language =
to localize to, and pulling the correct .mo file for it. etc.=A0 Is it =
appropriate to put this code in some sugar module (sugar.i10n for =
example?) so that all activity developers have to do is wrap strings in =
_(), create the .pot/.po/.mo files, and do something like (suggested by =
mncharity)</DIV><DIV><BR class=3D"khtml-block-placeholder"></DIV><DIV>from=
 sugar import i10n</DIV><DIV>i10n.install()</DIV><DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV>?</DIV><DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV>Is there already something =
like this?</DIV><DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV>Cheers,</DIV><DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV>Julius</DIV><DIV><BR =
class=3D"khtml-block-placeholder"></DIV><DIV><DIV> <SPAN =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><SPAN =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><SPAN =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; =
"><DIV>-------------------------------------------------------------------=
--------</DIV><DIV><A =
href=3D"http://www.openwetware.org/wiki/User:Julius_B._Lucks">http://www.o=
penwetware.org/wiki/User:Julius_B._Lucks</A></DIV><DIV>-------------------=
--------------------------------------------------------</DIV><DIV =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; "><BR class=3D"khtml-block-placeholder"></DIV><BR =
class=3D"Apple-interchange-newline"></SPAN></SPAN></SPAN> =
</DIV><BR></DIV></BODY></HTML>=

--Apple-Mail-6-57434051--

--===============5605254184608802370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============5605254184608802370==--

 

ew.<