From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 08:39:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ECdaL9021543
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:39:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECd8Dg014522;
	Thu, 14 Jun 2007 14:39:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECd19A014494
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:39:02 +0200
Received: by nz-out-0506.google.com with SMTP id o37so468228nzf
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 05:39:01 -0700 (PDT)
Received: by 10.143.168.16 with SMTP id v16mr91362wfo.1181824740963;
	Thu, 14 Jun 2007 05:39:00 -0700 (PDT)
Received: by 10.142.104.21 with HTTP; Thu, 14 Jun 2007 05:39:00 -0700 (PDT)
Message-ID: <f1372edc0706140539k7c3b17e2qccb0c9468297bc5e@mail.gmail.com>
Date: Thu, 14 Jun 2007 14:39:00 +0200
From: "Diego Gruber" <diego.gruber@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <f8e6ff050706140438r2a78ddccva83035087104e14d@mail.gmail.com>
MIME-Version: 1.0
References: <f1372edc0706140353m4342ede2of70bb6b72a70994a@mail.gmail.com>
	<f8e6ff050706140438r2a78ddccva83035087104e14d@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] function with xyplot
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

Thanks a lot for your suggestions. Referencing the dataset solved the
problem. I had actually tried it before but since I was also subsetting the
datset within the function (something I didn't mention in my question) the
objects were not of the same length and that caused me trouble. Your comment
made me realize that.

Thanks Hadley for pointing me out to ggplot2, looks like a very complete
graphics package and if it simplifies the programming it must be extremely
useful. I'll make sure to take a closer look at it.

Best regards,

Diego

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

iiS8 s�o  : .r