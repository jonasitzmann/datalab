From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 13:09:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62H9TL9016561
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 13:09:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62H8qwS005671;
	Mon, 2 Jul 2007 19:09:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62GxlP7002991
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 18:59:47 +0200
Received: from titmouse2.kubism.ku.dk (0x50c633f5.boanxx12.adsl-dhcp.tele.dk
	[80.198.51.245])
	by slim.kubism.ku.dk (Postfix) with ESMTP id 5EC4319FED;
	Mon,  2 Jul 2007 18:59:37 +0200 (CEST)
Message-ID: <46892EF7.6070304@biostat.ku.dk>
Date: Mon, 02 Jul 2007 18:59:35 +0200
From: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: "Aydemir, Zava (FID)" <Zava.Aydemir@morganstanley.com>
References: <755261CA22782948B1C42ACDC83912A10443605D@NYWEXMB27.msad.ms.com>
In-Reply-To: <755261CA22782948B1C42ACDC83912A10443605D@NYWEXMB27.msad.ms.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] compute time span in months between two dates
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

Aydemir, Zava (FID) wrote:
> Hi,
>  
> I am just starting to play with R. What is the recommended manner for
> calculating time spans between 2 dates? In particular, should I be using
> the "chron" or the "date" package (so far I just found how to calculate
> a timespan in terms of days)?
>  
> Thanks
>   
I'd recommend something along these lines:

d1 <- "11/03-1959"
d2 <- "2/7-2007"
f <- "%d/%m-%Y"
as.numeric(as.Date(d2, f) - as.Date(d1, f), units="days")

(The format in f needs to be adjusted to the actual format, of course. 
For some formats, it can be omitted altogether).

>  
> Zava
> --------------------------------------------------------
>
> This is not an offer (or solicitation of an offer) to buy/se...{{dropped}}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

cpdVct;g=s7 ii+h