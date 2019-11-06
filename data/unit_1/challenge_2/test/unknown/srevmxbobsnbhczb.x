From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 13:47:49 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65HlkL9029301
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 13:47:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65HkOck027057;
	Thu, 5 Jul 2007 19:46:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: ***
X-Spam-Status: No, score=3.5 required=5.0 tests=BAYES_99, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from outmail136056.authsmtp.com (outmail136056.authsmtp.com
	[62.13.136.56])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65HckiF023976
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 19:38:47 +0200
Received: from outmail128180.authsmtp.com (outmail128180.authsmtp.com
	[62.13.128.180])
	by punt2.authsmtp.com (8.13.8/8.13.8/Kp) with ESMTP id l65HckBr028370
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:38:46 +0100 (BST)
Received: from JEEG (dyn1242-239.vpn.ic.ac.uk [129.31.242.239])
	(authenticated bits=0)
	by mail.authsmtp.com (8.13.8/8.13.8/Kp) with ESMTP id l65Hccbl072993
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:38:43 +0100 (BST)
Message-ID: <009201c7bf2b$6acae810$661d17ac@JEEG>
From: "James Foadi" <james.foadi@diamond.ac.uk>
To: <r-help@stat.math.ethz.ch>
Date: Thu, 5 Jul 2007 18:39:17 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
X-Server-Quench: 93f11abb-2b1e-11dc-867b-001185d377ca
X-AuthRoute: OCdxYAASBVZXRQEX EWUKCyZMSC0pJxRJ BhkPawJRZkcKQx4U
	MkteNnJILFQAA1RQ Rz4VDhAMGkMiAS11 bhUrKFlCYEpOWBVr
	WEJKSlhWEEtpAxUf BR8AUB1waQdFcWFy YFliECxdWTwpJhQh
	QklWHGQFK2NpYWZR WUMOdgIFIlFXfE1E P01+VSdefG0BYSh9
	R1dqZmBsMW4Ady9c VBwLIEIKTE0XEzJ0 XR0ZADEzVUwDDysu
	KRc6K1kaVFgYNlg7 LVomXzpf
X-Authentic-SMTP: 61633230383736.squirrel.dmpriest.net.uk:671/Kp
X-Report-SPAM: If SPAM / abuse - report it at: http://www.authsmtp.com/abuse
X-Virus-Status: No virus detected - but ensure you scan with your own
	anti-virus system!
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 05 Jul 2007 19:43:23 +0200
Subject: [R] unexpected result in function valuation
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

Dear all,
I have a very small script to plot a function. Here it is:

##########################################
sinca <- function(N,th)

{

return(sin((N+0.5)*th)/sin(0.5*th))

}

plot_sinca <- function(N)

{

x <- seq(-5*pi,5*pi,by=pi/100)

y <- rep(0,length=length(x))

for (i in 1:length(x))y[i] <- sinca(N,x[i])

plot(x,y,type="l",ylim=c(0,2*N+4))

return(c(x,y))

}

##########################################

When I load the script and run the function like this:

###########################################
> data <- plot_sinca(4)
> y <- data[1002:2002]
###########################################

I notice a spike on the plot which should not be there.
In fact I have checked and:
###########################################
> y[701]
[1] 10.07404
> sinca(4,2*pi)
[1] 9
###########################################

The second result is the correct one. Why, then do
I get the y[701]=10.07404? This function is not supposed
to be higher than 9...

Any help is greatly appreciated.

Regards,

J

Dr James Foadi
Membrane Protein Laboratory
Diamond Light Source Ltd
Chilton, Didcot
Oxfordshire OX11 0DE
---

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

sg slileyw