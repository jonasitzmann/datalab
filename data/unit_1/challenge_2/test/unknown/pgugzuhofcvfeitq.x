From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:26:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCJKLb027849
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:26:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MMaqCd014296;
	Sat, 23 Jun 2007 00:37:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from lynne.ethz.ch (lynne [129.132.58.30])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MMaiCe014240
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 23 Jun 2007 00:36:44 +0200
Received: (from maechler@localhost)
	by lynne.ethz.ch (8.13.1/8.13.1/Submit) id l5MMaigp004849;
	Sat, 23 Jun 2007 00:36:44 +0200
From: Martin Maechler <maechler@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <18044.20219.852968.354884@stat.math.ethz.ch>
Date: Sat, 23 Jun 2007 00:36:43 +0200
To: Duncan Murdoch <murdoch@stats.uwo.ca>
In-Reply-To: <467C0F13.4060004@stats.uwo.ca>
References: <op.tub2q6d64hcap5@delllap.ugr.es> <467C0F13.4060004@stats.uwo.ca>
X-Mailer: VM 7.19 under Emacs 22.1.1
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, Jose Quesada <quesada@gmail.com>
Subject: Re: [R] Matrix *package*, CHOLMOD error: problem too large
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Martin Maechler <maechler@stat.math.ethz.ch>
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

[Jose, if you call the Matrix *package* "library" once more, ...
 GRRRRR! ..]
 

>>>>> "DM" == Duncan Murdoch <murdoch@stats.uwo.ca>
>>>>>     on Fri, 22 Jun 2007 14:04:03 -0400 writes:

    DM> On 6/22/2007 1:26 PM, Jose Quesada wrote:
    >> I have a pretty large sparse matrix of integers:
    >>> dim(tasa)
    >> [1] 91650 37651
    >> 
    >> I need to add one to it in order to take logs, but I'm
    >> getting the following error:
    >> 
    >>> tasa = log(tasa + 1)
    >> CHOLMOD error: problem too large Error in
    >> asMethod(object) : Cholmod error `problem too large'
    >> 
    >> I have 2 Gb of RAM, and the current workspace is barely
    >> 300mb.  Is there any workaround to this? Anyone has any
    >> experience with this error?
    >> 

    DM> If tasa is sparse, then tasa+1 will not be sparse, so
    DM> that's likely your problem.

[of course]

    DM> You might have better luck with

    DM> log1p(tasa)

{very good point, thank you, Duncan!}

    DM> if the authors of the Matrix package have written a
    DM> method for log1p(); if not, you'll probably have to do
    DM> it yourself.

They have not yet.

Note however that this - and expm1() - would automagically work
for sparse matrices if these two functions were part of the
"Math" S4 group generic.

I'd say that there's only historical reason for them *not* to be
part of "Math", and I am likely going to propose to change this
....

Martin Maechler

    DM> Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

 iS os