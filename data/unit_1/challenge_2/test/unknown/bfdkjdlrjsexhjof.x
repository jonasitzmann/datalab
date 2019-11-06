From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 05:24:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l589O8hB013472
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 05:24:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l589MXWl021406;
	Fri, 8 Jun 2007 11:23:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.instnat.be (mail.instnat.be [193.190.203.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l589LnJU020647
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 11:21:49 +0200
Received: from inboexch.inbo.be (mail.inbo.be [172.16.203.3])
	by mail.instnat.be (Postfix) with ESMTP id 8A5A63A5CA;
	Fri,  8 Jun 2007 13:23:56 +0200 (CEST)
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 8 Jun 2007 11:22:22 +0200
Message-ID: <2E9C414912813E4EB981326983E0A104030D1EFC@inboexch.inbo.be>
In-Reply-To: <14A2A120D369B6469BB154B2D2DC34D20803CB03@EXCHVS01.ad.sfwmd.gov>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Conditional Sequential Gaussian Simulation
Thread-Index: AcepAd40dUdzCrv1RTeG1DwPX0AXHgArGfeQ
From: "ONKELINX, Thierry" <Thierry.ONKELINX@inbo.be>
To: "Friedman, Steven" <sfriedma@sfwmd.gov>, <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l589LnJU020647
Subject: Re: [R] Conditional Sequential Gaussian Simulation
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

Steve,

You can do this with the package gstat. Look for ?krige of
?predict.gstat

Post further question on this topic on the R-sig-geo list. You'll get
more response.

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
> [mailto:r-help-bounces@stat.math.ethz.ch] Namens Friedman, Steven
> Verzonden: donderdag 7 juni 2007 14:46
> Aan: r-help@stat.math.ethz.ch
> Onderwerp: [R] Conditional Sequential Gaussian Simulation
> 
> Hello, 
> 
>  
> 
> I'm wondering if there are any packages/functions that can 
> perform conditional sequential gaussian simulation.  
> 
>  
> 
> I'm following an article written by Grunwald, Reddy, Prenger 
> and Fisher 2007. Modeling of the spatial variability of 
> biogeochemical soil properties in a freshwater ecosystem. 
> Ecological Modelling 201: 521 - 535, and would like to 
> explore this methodology.
> 
>  
> 
> Thanks
> 
> Steve
> 
>  
> 
>  
> 
> Steve Friedman, PhD
> 
> Everglades Division
> 
> Senior Environmental Scientist, Landscape Ecology
> 
> South Florida Water Management District
> 
> 3301 Gun Club Road
> 
> West Palm Beach, Florida 33406
> 
> email:  sfriedma@sfwmd.gov
> 
> Office:  561 - 682 - 6312
> 
> Fax:      561 - 682 - 5980
> 
>  
> 
> If you are not doing what you truly enjoy its your obligation 
> to yourself to change.
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

                   

 W k- NeFold  i