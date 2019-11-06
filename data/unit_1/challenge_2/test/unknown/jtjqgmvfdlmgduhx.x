From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 06:49:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JAnZL9028482
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 06:49:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JAmnTi022609;
	Tue, 19 Jun 2007 12:49:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FH_HOST_EQ_D_D_D_DB,
	RDNS_DYNAMIC autolearn=no version=3.2.0
Received: from mail.bitwrit.com.au (3.202.233.220.exetel.com.au
	[220.233.202.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JAmE7v021858
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 12:48:17 +0200
Received: from [192.168.1.20] ([192.168.1.20])
	by mail.bitwrit.com.au (8.13.1/8.13.1) with ESMTP id l5JAm1ha010194;
	Tue, 19 Jun 2007 20:48:02 +1000
Message-ID: <4677B56A.6010203@bitwrit.com.au>
Date: Tue, 19 Jun 2007 20:52:26 +1000
From: Jim Lemon <jim@bitwrit.com.au>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.7.8) Gecko/20050513 Fedora/1.7.8-2
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: Robin Hankin <r.hankin@noc.soton.ac.uk>, R-help@stat.math.ethz.ch
References: <42B9A932-99E8-4788-B66A-FB12A9FA1DD6@noc.soton.ac.uk>
In-Reply-To: <42B9A932-99E8-4788-B66A-FB12A9FA1DD6@noc.soton.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] triangle contour plots
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

Robin Hankin wrote:
> Suppose I have three numbers p1, p2, p3 with
> 0 <= p1,p2,p3 <= 1  and p1+p2+p3=1,
> and a  function  f=f(p1,p2,p3)   =  f(p1,p2,1-p1-p2).
> 
> How to draw a contour plot of f() on the p1+p2+p3=1 plane,
> that is, an equilateral triangle?
> 
> Functions triplot(), triangle.plot(), and ternaryplot()  give
> only  scatterplots, AFAICS
> 
Hi Robin,
I was all ready to say that triax.plot could do what you want if I added 
a "type" argument, but found that for some reason both "points" and 
"lines" are only reading the first color in a vector. If I send more 
than one color to either function, I only get the first one. If I can 
sort this out, it's easy to use triax.plot to do what you want (unless, 
of course, you are satisfied with lines of one color).

Jim

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

seoleektJhsNo2