From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 22:01:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5F21EL9028527
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 22:01:15 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F1xhXo012592;
	Fri, 15 Jun 2007 04:00:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_60, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from unlnotes.unl.edu (unlnotes.unl.edu [129.93.1.131])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5F1xZaB012562
	for <R-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 03:59:36 +0200
Received: from unlnotes02.unl.edu ([129.93.1.3])
	by unlnotes.unl.edu (Lotus Domino Release 7.0.2FP1)
	with ESMTP id 2007061420593353-437795 ;
	Thu, 14 Jun 2007 20:59:33 -0500 
To: <R-help@stat.math.ethz.ch>
MIME-Version: 1.0
X-Mailer: Lotus Notes Release 6.5.4 March 27, 2005
From: Andrew J Tyre <atyre2@unlnotes.unl.edu>
X-MIMETrack: Serialize by Router on UNLNOTES02.UNL.EDU/Servers/UNEBR(Release
	7.0.2|September 26, 2006) at 06/14/2007 08:59:33 PM,
	Serialize complete at 06/14/2007 08:59:33 PM,
	Itemize by SMTP Server on UNLNOTES.UNL.EDU/Servers/UNEBR(Release
	7.0.2FP1|January 10, 2007) at 06/14/2007 08:59:33 PM,
	Serialize by Router on UNLNOTES.UNL.EDU/Servers/UNEBR(Release
	7.0.2FP1|January 10, 2007) at 06/14/2007 08:59:35 PM,
	Serialize complete at 06/14/2007 08:59:35 PM
Message-ID: <OF5E761867.7175B709-ON862572FB.000A9272-862572FB.000AF244@unl.edu>
Date: Thu, 14 Jun 2007 20:59:33 -0500
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] converting character strings to numbers
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

I have a comma delimited text file in which many columns of numbers are 
also quoted and have commas as well as decimals. I was surprised to find 
read.csv() didn't import this seamlessly, even after messing around with 
the colClasses argument. I did find a solution to convert the character 
strings after reading them in, but wonder if there isn't a better one I 
overlooked.

test = c("10,522.5","11,768.9","11,354.3")
as.numeric(test) # fails
as.numeric(gsub(",","",test)) # works

Any suggestions? Or is this as good as it gets? I'm not complaining ... 
just curious! 

Drew Tyre

School of Natural Resources
University of Nebraska-Lincoln
416 Hardin Hall, East Campus
Lincoln, NE 68583-0974
phone: +1 402 472 4054 fax: +1 402 472 2946
email: atyre2@unl.edu
http://snr.unl.edu/tyre
	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 o<.IiLf