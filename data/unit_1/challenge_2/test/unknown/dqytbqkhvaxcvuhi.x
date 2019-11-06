From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 08:58:15 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JCwDL9029583
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:58:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCupcK007489;
	Tue, 19 Jun 2007 14:57:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from um0251.unimaas.nl (um0251.unimaas.nl [137.120.1.251])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCq4u0005578
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:52:04 +0200
Received: from um-mail0139.unimaas.nl (um-mail0139.unimaas.nl [137.120.1.139])
	by um0251.unimaas.nl (Postfix) with ESMTP id E8DA61D60262
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:52:03 +0200 (CEST)
Received: from um-mail0136.unimaas.nl ([137.120.1.136]) by
	um-mail0139.unimaas.nl with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Jun 2007 14:52:03 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 19 Jun 2007 14:52:03 +0200
Message-ID: <329A68716B57D54E8D39FD3F8A4A84DF057D5F3E@um-mail0136.unimaas.nl>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] converting proc mixed to lme for a random
	effectsmeta-analysis
Thread-Index: AceybtrjWrQ9uTHdT6mlCv1HxYjPQAAAG0Sg
From: "Viechtbauer Wolfgang \(STAT\)" <Wolfgang.Viechtbauer@STAT.unimaas.nl>
To: <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 19 Jun 2007 12:52:03.0811 (UTC)
	FILETIME=[A2A45B30:01C7B270]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5JCq4u0005578
Subject: Re: [R] converting proc mixed to lme for a random
	effectsmeta-analysis
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5JCwDL9029583

That was going to be my suggestion =)

By the way, lme does not give you the right results because the residual variance is not constrained to 1 (and it is not possible to do so).

Best,

-- 
Wolfgang Viechtbauer 
 Department of Methodology and Statistics 
 University of Maastricht, The Netherlands 
 http://www.wvbauer.com/ 



-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Bernd Weiss
Sent: Tuesday, June 19, 2007 14:37
To: Lucia Costanzo
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] converting proc mixed to lme for a random effectsmeta-analysis


On 19 Jun 2007 at 8:13, Lucia Costanzo wrote:

Date sent:      	Tue, 19 Jun 2007 08:13:30 -0400
From:           	Lucia Costanzo <lcostanz@uoguelph.ca>
To:             	r-help@stat.math.ethz.ch
Subject:        	[R] converting proc mixed to lme for a random 
effects meta-analysis

> I would like to convert the following SAS code for a Random Effects 
> meta-analysis model for use in R but, I am running into difficulties.
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
R-help@stat.math.ethz.ch mailing list https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

sZupaua