From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 15:08:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63J8fL9032662
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 15:08:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63J7vMW029230;
	Tue, 3 Jul 2007 21:08:07 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from web32813.mail.mud.yahoo.com (web32813.mail.mud.yahoo.com
	[68.142.206.43])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l63J7kxn029152
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 21:07:47 +0200
Received: (qmail 88632 invoked by uid 60001); 3 Jul 2007 19:07:46 -0000
X-YMail-OSG: Np_9BbMVM1mPPup.a8tShBGantb0_PYSN0LaJPp2xzUblm1b3f_BcUET.E6W_xAksQ--
Received: from [130.15.106.174] by web32813.mail.mud.yahoo.com via HTTP;
	Tue, 03 Jul 2007 15:07:46 EDT
Date: Tue, 3 Jul 2007 15:07:46 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: "Aydemir, Zava \(FID\)" <Zava.Aydemir@morganstanley.com>,
   r-help@stat.math.ethz.ch
In-Reply-To: <755261CA22782948B1C42ACDC83912A1046140A2@NYWEXMB27.msad.ms.com>
MIME-Version: 1.0
Message-ID: <77414.85106.qm@web32813.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] vertically concatenating data frames
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

?rbind


--- "Aydemir, Zava (FID)"
<Zava.Aydemir@morganstanley.com> wrote:

> Hi,
>  
> what is the recommended way to vertically
> concatenate 2 data frames with
> the same column names but different number of rows?
>  
> My problem is something along these lines:
>  
> df1 <- data.frame(var1=var1,var2=var2,var3=var3)  #
> nrow(df1)=1000
> df2 <- data.frame(var1=var4,var2=var5,var3=var6)  #
> nrow(df2)=2000
>  
> I tried df <- c(df1,df2), no success. stack does not
> seem to be
> appropriate either for my problem.
>  
>  
> Thanks
>  
> Zava
>
--------------------------------------------------------
> 
> This is not an offer (or solicitation of an offer)
> to buy/se...{{dropped}}
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained,
> reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

ul/a4P =