From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 15:48:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RJmJL9031513
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 15:48:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RJkMOB018502;
	Wed, 27 Jun 2007 21:46:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailer.gwdg.de (mailer.gwdg.de [134.76.10.26])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RJZlHd014824
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 21:35:48 +0200
Received: from s4.ifi.informatik.uni-goettingen.de ([134.76.81.226]
	helo=smtp.ifi.informatik.uni-goettingen.de)
	by mailer.gwdg.de with esmtp (Exim 4.66)
	(envelope-from <katharina.surovcik@cs.uni-goettingen.de>)
	id 1I3dIe-0000Fl-Tn; Wed, 27 Jun 2007 21:35:37 +0200
Received: from [192.168.3.26] (p54848E81.dip0.t-ipconnect.de [84.132.142.129])
	by smtp.ifi.informatik.uni-goettingen.de (Postfix) with ESMTP;
	Wed, 27 Jun 2007 21:35:36 +0200 (CEST)
Message-ID: <4682BBEA.6010501@cs.uni-goettingen.de>
Date: Wed, 27 Jun 2007 21:35:06 +0200
From: Katharina Surovcik <katharina.surovcik@cs.uni-goettingen.de>
User-Agent: IceDove 1.5.0.12 (X11/20070607)
MIME-Version: 1.0
To: Wayne Aldo Gavioli <wgavioli@fas.harvard.edu>
References: <1182972341.4682b9b55c2c2@webmail.fas.harvard.edu>
In-Reply-To: <1182972341.4682b9b55c2c2@webmail.fas.harvard.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Condensed PCA Results
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

if x is your matrix, then
prcomp(x)$rotation
gets you what you want

Katharina

Wayne Aldo Gavioli schrieb:
> Hello all,
>
>
> I'm currently using R to do PCA Analysis, and was wondering if anyone knew the
> specific R Code that could limit the output of the PCA Analysis so that you
> only get the Principal Component features as your output and none of the
> extraneous words or numbers that you don't want.
>
> If that was unclear, let me use linear regression as an example:
>
> "lm(y~x)" is the normal command for linear regression, but it produces other
> text and string aside from the regression coefficients.
>
> "lm(y~x)$coefficients" gives you just the regression coefficients when you carry
> out the command.
>
>
> When I carry out PCA on R, typically I get:
>
>
> Standard deviations:
> [1] 83.732400 14.212402  6.489426  2.4827900
>
> Rotation:
>                 PC1         PC2         PC3         PC4
> Murder   0.04170432 -0.04482166  0.07989066 -0.99492173
> Assault  0.99522128 -0.05876003 -0.06756974  0.03893830
> UrbanPop 0.04633575  0.97685748 -0.20054629 -0.05816914
> Rape     0.07515550  0.20071807  0.97408059  0.07232502
>
>
> I want to get only:
>
>                 PC1         PC2         PC3         PC4
> Murder   0.04170432 -0.04482166  0.07989066 -0.99492173
> Assault  0.99522128 -0.05876003 -0.06756974  0.03893830
> UrbanPop 0.04633575  0.97685748 -0.20054629 -0.05816914
> Rape     0.07515550  0.20071807  0.97408059  0.07232502
>
>
> I want to be able to do this because I am actually carrying out PCA in RExcel. 
> I am able to do the PCA analysis using the "prcomp(data)" and "GetArray"
> commands, but doing that puts all of the aforementinoed output in a single row
> of cells instead of assigning each word and number its own individual cell.
>
> I figured this dealt more with R code than Excel, so I decided to post it here.
>
> Can anyone help me out?  Is there a command that can carry out what I've
> mentioned?
>
>
> Wayne
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

e= Y.ka&o