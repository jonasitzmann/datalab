From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 07:53:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55BrShB008402
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 07:53:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Bqk72011577;
	Tue, 5 Jun 2007 13:52:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.instnat.be (inlinux.instnat.be [193.190.203.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Bo6He010642
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 13:50:06 +0200
Received: from inboexch.inbo.be (mail.inbo.be [172.16.203.3])
	by mail.instnat.be (Postfix) with ESMTP id A03363A853;
	Tue,  5 Jun 2007 15:51:35 +0200 (CEST)
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Tue, 5 Jun 2007 13:50:39 +0200
Message-ID: <2E9C414912813E4EB981326983E0A10403008D7D@inboexch.inbo.be>
In-Reply-To: <54FE424ACFACF045984B76FE2407FE0FE42A21@EMEAMAIL01.PERKINELMER.NET>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Lines to plots with a for-loop
Thread-Index: AcenYlFMjtL48bmNQ7Cs4EAcF0X50QABOPjA
From: "ONKELINX, Thierry" <Thierry.ONKELINX@inbo.be>
To: "Saanisto, Taija" <Taija.Saanisto@perkinelmer.com>,
   <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l55Bo6He010642
Subject: Re: [R] Lines to plots with a for-loop
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

Dear Taija,

You want lines but use points? Try 

for(i in levels(fHCGB$code)){
  with(subset(fHCGB,code==i), 
    plot(pooledPlateIntra, type="b", ylim=ylim, xlab=code, ylab="CV%")
    lines(fHCGB$limitVarC, col="green"))
}

Cheers,

Thierry
------------------------------------------------------------------------
----
ir. Thierry Onkelinx
Instituut voor natuur- en bosonderzoek / Research Institute for Nature
and Forest
Cel biometrie, methodologie en kwaliteitszorg / Section biometrics,
methodology and quality assurance
Gaverstraat 4
9500 Geraardsbergen
Belgium
tel. + 32 54/436 185
Thierry.Onkelinx@inbo.be
www.inbo.be 

Do not put your faith in what statistics say until you have carefully
considered what they do not say.  ~William W. Watt
A statistical analysis, properly conducted, is a delicate dissection of
uncertainties, a surgery of suppositions. ~M.J.Moroney

 

> -----Oorspronkelijk bericht-----
> Van: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] Namens Saanisto, Taija
> Verzonden: dinsdag 5 juni 2007 13:12
> Aan: r-help@stat.math.ethz.ch
> Onderwerp: [R] Lines to plots with a for-loop
> 
> Hello all,
> 
> I'm plotting several graphs with a for-loop with a code:
> 
> par(mfrow=c(3,4))
> 
> for(i in levels(fHCGB$code)) with(subset(fHCGB,code==i), 
> plot(pooledPlateIntra, type="b", ylim=ylim, xlab=code, ylab="CV%"))
> 
> 
> With which I have no problems.. However I need to add lines 
> to all of these 12 plots, but I cannot get it to work. I've 
> tried for example
> 
> par(mfrow=c(3,4))
> 
> for(i in levels(fHCGB$code)) with(subset(fHCGB,code==i), 
> plot(pooledPlateIntra, type="b", ylim=ylim, xlab=code, 
> ylab="CV%") points(fHCGB$limitVarC,type="b", col="green")))
> 
> But run into errors. How can the lines be added?
> 
> Taija Saanisto
> Biostatistician
> Quality assurance, Process Development
> PerkinElmer Life and Analytical Sciences / Wallac Oy
> Phone: +358-2-2678 741
> 
> 
> 
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

ienw/ANbjmce<