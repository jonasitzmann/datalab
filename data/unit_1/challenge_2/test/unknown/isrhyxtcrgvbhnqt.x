From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 07:32:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BBWCL9013422
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 07:32:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BBVWEk023725;
	Mon, 11 Jun 2007 13:31:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.173])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BBVM3i023682
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 13:31:22 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1345742uga
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 04:31:21 -0700 (PDT)
Received: by 10.67.32.19 with SMTP id k19mr5064941ugj.1181561481856;
	Mon, 11 Jun 2007 04:31:21 -0700 (PDT)
Received: by 10.66.221.12 with HTTP; Mon, 11 Jun 2007 04:31:21 -0700 (PDT)
Message-ID: <644e1f320706110431k51d69340k84b3c7d454e3d2c8@mail.gmail.com>
Date: Mon, 11 Jun 2007 07:31:21 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "BXC (Bendix Carstensen)" <bxc@steno.dk>
In-Reply-To: <40D3930AC1C8EA469E39536E5BC80835044EB390@EXDKBA021.corp.novocorp.net>
MIME-Version: 1.0
References: <40D3930AC1C8EA469E39536E5BC80835044EB390@EXDKBA021.corp.novocorp.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Rounding?
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

your number 6.6500000000000001 is to large to fit in a floating point
number.  It takes 56 bits and there are only 54 in a real number so the
system see it as 6.65 and does the rounding to an even digit; 6.6

6.650000000000001 does fit into a real number (takes 54 bits) and this will
now round to 6.7


On 6/11/07, BXC (Bendix Carstensen) <bxc@steno.dk> wrote:
>
> I was a bit puzzed by:
>
> > formatC(6.65,format="f",digits=1)
> [1] "6.6"
>
> So I experimented and found:
>
> > formatC(6.6500000000000001,format="f",digits=1)
> [1] "6.6"
> > formatC(6.650000000000001,format="f",digits=1)
> [1] "6.7"
> >   round(6.6500000000000001,1)
> [1] 6.7
> >   round(6.650000000000001,1)
> [1] 6.7
> > version
>               _
> platform       i386-pc-mingw32
> arch           i386
> os             mingw32
> system         i386, mingw32
> status
> major          2
> minor          5.0
> year           2007
> month          04
> day            23
> svn rev        41293
> language       R
> version.string R version 2.5.0 (2007-04-23)
>
> My machine runs Windows NT.
>
> Is this intended or just a Windows facility?
> ______________________________________________
>
> Bendix Carstensen
> Senior Statistician
>
> Steno Diabetes Center
> Niels Steensens Vej 2-4
> DK-2820 Gentofte
> Denmark
> +45 44 43 87 38 (direct)
> +45 30 75 87 38 (mobile)
> +45 44 43 73 13 (fax)
> bxc@steno.dk   http://www.biostat.ku.dk/~bxc
>
> This e-mail (including any attachments) is intended for the ...{{dropped}}
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

                

n. nD X�
ee5K 