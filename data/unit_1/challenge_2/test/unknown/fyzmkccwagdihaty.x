From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 12:57:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HGv0L9008804
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 12:57:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HGtPbX000841;
	Sun, 17 Jun 2007 18:55:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from tajo.ucsd.edu (tajo.ucsd.edu [137.110.122.165])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5HGtExx000791
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 18:55:15 +0200
Received: from cberry (helo=localhost)
	by tajo.ucsd.edu with local-esmtp (Exim 4.60)
	(envelope-from <cberry@tajo.ucsd.edu>)
	id 1Hzy3D-0002DX-MK; Sun, 17 Jun 2007 09:56:31 -0700
Date: Sun, 17 Jun 2007 09:56:31 -0700
From: "Charles C. Berry" <cberry@tajo.ucsd.edu>
To: Gavin Simpson <gavin.simpson@ucl.ac.uk>
In-Reply-To: <1182084469.3012.19.camel@dhcppc2.my.nat.localnet>
Message-ID: <Pine.LNX.4.64.0706170941220.8421@tajo.ucsd.edu>
References: <1182084469.3012.19.camel@dhcppc2.my.nat.localnet>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <R-help@stat.math.ethz.ch>
Subject: Re: [R] Efficiently calculate sd on an array?
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

On Sun, 17 Jun 2007, Gavin Simpson wrote:

> Dear list,
>
> Consider the following problem:
>
> n.obs <- 167
> n.boot <- 100
> arr <- array(runif(n.obs*n.obs*n.boot), dim = c(n.obs, n.obs, n.boot))
> arr[sample(n.obs, 3), sample(n.obs, 3), ] <- NA
>
> Given the array arr, with dims = 167*167*100, I would like to calculate
> the sd of the values in the 3rd dimension of arr, and an obvious way to
> do this is via apply():
>
> system.time(res <- apply(arr, c(2,1), sd, na.rm = TRUE))
>
> This takes over 4 seconds on my desktop.
>
> I have found an efficient way to calculate the means of the 3rd
> dimension using
>
> temp <- t(rowMeans(arr, na.rm = TRUE, dims = 2))
>
> instead of
>
> temp <- apply(arr, c(2,1), mean, na.rm = TRUE)
>
> but I am having difficulty seeing how to calculate the standard
> deviations efficiently.
>
> Any idea how I might go about this?

Here are timings on my system:

> system.time(res <- apply(arr, c(2,1), sd, na.rm = TRUE))
    user  system elapsed
    3.49    0.00    3.52
> system.time(res2 <- {
+   ns <- rowSums(!is.na(arr),dim=2)
+   mns <- as.vector(rowMeans(arr, na.rm = TRUE, dims = 2))
+   sds <- t(sqrt(rowSums( (arr- mns )^2,na.rm=T,dims=2)/as.vector(ns-1)))
+   sds[t(ns)==0] <- NA
+   sds})
    user  system elapsed
    0.36    0.02    0.37
> all.equal(res,res2)
[1] TRUE
>

HTH,

Chuck

>
> All the best,
>
> G
> -- 
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
> Gavin Simpson                     [t] +44 (0)20 7679 0522
> ECRC                              [f] +44 (0)20 7679 0565
> UCL Department of Geography
> Pearson Building                  [e] gavin.simpsonATNOSPAMucl.ac.uk
> Gower Street
> London, UK                        [w] http://www.ucl.ac.uk/~ucfagls/
> WC1E 6BT                          [w] http://www.freshwaters.org.uk/
> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

Charles C. Berry                            (858) 534-2098
                                             Dept of Family/Preventive Medicine
E mailto:cberry@tajo.ucsd.edu	            UC San Diego
http://famprevmed.ucsd.edu/faculty/cberry/  La Jolla, San Diego 92093-0901

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

KtSFu3nKe3�_c