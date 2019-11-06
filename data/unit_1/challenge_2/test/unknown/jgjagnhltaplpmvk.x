From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 12:25:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55GP7hB011116
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 12:25:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GOGAY010444;
	Tue, 5 Jun 2007 18:24:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GIO0Q008454
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 18:18:31 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJ6000S07YPKB40@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 18:18:25 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	70ef_d24c8e46_137f_11dc_9d6c_0011433682c5;
	Tue, 05 Jun 2007 18:14:22 +0200
Received: from [194.95.14.112] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJ6000RW7YPKB40@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 18:18:25 +0200 (MEST)
Date: Tue, 05 Jun 2007 18:18:23 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <4664728A.A712.00CB.0@grecc.umaryland.edu>
To: John Sorkin <jsorkin@grecc.umaryland.edu>
Message-id: <46658CCF.2060706@gmx.net>
MIME-version: 1.0
References: <4664728A.A712.00CB.0@grecc.umaryland.edu>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] GUI for R running under Linux
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

Hi John,

I use JGR when I am on Fedora. This is a good java gui which is similiar
(and better) compared to the R windows gui . You can install it via
install.packages("JGR",dep=T) and start with library(JGR). Sometimes
Java is not configured correctly so you might end up with an error. In
that case do R CMD javareconf on a root shell.

Stefan

-------- Original Message  --------
Subject: [R] GUI for R running under Linux
From: John Sorkin <jsorkin@grecc.umaryland.edu>
To: r-help@stat.math.ethz.ch
Date: 05.06.2007 02:15
> Colleagues,
> I have been using R under windows for some time, and have become accustomed to the GUI that accompanies R. I have recently begun using R under Linux (Fedora), but can not find an equivalent GUI interface; at a terminal window I enter
> R
> Am I missing something? Can I get a GUI for R (version 2.5) running under Linux?
> Thanks,
> John
>
> John Sorkin M.D., Ph.D.
> Chief, Biostatistics and Informatics
> University of Maryland School of Medicine Division of Gerontology
> Baltimore VA Medical Center
> 10 North Greene Street
> GRECC (BT/18/GR)
> Baltimore, MD 21201-1524
> (Phone) 410-605-7119
> (Fax) 410-605-7913 (Please call phone number above prior to faxing)
>
> Confidentiality Statement:
> This email message, including any attachments, is for the so...{{dropped}}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

Jol

C5ac