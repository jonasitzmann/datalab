From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 06:32:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BAW1L9012959
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 06:32:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BAUeVI005968;
	Mon, 11 Jun 2007 12:30:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BAUTaW005911
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 12:30:30 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HxhAJ-0003kn-Vw
	for r-help@stat.math.ethz.ch; Mon, 11 Jun 2007 03:30:27 -0700
Message-ID: <11058255.post@talk.nabble.com>
Date: Mon, 11 Jun 2007 03:30:27 -0700 (PDT)
From: spime <sabya23@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Nabble-From: sabya23@gmail.com
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Error using mgcv package
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


Hi all,

I need some solution in the following problem. The following error appears
when i use "mgcv" package for implementing GAM. But the same formula works
fine in "gam" package.

> model.gam <- gam(formula = RES ~
> CAT01+s(NUM01,5)+CAT02+CAT03+s(NUM02,5)+CAT04+
+ CAT05+s(NUM03,5)+CAT06+CAT07+s(NUM04,5)+CAT08+s(NUM05,5)+CAT09+
+ CAT10+s(NUM06,5)+CAT11+NUM07+CAT12+CAT13,
+ family = binomial(link = logit), data = train.data,na.action = na.exclude,
+ control = list(epsilon = 0.001,bf.epsilon = 0.001, maxit = 50, 
+ bf.maxit = 10, trace = F))

Error in terms.formula(reformulate(term[i])) : 
        invalid model formula in ExtractVars

And after deleting df's 

model.gam <- gam(formula = RES ~ CAT01+s(NUM01)+CAT02+CAT03+s(NUM02)+CAT04+
+ CAT05+s(NUM03)+CAT06+CAT07+s(NUM04)+CAT08+s(NUM05)+CAT09+
+ CAT10+s(NUM06)+CAT11+NUM07+CAT12+CAT13,
+ family = binomial(link = logit), data = train.data)

Error in smooth.construct.tp.smooth.spec(object, data, knots) : 
        A term has fewer unique covariate combinations than specified
maximum degrees of freedom
 

Can anybody show me some light in this case!!!

Thanks in advance.
-- 
View this message in context: http://www.nabble.com/Error-using-mgcv-package-tf3900783.html#a11058255
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

f  q<-Vapp7