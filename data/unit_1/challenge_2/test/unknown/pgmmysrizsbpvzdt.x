From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 14:13:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QIDdL9015894
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 14:13:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QID75o002229;
	Tue, 26 Jun 2007 20:13:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mx4.ucdavis.edu (mx4.ucdavis.edu [128.120.32.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QICwus002184
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 20:12:59 +0200
Received: from basho.dept-lawr.ucdavis.edu ([169.237.35.250])
	by mx4.ucdavis.edu (8.13.7/8.13.1/it-defang-5.4.0) with ESMTP id
	l5QICn1o023661; Tue, 26 Jun 2007 11:12:50 -0700 (PDT)
From: Dylan Beaudette <dylan.beaudette@gmail.com>
To: r-help@stat.math.ethz.ch
Date: Tue, 26 Jun 2007 11:13:15 -0700
User-Agent: KMail/1.9.5
References: <A32055BDEA88C34BB3DBBCD229380778012C8BF6@iu-mssg-mbx109.ads.iu.edu>
In-Reply-To: <A32055BDEA88C34BB3DBBCD229380778012C8BF6@iu-mssg-mbx109.ads.iu.edu>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200706261113.15864.dylan.beaudette@gmail.com>
X-Scanned-By: MIMEDefang 2.57 on 128.120.32.34
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] inter-rater agreement index kappa
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: dylan.beaudette@gmail.com
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

On Tuesday 26 June 2007 10:14, Nair, Murlidharan T wrote:
> Is there a function that calculates the inter-rater agreement index
> (kappa) in R?
>
> Thanks ../Murli

I have found a couple useful approaches:

# PCC, kappa, rand index
require(e1701)
classAgreement(2x2.table)

# kendall's tau
cor(x,y, method='kendall')

cheers,

-- 
Dylan Beaudette
Soils and Biogeochemistry Graduate Group
University of California at Davis
530.754.7341

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

tpd
�RUUgbL>Onj