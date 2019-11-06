From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 15:18:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GJIhL9018720
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 15:18:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GJHn3o006456;
	Sat, 16 Jun 2007 21:18:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.177])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5GJFmLH005643
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 21:15:49 +0200
Received: by wa-out-1112.google.com with SMTP id j37so1652643waf
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 12:15:48 -0700 (PDT)
Received: by 10.114.174.2 with SMTP id w2mr4394561wae.1182021348084;
	Sat, 16 Jun 2007 12:15:48 -0700 (PDT)
Received: by 10.141.76.12 with HTTP; Sat, 16 Jun 2007 12:15:48 -0700 (PDT)
Message-ID: <958ce7730706161215o3420ce38y1e4ac44a05bd2ca0@mail.gmail.com>
Date: Sat, 16 Jun 2007 12:15:48 -0700
From: "Michelle Wynn" <mlwynn@indiana.edu>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Google-Sender-Auth: 1b7e7186605095e2
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] data.frame and subsetting problem
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

I have read the R online help and wiki and I cannot seem to get something to
work the way I need it to.

I want to create a new data frame from an subset of an existing data frame
which has no reference to the original superset.  If you following this
example, what I am trying to do may make more sense.

I have a file with values like this:

shirt,size,40
shirt,color,10
shirt,length,10
shirt,brand, 1
shoes,style,5
shoes,brand,4
shoes,color,1

and I read it into a dataframe like:
x <- data.frame(read.delim("temp2.txt", sep=",", header=FALSE))

I then want to plot just a subset of this data (say shirts only)...
y <- data.frame(subset(x, V1 == "shirt"))
plot(x2[,2:3])

when I do, the resulting plot contains an empty value for 'color' even
though my subset has no value in column V2 that equals 'color' anymore.

Is it possible create a new data.frame that truly deletes the rows from the
original data frame that I am excluding with the subset parameter?

Thanks,
Michelle

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

ion@g 2x