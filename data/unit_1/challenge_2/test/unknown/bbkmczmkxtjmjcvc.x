From sugar-bounces@lists.laptop.org  Thu Jun 14 13:48:14 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EHmDL9024730
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 13:48:14 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 84E1958BC7BE;
	Thu, 14 Jun 2007 13:47:43 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 26FB658BC7CE; Thu, 14 Jun 2007 13:47:42 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 24E7B58BC7BE
	for <sugar@laptop.org>; Thu, 14 Jun 2007 13:47:42 -0400 (EDT)
X-ASG-Debug-ID: 1181843290-2d0f001b0000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: newton.cx[65.99.241.218]
X-Barracuda-Start-Time: 1181843290
X-Barracuda-Encrypted: DHE-RSA-AES256-SHA
Received: from newton.cx (newton.cx [65.99.241.218])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by spam.laptop.org (Spam Firewall) with ESMTP id 13182167C8
	for <sugar@laptop.org>; Thu, 14 Jun 2007 13:48:11 -0400 (EDT)
Received: from [66.92.95.82] (helo=[192.168.1.24])
	by newton.cx with esmtpsa (SSLv3:RC4-MD5:128) (Exim 4.43)
	id 1HytQW-0000ta-Bj; Thu, 14 Jun 2007 13:48:08 -0400
X-ASG-Orig-Subj: Re: [sugar] No gstreamer in sugar-jhbuild ?
From: Owen Williams <owen@ywwg.com>
To: Gonzalo Delgado <gonzalo@tuquito.org.ar>
In-Reply-To: <663b17fa0706140913i1ac8d5d7l8570df48ae081985@mail.gmail.com>
References: <663b17fa0706140913i1ac8d5d7l8570df48ae081985@mail.gmail.com>
Date: Thu, 14 Jun 2007 13:47:35 -0400
Message-Id: <1181843255.9213.9.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0060 1.0000 -1.9819
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -1.98
X-Barracuda-Spam-Status: No, SCORE=-1.98 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19911
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: sugar@laptop.org
Subject: Re: [sugar] No gstreamer in sugar-jhbuild ?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

I had to buildone gst-python and then it worked fine.

owen

On Thu, 2007-06-14 at 13:13 -0300, Gonzalo Delgado wrote:
> Am I doing something wrong or are the python gstreamer modules not
> included in sugar-jhbuild ? :
> 
>  $ /path/to/sugar-jhbuild/sugar-jhbuild shell
>  $ python
>  Python 2.4.4 (#1, May 27 2007, 19:10:24)
>  [GCC 4.1.2 20060928 (prerelease) (Ubuntu 4.1.1-13ubuntu5)] on linux2
>  Type "help", "copyright", "credits" or "license" for more information.
>  >>> import gst
>  Traceback (most recent call last):
>    File "<stdin>", line 1, in ?
>  ImportError: No module named gst
>  >>>
> 
> 

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

       

2ne 
K  :.o.hAd