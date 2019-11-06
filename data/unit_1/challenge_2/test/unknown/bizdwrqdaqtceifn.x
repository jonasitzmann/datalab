From r-help-bounces@stat.math.ethz.ch  Sat Jun 30 10:26:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UEQ0L9008011
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 10:26:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5UEPDVi031938;
	Sat, 30 Jun 2007 16:25:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from hu-out-0506.google.com (hu-out-0506.google.com [72.14.214.238])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5UE3lQf024265
	for <r-help@stat.math.ethz.ch>; Sat, 30 Jun 2007 16:03:48 +0200
Received: by hu-out-0506.google.com with SMTP id 23so672711huc
	for <r-help@stat.math.ethz.ch>; Sat, 30 Jun 2007 07:03:47 -0700 (PDT)
Received: by 10.82.112.3 with SMTP id k3mr8661095buc.1183212224440;
	Sat, 30 Jun 2007 07:03:44 -0700 (PDT)
Received: by 10.82.139.8 with HTTP; Sat, 30 Jun 2007 07:03:44 -0700 (PDT)
Message-ID: <a211af3b0706300703g71198f82t52aac1ba6e764fe6@mail.gmail.com>
Date: Sat, 30 Jun 2007 16:03:44 +0200
From: "stefan lhachimi" <stefan.duke@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <644e1f320706300649o5dab4fa0g471be1e05ae16a59@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <8B08A3A1EA7AAC41BE24C750338754E60215DAF7@HERMES.demogr.mpg.de>
	<644e1f320706300649o5dab4fa0g471be1e05ae16a59@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Importing an Excel file that has merged cells
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: skl8@duke.edu
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

Hi Jim,
it looks perfect!
Thanx a lot!
Have a nice weekend,
Stefan


On 6/30/07, jim holtman <jholtman@gmail.com> wrote:
> I think this does what you want using the 'na.locf' function is zoo:
>
> x <- read.csv('/tote.csv', header=FALSE, skip=4)
> # fill blanks in name column with NAs
> is.na(x$V2) <- x$V2 == ""
> # load the 'zoo' library for the function na.locf
> require(zoo)
> x$V1 <- na.locf(x$V1)  # key
> x$V2 <- na.locf(x$V2)  # name
> head(x,30)
>
>
>
> On 6/30/07, Lhachimi, Stefan <Lhachimi@demogr.mpg.de> wrote:
> >
> > Dear all,
> >
> > I have a problem with importing an excel file into R. I can open the
> > file easily (either saving it as a CSV or using RODBC). But the
> > original file is using merged cell in its first column, which gives
> > the name of the observation. (I am dealing with repeated measurements
> > for the same observation)
> > So when I open the dataframe in R it looks like this
> >
> > Col1    Col2 Col3
> > name1 val1 val2
> >      val3 val4
> > ....
> > name2  val5  val6
> >       val7  val8
> >
> > Everything is fine, except that the name of the observation is on the
> > first line and the following rows are empty. Until a new observation
> > starts, where a new name appears in the respective row and the
> > following rows are empty and so on.
> >
> > The number of rows is fixed for each observation. How can I fill the
> > column with the proper name (eg take the first string in this column
> > until you hit a row with a new string, then take this string and go on
> > until the next string).
> >
> > Or read the excel file in such a way, that when cells are merged that
> > when importing it to R all cells created from this merged cell should
> > have the same content.
> >
> > Unfortunately, I cannot change the lay-out of the original excel file
> > as it comes from an commercial data-base and I will have to use it
> > quite often.
> >
> > I have the gut feeling that there might be an easy solution out there
> > as it does not seem to be an uncommon problem.
> >
> > So if you have  hint or a solution I greatly appreciated it.
> > Thanks and a nice weekend,
> >
> > Stefan
> >
> >
> > ----------
> > This mail has been sent through the MPI for Demographic Rese...{{dropped}}
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
>
>
> --
> Jim Holtman
> Cincinnati, OH
> +1 513 646 9390
>
> What is the problem you are trying to solve?
>
>         [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          


bype.Hei iUn-