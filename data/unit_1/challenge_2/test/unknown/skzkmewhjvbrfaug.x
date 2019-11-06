From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 18:05:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LM56L9030034
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 18:05:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LM34vv012522;
	Fri, 22 Jun 2007 00:03:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-1.pdf.com (postrelay-1.pdf.com [209.128.81.152])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LLxeTx011656
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 23:59:42 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-1.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l5LLwCIX020195; Thu, 21 Jun 2007 14:58:13 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l5LLxcB5017853
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Jun 2007 14:59:39 -0700
Received: from [10.10.10.89] (sjc-10-10-10-89.pdf.com [10.10.10.89])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l5LLxafL032028;
	Thu, 21 Jun 2007 14:59:36 -0700
Message-ID: <467AF4D2.8020500@pdf.com>
Date: Thu, 21 Jun 2007 14:59:46 -0700
From: Sundar Dorai-Raj <sundar.dorai-raj@pdf.com>
Organization: PDF Solutions, Inc.
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Brian Wilfley <bwilfley@tripleringtech.com>
References: <d1f37b3d0706211444jd8e529at527fe5b60cbe2a93@mail.gmail.com>
In-Reply-To: <d1f37b3d0706211444jd8e529at527fe5b60cbe2a93@mail.gmail.com>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] abline plots at wrong abscissae after boxplot
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



Brian Wilfley said the following on 6/21/2007 2:44 PM:
> Hi folks,
> 
> I'm using R 2.5.0 under ESS under Windows XP. (This also happens using
> the Rgui application.)
> 
> I'm trying to add lines to a plot originally made with "boxplot", but
> the lines appear in the wrong place. Below is a script that
> illustrates the problem
> 
> # boxablinetest.R - script to show problem with abline on box plot
> 
> x <-  c(  2,  2,  2,  3,  3,  3,  4,  4,  4)
> y <-  c(  1,  2,  3,  2,  3,  4,  3,  4,  5)
> 
> xymodel <- lm( y~x)
> 
> boxplot( y~x)
> abline( xymodel)                        # Wrong abcissae
> abline( v = 2.5)                        # Wrong abcissa
> abline( h = 2.75)                       # Right ordinate
> 
> # -------------- end --------------
> 
> Here, I'm making a box plot with abscissae that start at 2. The box
> plot looks fine: the numbers 2, 3, and 4 appear on the x-axis and the
> boxes are centered at 2, 3, and 4.
> 
> When I add the first abline, the line appears too low, but actually it
> is too far to the right. The abscissae are being interpreted without
> realizing that the plot originates at 2, not 1.
> 
> The second call to abline should put a vertical line between 2 and 3,
> but instead it shows up between 3 and 4. Again, it appears that the
> offset in the origin of the boxplot is not accounted for.
> 
> Finally the last abline appears where it should: between 2 and 3.
> Evidently, ordinate values are correctly interpreted.
> 
> Does anyone have any advice?
> 
> Thanks very much.
> 
> Brian Wilfley
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.


That's because the x is converted to a factor (see ?boxplot). Here's 
what you want:

## changesd x==3 to 6 to demonstrate call to boxplot below
x <- c(2, 2, 2, 3, 3, 3, 6, 6, 6)
y <- c(1, 2, 3, 2, 3, 4, 3, 4, 5)

xymodel <- lm(y ~ x)

boxplot(y ~ x) ## note x-labels!

## now fix your problem
plot(y ~ x, type = "n", xlim = c(1, 7))
bxp(boxplot(y ~ x, plot = FALSE), at = c(2, 3, 6),
     add = TRUE, boxwex = 0.5, boxfill = "lightblue")
abline(xymodel)
abline(v = 2.5)
abline(h = 2.75)

HTH,

--sundar

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

pcgg<u