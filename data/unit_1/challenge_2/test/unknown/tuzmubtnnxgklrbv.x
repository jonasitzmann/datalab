From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 12:10:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54GAvhB030056
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 12:10:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54DagV4022836;
	Mon, 4 Jun 2007 15:36:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.235])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54DY9Wb021303
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 15:34:10 +0200
Received: by nz-out-0506.google.com with SMTP id o37so852888nzf
	for <r-help@stat.math.ethz.ch>; Mon, 04 Jun 2007 06:34:09 -0700 (PDT)
Received: by 10.114.94.1 with SMTP id r1mr4845155wab.1180964044018;
	Mon, 04 Jun 2007 06:34:04 -0700 (PDT)
Received: by 10.115.73.15 with HTTP; Mon, 4 Jun 2007 06:34:03 -0700 (PDT)
Message-ID: <5dff5a0d0706040634h5549495dq414c6fcce665a590@mail.gmail.com>
Date: Mon, 4 Jun 2007 09:34:03 -0400
From: "Andrew Yee" <andrewjyee@gmail.com>
To: "Peter Dalgaard" <P.Dalgaard@biostat.ku.dk>
In-Reply-To: <4663CDF1.5070409@biostat.ku.dk>
MIME-Version: 1.0
References: <5dff5a0d0706031448t5e60448en5aa028b42c65a4a9@mail.gmail.com>
	<4663B3EF.4050601@karlin.mff.cuni.cz> <4663CDF1.5070409@biostat.ku.dk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] getting t.test to work with apply()
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
Content-Type: multipart/mixed; boundary="===============0264611880=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0264611880==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 2740

Thanks for everyone's suggestions.

I did try

 results <-apply(raw.sample,1,function(x) t.test(x[,alive],x[,dead]))

However, I get:

"Error in x[, alive] : incorrect number of dimensions"

Full disclosure, raw.sample is a data.frame, and I am using alive and dead
as indexing vectors.

On the other hand, the lapply suggestion works better.

results <- lapply(1:nrow(raw.sample), function(i) t.test(raw.sample
[i,alive],raw.sample[i,dead]))

Thanks,
Andrew


 On 6/4/07, Peter Dalgaard <P.Dalgaard@biostat.ku.dk> wrote:

> Petr Klasterecky wrote:
> > Andrew Yee napsal(a):
> >
> >> Hi, I'm interested in using apply() with t.test() on a data.frame.
> >>
> >> Specifically, I'd like to use apply() to do the following:
> >>
> >>  t.test(raw.sample[1,alive],raw.sample[1,dead])
> >> t.test(raw.sample[2,alive],raw.sample[2,dead])
> >>  t.test(raw.sample[3,alive],raw.sample[3,dead])
> >> etc.
> >>
> >> I tried the following,
> >>
> >> apply(raw.sample,1,function(x) t.test(raw.sample[,alive],raw.sample
> [,dead]))
> >>
> >
> > Two comments:
> > 1) apply() works on arrays. If your dataframe only has numeric values,
> > turn it (or its copy) to a matrix via as.matrix(). If it has mixed
> > variables, take only the numeric part for t-tests. The conversion is
> > made implicitly but explicit asking for it cannot hurt.
> > 2) the main problem - you are using a wrong argument to t.test
> >
> > The call should look like
> > apply(as.matrix(raw.sample), 1, function(x){t.test(x[alive], x[dead])})
> >
> > assuming 'alive' and 'dead' are logical vectors of the same length as
> 'x'.
> >
> > Petr
> >
> Notice also that the other apply-style functions may give an easier
> route to the goal:
>
> lapply(1:N, function(i) t.test(raw.sample[i,alive],raw.sample[i,dead]))
>
> or (maybe, depends on raw.sample being a data frame and alive/dead being
> indexing vectors)
>
> mapply(t.test, raw.sample[,alive], raw.sample[,dead])
>
> >
> >> but it gives me a list of identical results.
> >>
> >>
> >> Thanks,
> >> Andrew
> >>
> >>      [[alternative HTML version deleted]]
> >>
> >> ______________________________________________
> >> R-help@stat.math.ethz.ch mailing list
> >> https://stat.ethz.ch/mailman/listinfo/r-help
> >> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> >> and provide commented, minimal, self-contained, reproducible code.
> >>
> >>
> >
> >
>
>
> --
>   O__  ---- Peter Dalgaard             =D8ster Farimagsgade 5, Entr.B
> c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K
> (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45)
> 35327918
> ~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45)
> 35327907
>
>

	[[alternative HTML version deleted]]


--===============0264611880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0264611880==--

             

hf"a8_mlD 