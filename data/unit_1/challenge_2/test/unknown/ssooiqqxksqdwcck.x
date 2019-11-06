From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 08:37:52 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JCboL9029402
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:37:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCbFs0031995;
	Tue, 19 Jun 2007 14:37:25 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-out.rrz.uni-koeln.de (smtp-out.rrz.uni-koeln.de
	[134.95.19.53])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCb9Xr031959
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:37:09 +0200
Received: from smtp.uni-koeln.de (lvr3.rrz.uni-koeln.de [134.95.19.43])
	by smtp-out.rrz.uni-koeln.de (8.13.7/8.13.7) with ESMTP id
	l5JCb8JT021542; Tue, 19 Jun 2007 14:37:08 +0200
Received: from [134.95.47.146] ([134.95.47.146])
	by smtp.uni-koeln.de (8.12.11.20060308/8.12.11) with ESMTP id
	l5JCb8FD028609; Tue, 19 Jun 2007 14:37:08 +0200
From: "Bernd Weiss" <bernd.weiss@uni-koeln.de>
To: Lucia Costanzo <lcostanz@uoguelph.ca>
Date: Tue, 19 Jun 2007 14:36:47 +0200
MIME-Version: 1.0
Message-ID: <4677E9FF.9264.1743DE2@bernd.weiss.uni-koeln.de>
Priority: normal
In-reply-to: <4677C86A.3060709@uoguelph.ca>
References: <4677C86A.3060709@uoguelph.ca>
X-mailer: Pegasus Mail for Windows (4.41)
Content-description: Mail message body
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] converting proc mixed to lme for a random effects
	meta-analysis
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

On 19 Jun 2007 at 8:13, Lucia Costanzo wrote:

Date sent:      	Tue, 19 Jun 2007 08:13:30 -0400
From:           	Lucia Costanzo <lcostanz@uoguelph.ca>
To:             	r-help@stat.math.ethz.ch
Subject:        	[R] converting proc mixed to lme for a random 
effects meta-analysis

> I would like to convert the following SAS code for a Random Effects
> meta-analysis model for use in R but, I am running into
> difficulties. 
> The results are not similar, R should be reporting 0.017 for the 
> between-study variance component, 0.478 for the estimated parameter
> and 
> 0.130 for the standard error of the estimated parameter.  I think it
> is 
> the weighting causing problems. Would anyone have any suggestions or
> tips?
> 
> Thank you,
> Lucia
> 
> *** R CODE ***
> studynum <-c(1, 2, 3, 4, 5)
> y <-c(0.284, 0.224, 0.360, 0.785, 0.492)
> w <-c(14.63, 17.02, 9.08, 33.03, 5.63)
> genData2 <-data.frame(cbind(studynum, y, w,v))
> 
> re.teo<-lme(y~1, data=genData2, random =~1, method="ML", 
> weights=varFixed(~w))
> 
> 


What about using MiMa <http://www.wvbauer.com/downloads.html>? 

studynum <-c(1, 2, 3, 4, 5)
y <-c(0.284, 0.224, 0.360, 0.785, 0.492)
w <-c(14.63, 17.02, 9.08, 33.03, 5.63)
## without cbind(...)
genData2 <-data.frame(studynum, y, w)
mima(genData2$y, 1/genData2$w, mods = c(), method = "ML")


Some output:

- Estimate of (Residual) Heterogeneity: 0.0173

-         estimate     SE   zval  pval   CI_L   CI_U
intrcpt   0.4779 0.1304 3.6657 2e-04 0.2224 0.7334

Looks like what you are looking for...

HTH,

Bernd

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

rNX dd90n