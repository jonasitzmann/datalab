From sugar-bounces@lists.laptop.org  Fri Jun 29 11:10:29 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TFATL9027355
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 11:10:29 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 9691E58BC7FF;
	Fri, 29 Jun 2007 11:09:26 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 65D0258BC80F; Fri, 29 Jun 2007 11:09:25 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 626BB58BC7FF
	for <sugar@laptop.org>; Fri, 29 Jun 2007 11:09:25 -0400 (EDT)
X-ASG-Debug-ID: 1183129822-21c200180000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: newton.cx[65.99.241.218]
X-Barracuda-Start-Time: 1183129822
X-Barracuda-Encrypted: DHE-RSA-AES256-SHA
Received: from newton.cx (newton.cx [65.99.241.218])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by spam.laptop.org (Spam Firewall) with ESMTP id 45E5C37E5
	for <sugar@laptop.org>; Fri, 29 Jun 2007 11:10:23 -0400 (EDT)
Received: from [66.92.95.82] (helo=[192.168.1.24])
	by newton.cx with esmtpsa (SSLv3:RC4-MD5:128) (Exim 4.43)
	id 1I4I73-0002cd-32; Fri, 29 Jun 2007 11:10:21 -0400
X-ASG-Orig-Subj: Re: [sugar] fix for 1846,
	sugar crashes when nick is whitespace
From: Owen Williams <owen@ywwg.com>
To: Dan Williams <dcbw@redhat.com>
In-Reply-To: <1183129047.9794.40.camel@xo-13-A4-25.localdomain>
References: <1183128277.6564.103.camel@localhost.localdomain>
	<1183129047.9794.40.camel@xo-13-A4-25.localdomain>
Date: Fri, 29 Jun 2007 11:09:26 -0400
Message-Id: <1183129766.6564.105.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.21318
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Sugar List <sugar@laptop.org>
Subject: Re: [sugar] fix for 1846, sugar crashes when nick is whitespace
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

On Fri, 2007-06-29 at 10:57 -0400, Dan Williams wrote:
> On Fri, 2007-06-29 at 10:44 -0400, Owen Williams wrote:
> > Here is a patch for http://dev.laptop.org/ticket/1846.  I am just
> > patching intro.py to reject usernames that are all whitespace and to
> > trim excess whitespace on either end.
> > 
> > Also, when a user supplies a blank nickname and presses the forward
> > button, I briefly flash the "My Name:" label.  This can be changed if
> > there's a better way to indicate why the interface is refusing to
> > advance.
> 
> Looks good, Marco, can you apply?
> 
> dan

I pushed it in.

owen

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

 

0:eny