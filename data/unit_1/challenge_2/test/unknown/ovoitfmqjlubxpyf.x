From r-help-bounces@stat.math.ethz.ch  Sun Jun 10 12:40:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AGeFL9004413
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 12:40:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AGcPiu001024;
	Sun, 10 Jun 2007 18:38:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from statisticalengineering.com (statisticalengineering.com
	[198.63.48.41])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5AGcJcJ000995
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 18:38:20 +0200
Received: (qmail 32606 invoked by uid 12329); 10 Jun 2007 16:38:19 -0000
Received: from unknown (HELO DD4XFW31) ([76.108.202.205])
	(envelope-sender <Charles.Annis@StatisticalEngineering.com>)
	by 198.63.48.41 (qmail-ldap-1.03) with SMTP
	for <pwang@berkeley.edu>; 10 Jun 2007 16:38:19 -0000
From: "Charles Annis, P.E." <Charles.Annis@StatisticalEngineering.com>
To: "'Patrick Wang'" <pwang@berkeley.edu>, <r-help@stat.math.ethz.ch>
References: <51432.76.169.69.87.1181492686.squirrel@calmail.berkeley.edu>
Date: Sun, 10 Jun 2007 12:38:25 -0400
Organization: Statistical Engineering
Message-ID: <04eb01c7ab7d$c4b5f7f0$6400a8c0@DD4XFW31>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
Thread-Index: AcerfBf7F6yjBKfiSlS7yJdfCl42jAAAROoQ
In-Reply-To: <51432.76.169.69.87.1181492686.squirrel@calmail.berkeley.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] How to specify the start position using plot
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Charles.Annis@StatisticalEngineering.com
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

plot( x=rnorm(25, 0.5, 0.3), y=rnorm(25, 4, 1), xlim=c(0,1), ylim=c(2,7)) 
#                                               ^^^^^        ^^^^^     
for example

Charles Annis, P.E.

Charles.Annis@StatisticalEngineering.com
phone: 561-352-9699
eFax:  614-455-3265
http://www.StatisticalEngineering.com
 

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Patrick Wang
Sent: Sunday, June 10, 2007 12:25 PM
To: r-help@stat.math.ethz.ch
Subject: [R] How to specify the start position using plot

Hi,

How to specify the start position of Y in plot command, hopefully I can
specify the range of X and Y axis. I checked the ?plot, it didnot mention
I can setup the range.


Thanks
Pat

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

s nh+14bnYG E:f