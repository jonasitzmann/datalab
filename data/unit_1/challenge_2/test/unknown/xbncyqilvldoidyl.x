From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 19:49:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FNnOL9007949
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 19:49:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FNmYer022992;
	Sat, 16 Jun 2007 01:48:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FNe0qU019963
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 01:40:01 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HzLOZ-0006Bf-JW
	for r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 16:39:59 -0700
Message-ID: <11149419.post@talk.nabble.com>
Date: Fri, 15 Jun 2007 16:39:59 -0700 (PDT)
From: owenman <solberg@speakeasy.net>
To: r-help@stat.math.ethz.ch
In-Reply-To: <f8e6ff050706121131s4b0aeb30y8de662ddd7323092@mail.gmail.com>
MIME-Version: 1.0
X-Nabble-From: solberg@speakeasy.net
References: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
	<f8e6ff050706121131s4b0aeb30y8de662ddd7323092@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Stacked barchart color
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


Hi Hadley,
I tried your suggestion, using ggplot2, but I am still having a problem. The
final plot lacks the figure legend -- which it had before I added the 
scale_fill_identity()  bit.  Can  you see what I am doing wrong?  
(By the way, all I am trying to do is make the figure monochrome friendly. 
Is there an easy way to prepare ggplot graphics for a monochrom device?)
Thanks,Owen

> y$color = factor(y$Fnd)
> y$color = c("black","darkgray","lightgray","white") 
> y
      Fnd locus        Freq color
1  signeg     A 0.087248322     black
2     neg     A 0.711409396  darkgray
3     pos     A 0.201342282 lightgray
4  sigpos     A 0.000000000     white
5  signeg     C 0.320754717     black
6     neg     C 0.603773585  darkgray
7     pos     C 0.075471698 lightgray
8  sigpos     C 0.000000000     white
9  signeg     B 0.157534247     black
10    neg     B 0.732876712  darkgray
11    pos     B 0.109589041 lightgray
12 sigpos     B 0.000000000     white

> p = ggplot(y, aes(x=locus, y=Freq, fill=color)) +
> geom_bar(position="fill") + scale_fill_identity() 
> p



hadley wrote:
> 
> 
> Hi Dieter,
> 
> You can do this with ggplot2 (http://had.co.nz/ggplot2) as follows:
> 
> library(ggplot2)
> 
> barley1 <- subset(barley, site=="Grand Rapids" & variety %in%
> c("Velvet","Peatland"))
> barley1[] <- lapply(barley1, "[", drop=TRUE)
> 
> qplot(variety, yield, data=barley1, geom="bar", stat="identity",
> fill=factor(year))
> 
> barley1$fill <- c("red","green","blue","gray")
> qplot(variety, yield, data=barley1, geom="bar", stat="identity",
> fill=fill) + scale_fill_identity()
> 
> See http://had.co.nz/ggplot2/scale_identity.html and
> http://had.co.nz/ggplot2/position_stack.html for more details.
> 
> Hadley
> 
> 

-- 
View this message in context: http://www.nabble.com/Stacked-barchart-color-tf3909162.html#a11149419
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

oEi :>9/QaiQ<ens