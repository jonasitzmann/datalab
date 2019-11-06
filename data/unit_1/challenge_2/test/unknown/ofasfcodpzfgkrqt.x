From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 19:06:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LN6cL9030673
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 19:06:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LN5AGb012654;
	Fri, 22 Jun 2007 01:05:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from web26513.mail.ukl.yahoo.com (web26513.mail.ukl.yahoo.com
	[217.146.177.60])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5LN54Hq012630
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 01:05:04 +0200
Received: (qmail 75722 invoked by uid 60001); 21 Jun 2007 23:05:04 -0000
X-YMail-OSG: 5MmuMLoVM1nc1UtzVegY1j_ThokB0tdlD6ewg2.o1Dv1zSKeA_gbtPYPtnaWb.r5YA--
Received: from [84.160.225.203] by web26513.mail.ukl.yahoo.com via HTTP;
	Thu, 21 Jun 2007 23:05:04 GMT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Thu, 21 Jun 2007 23:05:04 +0000 (GMT)
From: Karl Knoblick <karlknoblich@yahoo.de>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <393002.75525.qm@web26513.mail.ukl.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5LN54Hq012630
Subject: [R] Result depends on order of factors in unbalanced designs (lme,
	anova)?
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

Dear R-Community!

For example I have a study with 4 treatment groups (10 subjects per group) and 4 visits. Additionally, the gender is taken into account. I think - and hope this is a goog idea (!) - this data can be analysed using lme as below.

In a balanced design everything is fine, but in an unbalanced design there are differences depending on fitting y~visit*treat*gender or y~gender*visit*treat - at least with anova (see example). Does this make sense? Which ordering might be the correct one?

Here the example script:
library(nlme)
set.seed(123)
# Random generation of data:
NSubj<-40 # No. of subjects
set.seed(1234)
id<-factor(rep(c(1:NSubj),4)) # ID of subjects
treat<-factor(rep(rep(1:4,each=5),4)) # Treatment 4 Levels
gender<-factor(rep(rep(1:2, each=20),4))
visit<-factor(rep(1:4, each=NSubj))
y<-runif(4*NSubj) # Results
# Add effects
y<-y+0.01*as.integer(visit)
y<-y+0.02*as.integer(gender)
y<-y+0.024*as.integer(treat)
df<-data.frame(id, treat, gender, visit, y)
# groupedData object for lme
gdat<-groupedData(y ~ visit|id, data=df)
# fits - different ordering of factors
fit1<-lme(y ~ visit*treat*gender, data=gdat, random = ~visit|id)
anova(fit1)
fit2<-lme(y ~ gender*treat*visit, data=gdat, random = ~visit|id)
anova(fit2)
# Result: identical (balanced design so far), ok
# Now change gender of subject 1
gdat$gender[c(1,41,81,121)]<-2
# onece more fits with different ordering of factors
fit1<-lme(y ~ visit*treat*gender, data=gdat, random = ~visit|id)
anova(fit1)
fit2<-lme(y ~ gender*treat*visit, data=gdat, random = ~visit|id)
anova(fit2)
# Result: There are differences!!

Hope anybody can help or give me advice how to interpret these results correctly or how to avoid this problem! Is there a better possibility to analyse these data than lme?

Thanks!
Karl

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

et cr tyerr�z