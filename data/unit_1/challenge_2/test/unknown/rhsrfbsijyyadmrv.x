From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 09:07:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ED7ZL9021896
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:07:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ED6uSn024086;
	Thu, 14 Jun 2007 15:07:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from canne.stat.unibo.it (canne.stat.unibo.it [137.204.95.200])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECxg1L021998
	for <r-help@hypatia.math.ethz.ch>; Thu, 14 Jun 2007 14:59:42 +0200
Received: from magenta.stat.unibo.it (magenta.stat.unibo.it [137.204.95.205])
	by canne.stat.unibo.it (8.13.1/8.13.1) with ESMTP id l5ECplDt028844
	for <r-help@hypatia.math.ethz.ch>; Thu, 14 Jun 2007 14:51:47 +0200
Received: by magenta.stat.unibo.it (Postfix, from userid 65534)
	id A034A56E65; Thu, 14 Jun 2007 14:59:41 +0200 (CEST)
Received: from gewurztraminer.unibo.it (unknown [137.204.109.198])
	by magenta.stat.unibo.it (Postfix) with ESMTP id 7823C56E57
	for <r-help@lists.R-project.org>; Thu, 14 Jun 2007 14:59:40 +0200 (CEST)
Message-Id: <6.0.1.1.2.20070614145327.036158e0@mail.unibo.it>
X-Sender: cinzia.viroli@unibo.it@mail.unibo.it
X-Mailer: QUALCOMM Windows Eudora Version 6.0.1.1
Date: Thu, 14 Jun 2007 14:59:38 +0200
To: r-help@stat.math.ethz.ch
From: Cinzia Viroli <cinzia.viroli@unibo.it>
In-Reply-To: <Pine.LNX.4.64.0706141254500.15750@gannet.stats.ox.ac.uk>
References: <6.0.1.1.2.20070614133116.03601008@mail.unibo.it>
	<Pine.LNX.4.64.0706141254500.15750@gannet.stats.ox.ac.uk>
Mime-Version: 1.0
X-Antivirus: avast! (VPS 000740-0, 05/13/2007), Outbound message
X-Antivirus-Status: Clean
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] building packages under windows
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


Thank you for your suggestion. I tried WITH different packages and also I 
tried to INSTALL the package OC from CRAN and I got the message

installing to 'c:PROGRA~1/r/R-25~1.0/library'

*** Installation of oc failed ***

Removing 'c:/PROGRA~1/r/R-25~1.0/library/oc'

my path for R is 'c:/program files/R/R-2.5.0'

Is space allowed?

Thanks
Cinzia

At 13.56 14/06/2007, you wrote:
>If you try
>
>Rcmd INSTALL mypackage
>
>you will get the error messages on the terminal.  I've never not seen them 
>in the mypackage.Rcheck/00install.out file, but then I used the correct name.
>
>On Thu, 14 Jun 2007, Cinzia Viroli wrote:
>
>>
>>I tried to check or build a package under windows xp but I got the error
>>
>>the package can not be installed
>>
>>(without any details in the install.out file)
>>
>>I work with R-2.5.0, Miktex 2.5.0, and I have installed the unix tools.zip,
>>Perl and Microsoft HTML Workshop.
>>The path environment is ok.
>>
>>Have someone else encountered the same problem?
>>
>>Thank you,
>>Cinzia
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>------------------------------------------------------------------------------------------------------------------------------------------------
>>Cinzia Viroli
>>Dipartimento di Scienze Statistiche "Paolo Fortunati"
>>Via delle Belle Arti 41
>>40126 Bologna
>>Italy
>>Ph.  +39 051 2098250
>>Fax  +39 051 232153
>>
>>home: www2.stat.unibo.it/viroli
>>------------------------------------------------------------------------------------------------------------------------------------------------
>>
>>         [[alternative HTML version deleted]]
>>
>>______________________________________________
>>R-help@stat.math.ethz.ch mailing list
>>https://stat.ethz.ch/mailman/listinfo/r-help
>>PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>>and provide commented, minimal, self-contained, reproducible code.
>
>--
>Brian D. Ripley,                  ripley@stats.ox.ac.uk
>Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
>University of Oxford,             Tel:  +44 1865 272861 (self)
>1 South Parks Road,                     +44 1865 272866 (PA)
>Oxford OX1 3TG, UK                Fax:  +44 1865 272595


------------------------------------------------------------------------------------------------------------------------------------------------
Cinzia Viroli
Dipartimento di Scienze Statistiche "Paolo Fortunati"
Via delle Belle Arti 41
40126 Bologna
Italy
Ph.  +39 051 2098250
Fax  +39 051 232153

home: www2.stat.unibo.it/viroli
------------------------------------------------------------------------------------------------------------------------------------------------

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

vnvd0ewC9e