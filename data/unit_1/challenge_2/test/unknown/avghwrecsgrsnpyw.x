From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 12:38:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65Gc1L9028632
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 12:38:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GZELT000470;
	Thu, 5 Jul 2007 18:35:49 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.174])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65GUI9e030809
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:30:19 +0200
Received: by ug-out-1314.google.com with SMTP id m3so485188uge
	for <r-help@stat.math.ethz.ch>; Thu, 05 Jul 2007 09:30:18 -0700 (PDT)
Received: by 10.67.96.1 with SMTP id y1mr2059498ugl.1183653017867;
	Thu, 05 Jul 2007 09:30:17 -0700 (PDT)
Received: by 10.66.234.6 with HTTP; Thu, 5 Jul 2007 09:30:17 -0700 (PDT)
Message-ID: <644e1f320707050930m505b353cxb5e7be2a83e6b8d5@mail.gmail.com>
Date: Thu, 5 Jul 2007 12:30:17 -0400
From: "jim holtman" <jholtman@gmail.com>
To: livia <yn19832@msn.com>
In-Reply-To: <11446873.post@talk.nabble.com>
MIME-Version: 1.0
References: <11443955.post@talk.nabble.com>
	<522166.61148.qm@web39712.mail.mud.yahoo.com>
	<11445807.post@talk.nabble.com>
	<644e1f320707050611y762ac236u354b3be736985db4@mail.gmail.com>
	<11446873.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Loop and function
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

Please show use the statements that you used.  Did you put the 'str' inside
the loop?  It is hard to tell what is happening without reproducible code.

On 7/5/07, livia <yn19832@msn.com> wrote:
>
>
> I tried str(gpdlow(var[,i][var[,i]<(p[,i][[2]])) and it returns num [1:49]
> -1.92 -1.69 -2.20 -1.65 -2.13 ...
> It is the number when i=1, I guess it does not loop. In fact, the number
> should be different when loop between i.
>
>
> jim holtman wrote:
> >
> > What does
> >
> > gpdlow(var[,i][var[,i]<(p[,i][[2]])
> >
> > return?  Is it a vector; if so, how long?  Your declaration of
> >
> >> returnlow<- matrix(,12)
> >>
> >> str(returnlow)
> >  logi [1:12, 1] NA NA NA NA NA NA ...
> >>
> >
> > is a matrix of 12 rows and one column.  You may be getting the error
> > message
> > is gpdlow is returning a vector longer than one.  Do
> >
> > str(gpdlow(var[,i][var[,i]<(p[,i][[2]]))
> >
> > so that we can see what the data looks like.  You still haven't provided
> a
> > self-contained example, so we can only guess at what is happening.
> >
> >
> >
> > On 7/5/07, livia <yn19832@msn.com> wrote:
> >>
> >>
> >> Thanks a lot. I have corrected this. But it still does not work. Any
> >> thought?
> >>
> >> Stephen Tucker wrote:
> >> >
> >> > You do not have matching parentheses in this line
> >> >    returnlow <- gpdlow(var[,i][var[,i]<(p[,i][[2]])
> >> > most likely there is a syntax error that halts the execution of the
> >> > assignment statement?
> >> >
> >> >
> >> >
> >> > --- livia <yn19832@msn.com> wrote:
> >> >
> >> >>
> >> >> Hi All, I am trying to make a loop for a function and I am using the
> >> >> following codes. "p" and "var" are some matrix obtained before. I
> >> would
> >> >> like
> >> >> to apply the function  "gpdlow" for i in 1:12 and get the
> "returnlow"
> >> for
> >> >> i
> >> >> in 1:12. But when I ask for "returnlow" there are warnings and it
> >> turns
> >> >> out
> >> >> some strange result.
> >> >>
> >> >> for (i in 1:12){
> >> >> gpdlow <- function(u){
> >> >> p[,i]$beta -u*p[,i][[2]]
> >> >> }
> >> >> returnlow <- gpdlow(var[,i][var[,i]<(p[,i][[2]])
> >> >> }
> >> >>
> >> >>
> >> >> --
> >> >> View this message in context:
> >> >> http://www.nabble.com/Loop-and-function-tf4028854.html#a11443955
> >> >> Sent from the R help mailing list archive at Nabble.com.
> >> >>
> >> >> ______________________________________________
> >> >> R-help@stat.math.ethz.ch mailing list
> >> >> https://stat.ethz.ch/mailman/listinfo/r-help
> >> >> PLEASE do read the posting guide
> >> >> http://www.R-project.org/posting-guide.html
> >> >> and provide commented, minimal, self-contained, reproducible code.
> >> >>
> >> >
> >> > ______________________________________________
> >> > R-help@stat.math.ethz.ch mailing list
> >> > https://stat.ethz.ch/mailman/listinfo/r-help
> >> > PLEASE do read the posting guide
> >> > http://www.R-project.org/posting-guide.html
> >> > and provide commented, minimal, self-contained, reproducible code.
> >> >
> >> >
> >>
> >> --
> >> View this message in context:
> >>
> http://www.nabble.com/Return-valus-for-different-numbr-of-rows-tf4028854.html#a11445807
> >> Sent from the R help mailing list archive at Nabble.com.
> >>
> >> ______________________________________________
> >> R-help@stat.math.ethz.ch mailing list
> >> https://stat.ethz.ch/mailman/listinfo/r-help
> >> PLEASE do read the posting guide
> >> http://www.R-project.org/posting-guide.html
> >> and provide commented, minimal, self-contained, reproducible code.
> >>
> >
> >
> >
> > --
> > Jim Holtman
> > Cincinnati, OH
> > +1 513 646 9390
> >
> > What is the problem you are trying to solve?
> >
> >       [[alternative HTML version deleted]]
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
> >
>
> --
> View this message in context:
> http://www.nabble.com/Return-valus-for-different-numbr-of-rows-tf4028854.html#a11446873
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

               

 s 
fpgjtg{p0