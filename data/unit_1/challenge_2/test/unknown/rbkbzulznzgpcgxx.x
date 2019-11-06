From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 13:37:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QHbaL9014134
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 13:37:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QHaemx019029;
	Tue, 26 Jun 2007 19:37:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from KIL-SM-1.UCIS.Dal.Ca (KIL-SM-1.UCIS.Dal.Ca [129.173.1.130])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QHaKBY018882
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 19:36:22 +0200
Received: from [129.173.38.222] (GenerationX.Psychology.Dal.Ca
	[129.173.38.222])
	by KIL-SM-1.UCIS.Dal.Ca (8.12.10/8.12.10) with ESMTP id l5QHaKEZ026968
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 14:36:20 -0300
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <DB174F65-4084-46B6-AD09-D575340E6825@DAL.CA>
References: <DB174F65-4084-46B6-AD09-D575340E6825@DAL.CA>
Message-Id: <90414ABE-A8E6-4C42-BF31-CBACF7C04179@DAL.CA>
From: Mike Lawrence <Mike.Lawrence@dal.ca>
Date: Tue, 26 Jun 2007 14:36:19 -0300
To: Rhelp <r-help@stat.math.ethz.ch>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Power calculation with measurement error
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

On 26-Jun-07, at 8:12 AM, Mike Lawrence wrote:
> Hi all,
> Hopefully this will be quick, I'm looking for pointers to packages/
> functions that would allow me to calculate the power of a t.test when
> the DV has measurement error. That is, I understand that, ceteris
> paribus, experiments using measure with more error (lower
> reliability) will have lower power.

I came across a reference (http://memetic.ca/reliability.pdf) that  
provides a formula for calculating the noncentrality parameter for  
tests using imperfect measures (see Eq. 4), as well as a table of  
some resulting power estimates. However, while I have created a (very  
slow) monte carlo function that so far as I can tell matches their  
results, when I attempt to implement their analytic solution it's way  
off. Can anyone see what I'm doing incorrectly?

n=100
r=.5 #reliability
e=.5 #effect size
delta=(sqrt(r*n)/2)*e
power.t.test(n,delta,sig.level=.05,alternative='one.sided')

      Two-sample t test power calculation

               n = 100
           delta = 1.767767
              sd = 1
       sig.level = 0.05
           power = 1
     alternative = one.sided

NOTE: n is number in *each* group


Meanwhile, their tables and my monte carlo method say that the power  
in that circumstance should be .7

Help?

Mike

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

5nnrev(E { i