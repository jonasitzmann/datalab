From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 23:34:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l563YVhB016948
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 23:34:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l563XB3p019933;
	Wed, 6 Jun 2007 05:33:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-out1.berkeley.edu (smtp-out1.Berkeley.EDU [128.32.61.106])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l563X4l8019905
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 05:33:05 +0200
Received: from arsenic.calmail ([192.168.1.2] helo=calmail.berkeley.edu)
	by fe6.calmail with esmtpsa (TLSv1:AES256-SHA:256) (Exim 4.67)
	(auth login:pwang@berkeley.edu) (envelope-from <pwang@berkeley.edu>)
	id 1HvmGd-0008G7-M4; Tue, 05 Jun 2007 20:33:03 -0700
Received: from 76.169.69.87
	(SquirrelMail authenticated user pwang@berkeley.edu)
	by calmail.berkeley.edu with HTTP;
	Tue, 5 Jun 2007 20:33:03 -0700 (PDT)
Message-ID: <50472.76.169.69.87.1181100783.squirrel@calmail.berkeley.edu>
In-Reply-To: <50327.76.169.69.87.1181095186.squirrel@calmail.berkeley.edu>
References: <50327.76.169.69.87.1181095186.squirrel@calmail.berkeley.edu>
Date: Tue, 5 Jun 2007 20:33:03 -0700 (PDT)
From: "Patrick Wang" <pwang@berkeley.edu>
To: "Patrick Wang" <pwang@berkeley.edu>
User-Agent: SquirrelMail/1.4.9a-2.berkeley
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] kernel smooth for tw-dimensional data
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

Hi, I found kde2d in the MASS packages return densities for the bivariate
random varaibles.

I donot understand why each element of density Z is a 2*2 matrix.
Why it is not a number.

For example, a bivariate normula distribution given (x, y) will return a
number, the density, not a matrix.

Thanks
Pat


> Hi all:
>
> I can use the density() function to get the kernel density for given
> observed data X with bandwidth.
>
> Is there a function in R that can take in two dimensional data(x, y) and
> return a joint density based
> on the bandwidth. Do I need to provide bandwith for x and then for y?
>
> Is the GRASS package
> kde2d.G(x, y, h, G, reverse=reverse(G))
>
> provide such function?
>
> Thanks
> pat
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

                   

lv 
ud 