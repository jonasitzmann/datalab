From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 13:30:49 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JHUmL9032080
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 13:30:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JHTBk8021531;
	Tue, 19 Jun 2007 19:29:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from gse-mta-08.emailsystems.com (gse-mta-08.emailsystems.com
	[62.249.212.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JHJLHQ018346
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 19:19:21 +0200
Received: from tedmail2.lgc.co.uk ([194.73.101.131])
	by gse-mta-08.emailsystems.com with emfmta (version
	3.4.1.3246.0.rd-3.2.2-libc2.3.1) vanilla id 867015446
	for r-help@stat.math.ethz.ch; Tue, 19 Jun 2007 18:19:21 +0100
Received: from LGC_CLUST_GWIA-MTA by tedmail2.lgc.co.uk
	with Novell_GroupWise; Tue, 19 Jun 2007 18:19:21 +0100
Message-Id: <s6781e29.013@tedmail2.lgc.co.uk>
X-Mailer: Novell GroupWise Internet Agent 6.5.4 
Date: Tue, 19 Jun 2007 18:19:03 +0100
From: "S Ellison" <S.Ellison@lgc.co.uk>
To: <r-help@stat.math.ethz.ch>, <eesteves@ualg.pt>
Mime-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5JHJLHQ018346
Subject: Re: [R] help w/ nonlinear regression
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5JHUmL9032080

Your B coefficient differs by a suspicious-looking factor of 2.30... (ln(10). 
Does SPSS log() mean log10 or ln? R log(x) uses ln(x).

S

>>> "Eduardo Esteves" <eesteves@ualg.pt> 19/06/2007 17:19:35 >>>
Dear All,
I'd like to fit a "kind" of logistic model to small data-set using nonlinear least-squares regression. A transcript of R-script are reproduced below. Estimated B and T (the model's coeff, herein B=-8,50 and T=5,46) seem appropriate (at least visually) but are quite diff from those obtained w/ SPSS (Levenberg-Marquardt): B=-19,56 and T=2,37. Am I doing something wrong in R (or at least non-comparable "methodologies")? Please, feel free to comment/suggest.
Regards, Eduardo Esteves

# Dados

CO2<-c(141,172,181,227,309,414,641,936)
Prop<-c(0.25,0.34,0.34,0.68,0.85,0.99,0.98,0.99)

# Diagrama dispers�o

plot(Prop~CO2, las=1, xlim=c(0,1000),ylim=c(0,1),pch=16,cex=1.5,
 xlab="CO2 (ppm)", ylab="Propor��o de respostas correctas")

# Estima�ao (M�todo M�nimos Quadrados)

ajuste<-nls(Prop~(1/3+exp(B*(T-log(CO2))))/(1+exp(B*(T-log(CO2)))),
 data=data.frame(CO2=CO2,Prop=Prop),start=list(B=-10,T=5))
summary(ajuste)

# Ilustracao do ajuste

PropEsp<-predict(ajuste,newdata=list(CO2=seq(0,1000,length=100)),se.fit=T)
lines(PropEsp~seq(0,1000,length=100),lwd=2,col=6)

# IC

upIC<-PropEsp+qt(.975,summary(ajuste)$df[2])*summary(ajuste)$sigma
loIC<-PropEsp-qt(.975,summary(ajuste)$df[2])*summary(ajuste)$sigma
lines(upIC~seq(0,1000,length=100),col=4)
lines(loIC~seq(0,1000,length=100),col=4)
	[[alternative HTML version deleted]]


*******************************************************************
This email and any attachments are confidential. Any use, co...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

/xsVQosne 0 