From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 16:51:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56Kp0hB026121
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 16:51:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56Kn1I0014153;
	Wed, 6 Jun 2007 22:49:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.235])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56KiJbG012700
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 22:44:20 +0200
Received: by nz-out-0506.google.com with SMTP id o37so240852nzf
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 13:44:19 -0700 (PDT)
Received: by 10.142.111.14 with SMTP id j14mr46700wfc.1181162658747;
	Wed, 06 Jun 2007 13:44:18 -0700 (PDT)
Received: by 10.143.7.9 with HTTP; Wed, 6 Jun 2007 13:44:18 -0700 (PDT)
Message-ID: <eb555e660706061344x30961049mcb1eb3772b95f9f5@mail.gmail.com>
Date: Wed, 6 Jun 2007 13:44:18 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Sarah Hawley" <sarah@canaryfoundation.org>
In-Reply-To: <C28C5C9B.7BA%sarah@canaryfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <C28C5C9B.7BA%sarah@canaryfoundation.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Multiple color schemes for barchart (lattice)
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

On 6/6/07, Sarah Hawley <sarah@canaryfoundation.org> wrote:
> Hello R-help.
>
> I am trying to make a stacked barplot where the color of the sections of
> each bar depend on another variable.
>
> > myData[1:11,]
>    score   percent    marker     cellType Malignant
> 1      0 100.00000 ESR1 (ER) Bladder.M(5) TRUE
> 2      0  80.00000      PAX8 Bladder.M(5) TRUE
> 3      1  20.00000      PAX8 Bladder.M(5) TRUE
> 4      0 100.00000 ESR1 (ER)   Brain.N(3) FALSE
> 5      0 100.00000      PAX8   Brain.N(3) FALSE
> 6      3 100.00000 ESR1 (ER) Breast.M(11) TRUE
> 7      0 100.00000      PAX8 Breast.M(11) TRUE
> 8      0  36.36364 ESR1 (ER) Cervix.M(11) TRUE
> 9      1   9.09091 ESR1 (ER) Cervix.M(11) TRUE
> 10     2  18.18182 ESR1 (ER) Cervix.M(11) TRUE
> 11     3  36.36364 ESR1 (ER) Cervix.M(11) TRUE
>
> palette <- palette(gray(seq(0, 1,len=4)))
> trellis.par.set(list(par.xlab.text=list(cex=0.85)
>                    , superpose.polygon=list(col=palette())
>                    , axis.text=list(cex=0.8)))
>
>
> barchart(percent~cellType|marker
>         , groups=score
>         , data=myData
>         , stack=TRUE
>         , xlab='N=Normal/Benign, M=Malignant'
>         , ylab='Percentage of Cores Staining'
>         , color=palette()
>         , auto.key = list(points = FALSE, rectangles = TRUE, space = "top")
>         , scales=list(x=list(rot=70))
>         , layout=c(1,2))
>
> I would like to make the color scheme of the bar differ according to the
> variable 'Malignant' and add a second color scheme to the key.

I may not have understood what you are looking for, but it seems like
you just need

groups = interaction(score, Malignant)

For example,

palette <- palette(gray(seq(0, 1,len=8)))

trellis.par.set(list(par.xlab.text=list(cex=0.85)
                  , superpose.polygon=list(col=palette())
                  , axis.text=list(cex=0.8)))

barchart(percent~cellType|marker
       , groups= interaction(score, Malignant)
       , data=myData
       , stack=TRUE
       , xlab='N=Normal/Benign, M=Malignant'
       , ylab='Percentage of Cores Staining'
       # , color=palette() # not doing anything
       , auto.key = list(points = FALSE, rectangles = TRUE, space =
"top", columns = 2)
       , scales=list(x=list(rot=70))
       , layout=c(1,2))

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

r9O2@