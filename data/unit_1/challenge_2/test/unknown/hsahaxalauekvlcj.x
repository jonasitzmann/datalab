From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 08:14:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TCEBL9025386
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:14:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCCk2Y027963;
	Fri, 29 Jun 2007 14:12:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from trex.centroin.com.br (trex.centroin.com.br [200.225.63.134])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5TCCXZN027878
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 14:12:35 +0200
Received: from centroin.com.br (trex.centroin.com.br [200.225.63.134])
	by trex.centroin.com.br (8.13.4/8.13.6) with ESMTP id l5TCCpgq050282
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 09:12:51 -0300 (BRT)
	(envelope-from albmont@centroin.com.br)
From: "Alberto Monteiro" <albmont@centroin.com.br>
To: r-help@stat.math.ethz.ch
Date: Fri, 29 Jun 2007 10:12:51 -0200
Message-Id: <20070629115307.M40604@centroin.com.br>
X-Mailer: CIP WebMail 2.51 20050627
X-OriginatingIP: 200.179.65.110 (albmont)
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Fat tails
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

I have a process that generates distributions that look like normal, 
but with fat tails. I would like to model them as if they were
a mix of two normals (with zero mean). Is there any function that
recovers the standard deviations and the probability based on a 
sample?

I would like to generate a sample like this:

r.mydist <- function(n, prob, mean1, sd1=1, mean2, sd2=1) {
  # aesthetical stuff
  if (missing(mean1) & missing(mean2)) mean1 <- 0
  if (missing(mean1)) mean1 <- mean2
  if (missing(mean2)) mean2 <- mean1

  # now, let's work
  # test is true if we must use the first normal (mean1, sd1)
  test <- runif(n) < prob

  # create the return value
  rval <- 0
  rval[n] <- 0

  # generate the first normal when appropriate
  if (any(test))
    rval[test] <- rnorm(sum(test), mean1, sd1)

  # generate the second normal when appropriate
  if (any(!test))
    rval[!test] <- rnorm(sum(!test), mean2, sd2)

  # game over
  return(rval)
}

# test
x <- r.mydist(1000, 0.1, 0, 1, 0, 5)
hist(x)
if (require(fBasics))
  cat("the sample kurtosis is", kurtosis(x), "\n")

Now, with this sample x, how can I get back sd1, sd2 and prob?

Alberto Monteiro

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

hm arax2 