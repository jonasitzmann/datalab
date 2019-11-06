From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 09:31:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RDVjL9027228
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 09:31:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RDV4JI005662;
	Wed, 27 Jun 2007 15:31:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mta4.srv.hcvlny.cv.net (mta4.srv.hcvlny.cv.net [167.206.4.199])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RDUcWL005479
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 15:30:38 +0200
Received: from [192.168.1.101] (ool-4355370e.dyn.optonline.net [67.85.55.14])
	by mta4.srv.hcvlny.cv.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTP id <0JKA0059AQUV25E0@mta4.srv.hcvlny.cv.net> for
	r-help@stat.math.ethz.ch; Wed, 27 Jun 2007 09:30:32 -0400 (EDT)
Date: Wed, 27 Jun 2007 09:30:32 -0400
From: Chuck Cleland <ccleland@optonline.net>
In-reply-to: <BAY126-W41A4895E8178F4A13704B2C90A0@phx.gbl>
To: Bruce Willy <croero@hotmail.com>
Message-id: <46826678.2070309@optonline.net>
MIME-version: 1.0
References: <BAY126-W41A4895E8178F4A13704B2C90A0@phx.gbl>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Import from excel
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5RDVjL9027228

Bruce Willy wrote:
> Hello,
>  
> I have imported data from Excel using the command 
> cours=read.delim("w:/apprentissage/cours_2.txt")
> after transforming my initial file with tab delimiters
>  
> It seemed to work
>  
> It is 2-dimensionnal. When I type cours[5,5],
> I get this type of message : "[1] 0,9760942761824 Levels:  0,495628477 0,893728761 0,89640592 0,903398558 ... 3,864414217"
> And when I want to multiply it, for example by 2 (cours[5,5]*2), I get : "Warning message:* ceci n'est pas pertinent pour des variables facteurs in: Ops.factor(cours[5, 5], 2)"
> i.e. approximately "this is not relevant for factor variables.
>  
> What can I do if I want to manipulate my variables ?
>  
> Thank you very much  

  You might try the following:

cours <- read.delim("w:/apprentissage/cours_2.txt", dec=",")

  See the "dec" argument on the help page for read.delim().

> _________________________________________________________________
> 
> stall�es directement dans votre Messenger !
> 
> 	[[alternative HTML version deleted]]
> 
> 
> 
> ------------------------------------------------------------------------
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

-- 
Chuck Cleland, Ph.D.
NDRI, Inc.
71 West 23rd Street, 8th floor
New York, NY 10010
tel: (212) 845-4495 (Tu, Th)
tel: (732) 512-0171 (M, W, F)
fax: (917) 438-0894

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

 nm"mg
9/ac"s/#