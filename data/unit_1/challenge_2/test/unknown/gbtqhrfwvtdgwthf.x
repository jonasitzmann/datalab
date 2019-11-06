From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 13:37:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62HbvL9016846
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 13:37:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62HaU8K015492;
	Mon, 2 Jul 2007 19:36:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from outboundd1.ihc.com (outboundd1.ihc.com [199.190.170.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62HaKW5015424
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 19:36:20 +0200
Received: from twemf2.co.ihc.com ([159.212.71.182])
	by outboundd1.ihc.com with esmtp (Exim 4.62)
	(envelope-from <Greg.Snow@intermountainmail.org>)
	id 1I5Pow-0002xW-cE; Mon, 02 Jul 2007 11:36:18 -0600
Received: from 159.212.71.188 by twemf1.co.ihc.com with ESMTP (Email
	Firewall SMTP Relay (Email Firewall v6.2.1)); Mon, 02 Jul 2007 11:36:05
	-0600
X-Server-Uuid: 0CCC7504-CEE2-47B5-B80E-0BE86FBE3DA5
Received: from lp-exchfe02.co.ihc.com ([10.50.128.46]) by
	gimail2.co.ihc.com with esmtp (Exim 4.62) (envelope-from
	<Greg.Snow@intermountainmail.org>) id 1I5Por-00011b-Lj; Mon, 02 Jul
	2007 11:36:14 -0600
Received: from LP-EXCHVS07.CO.IHC.COM ([10.50.128.40]) by
	lp-exchfe02.CO.IHC.COM with Microsoft SMTPSVC(6.0.3790.3959); Mon, 2
	Jul 2007 11:36:13 -0600
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 2 Jul 2007 11:36:12 -0600
Message-ID: <07E228A5BE53C24CAD490193A7381BBBA5B0E9@LP-EXCHVS07.CO.IHC.COM>
In-Reply-To: <4688C09E.7080400@tue.nl>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Combine graphical and textual output
Thread-Index: Ace8iP0VKsbFvUibTh2KvYPpzG3PIQARfihg
From: "Greg Snow" <Greg.Snow@intermountainmail.org>
To: "Dieter Vanderelst" <d.vanderelst@tue.nl>, r-help@stat.math.ethz.ch
X-OriginalArrivalTime: 02 Jul 2007 17:36:13.0166 (UTC)
	FILETIME=[7C3838E0:01C7BCCF]
X-WSS-ID: 6A97E80F1O4418006-01-01
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l62HaKW5015424
Subject: Re: [R] Combine graphical and textual output
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

The R2HTML package can be used to create and html transcript of your
session (you do need to start, end, and tell it to include graphs).  I
use this when doing an R demonstration (teaching), so that the students
can have a transcript that shows the commands I typed along with their
output (including the graphs).  

Another approach is the odfWeave package.  This is similar to sweave,
except that you use openoffice writer (can read MSWord docs) to set up
the text and set of commands (less overhead/startup than LaTeX).

Hope this helps,

-- 
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111
 
 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Dieter 
> Vanderelst
> Sent: Monday, July 02, 2007 3:09 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] Combine graphical and textual output
> 
> Hi,
> 
> I would like to know whether anybody knows a simple way to 
> combine textual and graphical output in R.
> 
> A typical analysis produces textual output (e.g. model fits) 
> and plots in R. I would like to know whether R has the 
> possibility of combining these into a single 'report' or 
> output. An example of a program that does this is SPSS. After 
> running the analysis you have a combination of textual output 
> (tables) and plots that are easy to print and distribute.
> 
> I know of the possibility to embed R code into LATEX (using 
> Sweave), but I wouldn't call this quick since a lot of coding 
> will go into writing the Sweave file.
> 
> Any other suggestions?
> 
> Regards,
> Dieter
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

T
1oDp2BhT-