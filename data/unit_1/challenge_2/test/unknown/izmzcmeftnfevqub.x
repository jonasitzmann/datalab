From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 14:34:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QIYXL9016092
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 14:34:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QIXmCW009492;
	Tue, 26 Jun 2007 20:34:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gateway2.jhsph.edu (gateway2.jhsph.edu [162.129.40.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QIXTLx009371
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 20:33:30 +0200
X-SBRS-GW1: None
X-IronPort-AV: E=Sophos;i="4.16,464,1175486400"; d="scan'208";a="107753536"
Received: from unknown (HELO owa-2.sph.ad.jhsph.edu) ([10.253.10.243])
	by gateway2.jhsph.edu with ESMTP; 26 Jun 2007 14:33:29 -0400
Received: from owa-2.sph.ad.jhsph.edu ([10.253.10.240]) by
	owa-2.sph.ad.jhsph.edu with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 26 Jun 2007 14:33:28 -0400
Received: from [10.253.16.13] ([10.253.16.13]) by owa-2.sph.ad.jhsph.edu with
	Microsoft SMTPSVC(6.0.3790.1830); Tue, 26 Jun 2007 14:33:28 -0400
In-Reply-To: <0EE866100C01984EAE6AC3AE56EDFE5355A728@xmail05.ad.ua.ac.be>
References: <0EE866100C01984EAE6AC3AE56EDFE5355A728@xmail05.ad.ua.ac.be>
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <C38169CB-5397-4802-8D1A-809F2BC53B1D@jhsph.edu>
From: Benilton Carvalho <bcarvalh@jhsph.edu>
Date: Tue, 26 Jun 2007 14:33:27 -0400
To: Van Campenhout Bjorn <bjorn.vancampenhout@ua.ac.be>
X-Mailer: Apple Mail (2.752.2)
X-OriginalArrivalTime: 26 Jun 2007 18:33:28.0587 (UTC)
	FILETIME=[7D695DB0:01C7B820]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] create matrix from comparing two vectors
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

outer(test, fac, "<")

-b

On Jun 26, 2007, at 2:13 PM, Van Campenhout Bjorn wrote:

> hi all, sorry for this basic question, I think I know I should use ? 
> apply, but it is really confusing me...
>
> I want to create a matrix by comparing two vectors.  Eg:
>
> test<-seq(1:10)
> fac<-c(3,6,9)
>
> and i want to end up with a 10*3 matrix with a boolean that tests  
> if test<fac, so something like:
>
> 1 1 1
> 1 1 1
> 0 1 1
> 0 1 1
> 0 1 1
> 0 0 1
> 0 0 1
> 0 0 1
> 0 0 0
> 0 0 0
>
> I can't find the solution without using a loop...
>
> B
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

"dsL 3ZPO