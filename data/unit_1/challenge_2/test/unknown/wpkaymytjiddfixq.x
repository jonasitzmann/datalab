From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 15:12:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58JCUhB019337
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 15:12:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58JBPDc018604;
	Fri, 8 Jun 2007 21:11:42 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.245])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58IpNcu011134
	for <r-help@r-project.org>; Fri, 8 Jun 2007 20:51:23 +0200
Received: by an-out-0708.google.com with SMTP id b15so192087ana
	for <r-help@r-project.org>; Fri, 08 Jun 2007 11:51:22 -0700 (PDT)
Received: by 10.100.141.13 with SMTP id o13mr1976346and.1181328318331;
	Fri, 08 Jun 2007 11:45:18 -0700 (PDT)
Received: by 10.100.46.6 with HTTP; Fri, 8 Jun 2007 11:45:18 -0700 (PDT)
Message-ID: <eb97335b0706081145l3a5b17fch187ce14ec5618212@mail.gmail.com>
Date: Fri, 8 Jun 2007 11:45:18 -0700
From: "Zack Weinberg" <zackw@panix.com>
To: "Duncan Murdoch" <murdoch@stats.uwo.ca>
In-Reply-To: <4669A239.9050901@stats.uwo.ca>
MIME-Version: 1.0
Content-Disposition: inline
References: <eb97335b0706072201r9ad1ba1s37bc66611d76fb68@mail.gmail.com>
	<Pine.LNX.4.64.0706080657290.22532@gannet.stats.ox.ac.uk>
	<eb97335b0706080833r2febdedej7bbf27d330da3787@mail.gmail.com>
	<4669A239.9050901@stats.uwo.ca>
X-Google-Sender-Auth: 1fc735c576d9aa91
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@r-project.org
Subject: Re: [R] evaluating variables in the context of a data frame
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

On 6/8/07, Duncan Murdoch <murdoch@stats.uwo.ca> wrote:
> > After a bit more experimentation I figured out that this does what I want:
> >
> >> h <- function(x, d) eval(substitute(x), d, parent.frame())
> >
> > but I don't understand why the substitute() helps, or indeed why it
> > has any effect at all...
>
> Within the evaluation frame of h, x is a promise to evaluate an
> expression.  substitute(x) extracts the expression.  If you just use x,
> it gets evaluated in the frame from which h was called, rather than in a
> frame created from d.

Thanks, that's helpful.  Could you comment on substitute() use in the
message I just posted which contains the actual code I'm trying to get
to work?  In addition to the question asked there, after your
explanation I still do not understand why

  g <- ...
  xyplot ( ..., groups=g, ... )

should refuse to find g, and the same thing with groups=substitute(g)
works (well, gets farther before blowing up).

zw

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



 bbLil1rQ	M2