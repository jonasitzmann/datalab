From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 07:17:21 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EBHKL9020618
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 07:17:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EBGYGW016471;
	Thu, 14 Jun 2007 13:16:48 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32810.mail.mud.yahoo.com (web32810.mail.mud.yahoo.com
	[68.142.206.40])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5EBGQFI016433
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 13:16:26 +0200
Received: (qmail 35234 invoked by uid 60001); 14 Jun 2007 11:16:25 -0000
X-YMail-OSG: fHxIJ2IVM1kNSnnueg_755ILvyV8K4A65zv1o4OL6HhAPiOtY3Z9IQe8EgkAkX5phrg5tcocLlMskWHS.qnnUqDTSO6PO1_GqMuQVAlK6w7hfXIGtzo-
Received: from [130.15.106.174] by web32810.mail.mud.yahoo.com via HTTP;
	Thu, 14 Jun 2007 07:16:25 EDT
Date: Thu, 14 Jun 2007 07:16:25 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Diego Gruber <diego.gruber@gmail.com>, r-help@stat.math.ethz.ch
In-Reply-To: <f1372edc0706140353m4342ede2of70bb6b72a70994a@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <854721.34703.qm@web32810.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] function with xyplot
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

You need to reference the data.frame or append it.  

myplot(DF$X) should work
or 
append(DF)
myplot(X)
--- Diego Gruber <diego.gruber@gmail.com> wrote:

> Hi,
> 
> I'm a new user trying to switch from SAS, so sorry
> for the beginner's
> question: Suppose I have a dataframe DF that
> contains variables X,Y,Z. I am
> trying to write a function like this:
> 
> myplot <- function(varname){xyplot(varname ~ Y,
> group = Z, data = DF)}.
> 
> The problem is then how to enter X into my function.
> If I write myplot("X")
> I get an error because the argument is a string and
> xyplot can make nothing
> out of it. If I write myplot(X) I also get an error
> that tells me the object
> X does not exist.
> 
> Thanks for your help,
> 
> Diego
> 
> 	[[alternative HTML version deleted]]
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

            

eolnB/l	