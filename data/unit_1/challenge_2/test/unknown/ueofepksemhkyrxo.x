From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 11:47:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57FlRhB004024
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 11:47:27 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57FkhQc019112;
	Thu, 7 Jun 2007 17:46:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from nx5.hrz.uni-dortmund.de (nx5.HRZ.Uni-Dortmund.DE
	[129.217.131.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57FbRTl015789
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 17:37:27 +0200
Received: from mail.statistik.uni-dortmund.de (mail.Statistik.Uni-Dortmund.DE
	[129.217.206.4])
	by nx5.hrz.uni-dortmund.de (Postfix) with ESMTP id BA6F41209E;
	Thu,  7 Jun 2007 17:37:26 +0200 (MET DST)
Received: from [129.217.207.201] (ligges2.fb05.statistik.uni-dortmund.de
	[129.217.207.201])
	by mail.statistik.uni-dortmund.de (Postfix) with ESMTP id 10D1C35C950; 
	Thu,  7 Jun 2007 17:37:21 +0200 (CEST)
Message-ID: <4668263A.9060605@statistik.uni-dortmund.de>
Date: Thu, 07 Jun 2007 17:37:30 +0200
From: Uwe Ligges <ligges@statistik.uni-dortmund.de>
Organization: Fachbereich Statistik, =?ISO-8859-1?Q?Universit=E4t_Dortm?=
	=?ISO-8859-1?Q?und?=
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.8.1.4) Gecko/20070509 SeaMonkey/1.1.2
MIME-Version: 1.0
To: ramakanth reddy <ramakanth_99@yahoo.co.in>
References: <969416.41943.qm@web7605.mail.in.yahoo.com>
In-Reply-To: <969416.41943.qm@web7605.mail.in.yahoo.com>
X-FB05-MailScanner: clean
X-FB05-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (Wertung=-5.899, benoetigt 4.5, autolearn=disabled,
	ALL_TRUSTED -3.30, BAYES_00 -2.60)
X-FB05-MailScanner-From: ligges@statistik.uni-dortmund.de
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Rob Tibshirani <tibs@stanford.edu>, r-help@stat.math.ethz.ch
Subject: Re: [R] problem with Axis labels
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



ramakanth reddy wrote:
> Hi
> 
> I am using the pamr.plotsurvival fucntion to plot the KM curves,how can I change the x axis and y axis labels according to my interest.

If we are talking about the most recent version of package pamr (you 
forgot to tell us these details):

In R, type

pamr.plotsurvival

and see that this function is rather a proof of concept than a well 
designed function for general use. You might want to extend the function 
by allowing xlab / ylab and other arguments. Additionally, you might 
want to remove a couple of hard coded values in order to make the 
function more generally usable. I am pretty sure the authors/maintainer 
(CCing the maintainer) of pamr will be happy about your contributions, 
if you submit well designed improvements.

Best regards,
Uwe Ligges



> Thanks
> 
> 
> 
> 
>       Looking for people who are YOUR TYPE? Find them at in.groups.yahoo.com
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

_euA0Li  AdS