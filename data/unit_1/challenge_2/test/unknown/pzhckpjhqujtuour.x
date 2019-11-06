From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 16:03:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JK3WL9000919
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 16:03:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JK2Zbp006729;
	Tue, 19 Jun 2007 22:02:52 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mm.stthomas.edu (mm.stthomas.edu [140.209.3.222])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JK2LeK006656
	for <r-help@lists.R-project.org>; Tue, 19 Jun 2007 22:02:22 +0200
Received: from ust-gateway4.stthomas.edu (Not Verified[140.209.3.48]) by
	mm.stthomas.edu with MailMarshal (v6, 2, 0, 2977)
	id <B467836460003>; Tue, 19 Jun 2007 15:02:14 -0500
Received: from [140.209.67.60] (140.209.67.60 [140.209.67.60]) by
	ust-gateway4.stthomas.edu with SMTP (Microsoft Exchange
	Internet Mail Service Version 5.5.2653.13)
	id 2HAW6Z83; Tue, 19 Jun 2007 15:01:48 -0500
Message-ID: <46783640.4050609@stthomas.edu>
Date: Tue, 19 Jun 2007 15:02:08 -0500
X-Sybari-Trust: a3d9b42e a326316b 52c55b3b 00000939
From: Jason Q McClintic <jqmcclintic@stthomas.edu>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Enigmail-Version: 0.94.3.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] A question about plots and lists in functions
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

R-helpers:

I tried googling and couldn't find anything.

I have a function I am sourcing into R that does some calculations to
generate a simulated dataset. I currently have a a list set up to store
the outputs from the function and a plot of one of them (a set of
ordered pairs) like this:

foo<-function(x,y,z){
## do some work here ##
list(x=x,y=y,z=z,output1=output1,output2=output2,
     plot=plot(output1[,1],output1[,2],type=p));
}

The problem I am having is that when I do

>work<-foo(x,y,z)
>work

it will show the plot, but I would like to be able to repeatedly call it
like I can call the different plots in an lm without having to display
everything else too (in some cases, output1 could be a 50K by 2 matrix,
rather inconvenient to keep having it display that over and over again
to get a graph).

Thanks in advance,

Jason Q. McClintic
--
Jason Q McClintic
jqmcclintic@stthomas.edu
mccl0219@tc.umn.edu

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

D Ngs�Iessgb