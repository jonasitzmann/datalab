From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 23:24:26 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D3OOL9002591
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 23:24:25 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D3NoFY030362;
	Wed, 13 Jun 2007 05:24:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from onenetom22.sge.net (onenetom22.sge.net [152.91.1.22])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5D3Na9P030298
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 05:23:37 +0200
Received: from onenetvs14.sge.net (unknown [152.91.1.17])
	by onenetom22.sge.net (Postfix) with ESMTP id 1BA342080;
	Wed, 13 Jun 2007 13:23:35 +1000 (EST)
Received: from onenetvs14.sge.net (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id E11B745A2E;
	Wed, 13 Jun 2007 13:23:34 +1000 (EST)
Received: from marge.lyn.gwy (marge.sge.net [152.91.8.100])
	by onenetvs14.sge.net (Postfix) with ESMTP id B5D653BB40;
	Wed, 13 Jun 2007 13:23:34 +1000 (EST)
Received: from zeta-out.ga.gov.au (gafw1.marge.lyn.gwy [10.15.21.190])
	by marge.lyn.gwy with ESMTP id l5D3NV6O000794;
	Wed, 13 Jun 2007 03:23:31 GMT
Received: from mailgate.agso.gov.au (mailgate.ga.gov.au [10.7.64.70])
	by zeta-out.ga.gov.au (Postfix) with ESMTP id DF2711BFB1;
	Wed, 13 Jun 2007 13:23:31 +1000 (EST)
X-WSS-ID: 0JJK1HJ-01-4B4-01
Received: from mail.agso.gov.au (mail.agso.gov.au [10.7.64.69])
	by mailgate.agso.gov.au (Tumbleweed MailGate) with ESMTP id 85E2E5900B3;
	Wed, 13 Jun 2007 13:24:54 +1000 (EST)
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.0.6603.0
x-classifier: janusSEAL 2.1.2
x-protective-marking: VER=2005.6, NS=gov.au, SEC=UNCLASSIFIED,
	ORIGIN=Augusto.Sanabria@ga.gov.au
content-class: urn:content-classes:message
Date: Wed, 13 Jun 2007 13:23:30 +1000
Message-ID: <9B2962F493D17F4F81A9211B1F9C56FB0154F685@mail.ga.gov.au>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] data from graph [SEC=UNCLASSIFIED]
Thread-Index: AcetRMxspZ0KV89jTvSJ09bq9/6EhwAItr3w
From: <Augusto.Sanabria@ga.gov.au>
To: <cumarporn@gmail.com>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5D3Na9P030298
Subject: Re: [R] data from graph [SEC=UNCLASSIFIED]
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

Jam,

If you use "fpot" the GPD of package "evd" to calculate your 
return periods, you can generate the table you want by
using the following commands:

RP <- c(10,100,500,1000)   #return periods
rf <- your clean vector of rainfall data
thres <- the threshold for your data
nopy <- number of observations per year
rainf <- c()

For(i in 1:length(RP) ){
   q = fpot(rf,thres,mper=RP[i],npp=nopy,std.err=FALSE)
   rainf[i] <- q$estimate[1]
}
#The next line prints the return periods:
plot(RP,rainf,log="x",type="l",ylab="rainfall",xlab="Return Period (yrs)" )

#The next line prints the table you want:
cbind(RP,rainf)

Hope it helps,

Augusto


--------------------------------------------
Augusto Sanabria. MSc, PhD.
Mathematical Modeller
Risk & Impact Analysis Group
Geospatial & Earth Monitoring Division
Geoscience Australia (www.ga.gov.au)
Cnr. Jerrabomberra Av. & Hindmarsh Dr.
Symonston ACT 2601
Ph. (02) 6249-9155
 
 




-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of umarporn charusombat
Sent: Wednesday, 13 June 2007 8:35
To: r-help@stat.math.ethz.ch
Subject: [R] data from graph


hi
i just learn how to use R in my research
i used extreame value package to get the return level of rainfall. the output
i got as the graph plot between return level and period. i wonder how i can
get the value from the graph as a table format. please help me thanks jam

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

 t/n:
b5q