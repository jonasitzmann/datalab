From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 08:15:16 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53CFEhB015412
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 08:15:15 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53CDgIb014662;
	Sun, 3 Jun 2007 14:14:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fork8.mail.virginia.edu (fork8.mail.Virginia.EDU
	[128.143.2.178])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53CDYju014627
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 14:13:35 +0200
Received: from localhost (localhost [127.0.0.1])
	by fork8.mail.virginia.edu (Postfix) with ESMTP id 42C971F5164;
	Sun,  3 Jun 2007 08:13:34 -0400 (EDT)
Received: from fork8.mail.virginia.edu ([127.0.0.1])
	by localhost (fork8.mail.virginia.edu [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 24807-08; Sun,  3 Jun 2007 08:13:34 -0400 (EDT)
Received: from [10.10.10.100] (vpn-user-1-10.itc.Virginia.EDU [128.143.1.10])
	by fork8.mail.virginia.edu (Postfix) with ESMTP id 96D6B1F5152;
	Sun,  3 Jun 2007 08:13:33 -0400 (EDT)
In-Reply-To: <loom.20070601T120538-203@post.gmane.org>
References: <004001c7a39d$d03585b0$2101a8c0@HP26282134612>
	<loom.20070601T120538-203@post.gmane.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Message-Id: <F4BE04D4-061E-44DB-A1D7-111D63C116A1@virginia.edu>
From: Michael Kubovy <kubovy@virginia.edu>
Date: Sun, 3 Jun 2007 08:13:24 -0400
To: Dieter Menne <dieter.menne@menne-biomed.de>
X-Mailer: Apple Mail (2.752.3)
X-UVA-Virus-Scanned: by amavisd-new at fork8.mail.virginia.edu
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l53CDYju014627
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Standard errors of the predicted values from a lme
	(or	lmer)-object
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l53CFEhB015412

On Jun 1, 2007, at 6:08 AM, Dieter Menne wrote:

> Fr�nzi Korner <fraenzi.korner <at> oikostat.ch> writes:
>
>> how do I obtain standard errors of the predicted values from a lme  
>> (or
>> lmer)-object?
>
> Not totally clear what you mean. intervals(lmeresult) gives the  
> confidence
> intervals for the coefficients. Otherwise, you can do some  
> calculations with
> residuals(lmeresult). Most useful for diagnostic purposes is plot 
> (lmeresult).

Perhaps
?estimable
in the gmodels package
_____________________________
Professor Michael Kubovy
University of Virginia
Department of Psychology
USPS:     P.O.Box 400400    Charlottesville, VA 22904-4400
Parcels:    Room 102        Gilmer Hall
         McCormick Road    Charlottesville, VA 22903
Office:    B011    +1-434-982-4729
Lab:        B019    +1-434-982-4751
Fax:        +1-434-982-4766
WWW:    http://www.people.virginia.edu/~mk9y/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

twTtk0�meur