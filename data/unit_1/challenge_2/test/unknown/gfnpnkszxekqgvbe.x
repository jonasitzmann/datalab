From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 09:30:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56DUkhB022021
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 09:30:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56DU0Ve001026;
	Wed, 6 Jun 2007 15:30:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.175])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56DQ1Jx031598
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 15:26:01 +0200
Received: by ug-out-1314.google.com with SMTP id 36so409467uga
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 06:26:00 -0700 (PDT)
Received: by 10.67.98.4 with SMTP id a4mr1263326ugm.1181136360839;
	Wed, 06 Jun 2007 06:26:00 -0700 (PDT)
Received: by 10.66.238.13 with HTTP; Wed, 6 Jun 2007 06:26:00 -0700 (PDT)
Message-ID: <644e1f320706060626y36dcf28ar3ec72a731c4aa72e@mail.gmail.com>
Date: Wed, 6 Jun 2007 09:26:00 -0400
From: "jim holtman" <jholtman@gmail.com>
To: tronter <pev340002003@yahoo.com>
In-Reply-To: <10978448.post@talk.nabble.com>
MIME-Version: 1.0
References: <10978448.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] R: x-y data
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

Can you provide an example of your data.  Assuming that you have a .cvs file
and the column names are 'x' and 'y' and you have used 'read.csv', then you
would have:

(something$x + something$y) / 2



On 6/5/07, tronter <pev340002003@yahoo.com> wrote:
>
>
> Hello
>
> I have an Excel file with x-y data. I saved this file as a cvs file. Then
> I
> used the read.table() function to read the data into R. If I have a
> formula
> like (x+y)/2, how would I access x and y in R? I have the table named as
> something. But how do I access the individual columns if I want to plug
> them
> into the formula?
>
> Thanks
> --
> View this message in context:
> http://www.nabble.com/R%3A-x-y-data-tf3874502.html#a10978448
> Sent from the R help mailing list archive at Nabble.com.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

so-t 43cp A