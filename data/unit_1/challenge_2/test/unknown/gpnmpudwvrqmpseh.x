From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 11:26:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52FPxhB024915
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 11:26:00 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52FOZk4025398;
	Sat, 2 Jun 2007 17:24:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l52FNu5k025264
	for <r-help@stat.math.ethz.ch>; Sat, 2 Jun 2007 17:23:56 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id 3882F120D8;
	Sat,  2 Jun 2007 17:23:56 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 8FD9E35C90B; 
	Sat,  2 Jun 2007 17:23:51 +0200 (CEST)
Message-ID: <46618B28.2010709@statistik.uni-dortmund.de>
Date: Sat, 02 Jun 2007 17:22:16 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.2) Gecko/20070222 SeaMonkey/1.1.1
MIME-Version: 1.0
To: Maria Montez <montez@bu.edu>
References: <4660A699.1010304@bu.edu>
In-Reply-To: <4660A699.1010304@bu.edu>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-5.899, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_00 -2.60)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] object not found inside function
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

Maria Montez wrote:
> Hi!
> 
> When running the following code I get the message: Error in eval(expr, 
> envir, enclos) : object "A" not found
> 
> fm <- function(p,ydata, env = parent.frame()) {
> #fit model y ~ (b0+b1x1+...+bpxp)*exp(g2plus*z2plus) where bi and g2plus 
> are parameters
> 
>   #create design matrix for linear part
>   fo00 <- paste("~",paste(paste("x",1:p,sep=""),collapse="+"),sep="")
>   fo0 <- as.formula(fo00)
>   A <- model.matrix(fo0,data=ydata)
> 
>  # create z variable
>   z2plus <- ifelse(totx>1,1,0)
>   ydata <- data.frame(ydata,z2plus)
> 
>  #run model
>   t2 <- nls(y ~ 
> A*exp(g2plus*z2plus),data=ydata,start=c(g2plus=0),alg="plinear")
> }
> model <- fm(4,ydata)
> 
> The code inside the function works if not enclosed in a function. This 
> makes me think that it is a scope problem and I need to specify the 
> environment. Even though I've read about environment and lexical scope I 
> still don't fully understand how it works. Sometimes I can do it others 
> I can't!
> 
> Can someone help me?
> 
> I've included below code to create a dataframe that can be used to test 
> my code.
> 
> Thanks, Maria
>

[data deleted]

Maria,

1. Do you really want to paste() the formula fo0 together that way?
2. For me, the functions fails because totx is not known. Please make 
sure to post *reproducible* code (OK, you almost did).
3. If totx is known, the function works for me, hence I guess you are 
using an outdated version (< 2.5.0) of R. --> Please always specify the 
version of R and the OS you are using.

Uwe

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



02 >Fntz i< r