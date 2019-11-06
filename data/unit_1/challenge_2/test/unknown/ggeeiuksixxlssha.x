From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 04:21:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l668LCL9005245
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 04:21:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l668JUFF016207;
	Fri, 6 Jul 2007 10:19:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from outmail129143.authsmtp.com (outmail129143.authsmtp.com
	[62.13.129.143])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l668JGFC016114
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 10:19:16 +0200
Received: from outmail128180.authsmtp.com (outmail128180.authsmtp.com
	[62.13.128.180])
	by punt2.authsmtp.com (8.13.8/8.13.8/Kp) with ESMTP id l668JFco004154
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 09:19:15 +0100 (BST)
Received: from JEEG (dyn1241-124.vpn.ic.ac.uk [129.31.241.124])
	(authenticated bits=0)
	by mail.authsmtp.com (8.13.8/8.13.8/Kp) with ESMTP id l668J5OU025237;
	Fri, 6 Jul 2007 09:19:11 +0100 (BST)
Message-ID: <003201c7bfa6$694cb6a0$661d17ac@JEEG>
From: "James Foadi" <james.foadi@diamond.ac.uk>
To: "Ravi Varadhan" <rvaradhan@jhmi.edu>, <r-help@stat.math.ethz.ch>
References: <009201c7bf2b$6acae810$661d17ac@JEEG>
	<000601c7bf44$3d5c77e0$7c94100a@win.ad.jhu.edu>
Date: Fri, 6 Jul 2007 09:19:43 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
X-Server-Quench: 937470c9-2b99-11dc-867b-001185d377ca
X-AuthRoute: OCdxYAASBVZXRQEX EWUKCyZMSC0pJxRJ BhkPawJRZkcKQwFM
	NlpbNl5ecAddUwkH HBxOB0tWUF12SWN8 YQtYZwRcLEtMVhtp
	UVZLRlNMFQdsHh4E GR5QDh90f39DBxtw Z0NgXXcVXUB8dAh0
	QUlQEm1VbHpiOmkW TUFZI1BJeAVNLAJF alF+XHZZYmIANSsu
	JQJhdwMLCH1CLilF WgwGMV8eCVwGBSM4 W1gDG30hAEsOWyQ0
	KVQ4I1oBFVoQNUNa 
X-Authentic-SMTP: 61633230383736.squirrel.dmpriest.net.uk:671/Kp
X-Report-SPAM: If SPAM / abuse - report it at: http://www.authsmtp.com/abuse
X-Virus-Status: No virus detected - but ensure you scan with your own
	anti-virus system!
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] unexpected result in function valuation
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

----- Original Message ----- 
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'James Foadi'" <james.foadi@diamond.ac.uk>; <r-help@stat.math.ethz.ch>
Sent: Thursday, July 05, 2007 9:37 PM
Subject: RE: [R] unexpected result in function valuation


> The problem is that you are dividing two numbers that are both very small.
> Any small imprecision in the denominator creates a big error.
>
> Here you can re-write your function using a trig identity to get accurate
> results:
>
> sinca <- function(N,th) {
> #return(sin((N+0.5)* th)/sin(0.5*th))
> return( (sin(N*th)/tan(th/2)) + cos(N*th))
> }
>
> This function works well, as you had expected.
>
> Ravi.
>

Rounding off errors and error propagation...
I forgot all about it...Sorry for wasting your time, but thanks a lot for 
your help, Brian, Jim and Ravi.

J

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

sxIVo lk13e