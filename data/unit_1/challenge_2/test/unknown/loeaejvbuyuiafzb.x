From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 17:40:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GLe5L9019764
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 17:40:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GLaqSk018888;
	Sat, 16 Jun 2007 23:37:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.170])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GLahl0018868
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 23:36:43 +0200
Received: by ug-out-1314.google.com with SMTP id m3so319179uge
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 14:36:43 -0700 (PDT)
Received: by 10.67.102.16 with SMTP id e16mr3758907ugm.1182029802436;
	Sat, 16 Jun 2007 14:36:42 -0700 (PDT)
Received: by 10.66.221.12 with HTTP; Sat, 16 Jun 2007 14:36:42 -0700 (PDT)
Message-ID: <644e1f320706161436q6b8cc108j43c4582289067726@mail.gmail.com>
Date: Sat, 16 Jun 2007 17:36:42 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Michelle Wynn" <mlwynn@indiana.edu>
In-Reply-To: <958ce7730706161215o3420ce38y1e4ac44a05bd2ca0@mail.gmail.com>
MIME-Version: 1.0
References: <958ce7730706161215o3420ce38y1e4ac44a05bd2ca0@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] data.frame and subsetting problem
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

Not sure what 'x2' is that you are plotting; it is not defined.
read.delimand subset return dataframes, so you don't need
data.frame.

Here is something that does work:

> x <- "shirt,size,40
+ shirt,color,10
+ shirt,length,10
+ shirt,brand, 1
+ shoes,style,5
+ shoes,brand,4
+ shoes,color,1"
> x <- read.csv(textConnection(x), header=FALSE)
>
>
> x
     V1     V2 V3
1 shirt   size 40
2 shirt  color 10
3 shirt length 10
4 shirt  brand  1
5 shoes  style  5
6 shoes  brand  4
7 shoes  color  1
> plot(subset(x, V1=="shirt")[,2:3])
>



On 6/16/07, Michelle Wynn <mlwynn@indiana.edu> wrote:
>
> I have read the R online help and wiki and I cannot seem to get something
> to
> work the way I need it to.
>
> I want to create a new data frame from an subset of an existing data frame
> which has no reference to the original superset.  If you following this
> example, what I am trying to do may make more sense.
>
> I have a file with values like this:
>
> shirt,size,40
> shirt,color,10
> shirt,length,10
> shirt,brand, 1
> shoes,style,5
> shoes,brand,4
> shoes,color,1
>
> and I read it into a dataframe like:
> x <- data.frame(read.delim("temp2.txt", sep=",", header=FALSE))
>
> I then want to plot just a subset of this data (say shirts only)...
> y <- data.frame(subset(x, V1 == "shirt"))
> plot(x2[,2:3])
>
> when I do, the resulting plot contains an empty value for 'color' even
> though my subset has no value in column V2 that equals 'color' anymore.
>
> Is it possible create a new data.frame that truly deletes the rows from
> the
> original data frame that I am excluding with the subset parameter?
>
> Thanks,
> Michelle
>
>        [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

inPrg