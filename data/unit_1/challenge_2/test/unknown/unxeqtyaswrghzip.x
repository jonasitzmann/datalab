From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 15:12:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62JCAL9017886
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 15:12:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62JBP1O018260;
	Mon, 2 Jul 2007 21:11:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE, WEIRD_PORT autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.239])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62JB26U017989
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 21:11:02 +0200
Received: by nz-out-0506.google.com with SMTP id z31so1066345nzd
	for <r-help@stat.math.ethz.ch>; Mon, 02 Jul 2007 12:11:02 -0700 (PDT)
Received: by 10.115.61.1 with SMTP id o1mr5391528wak.1183403460922;
	Mon, 02 Jul 2007 12:11:00 -0700 (PDT)
Received: by 10.115.88.15 with HTTP; Mon, 2 Jul 2007 12:11:00 -0700 (PDT)
Message-ID: <da79af330707021211h4795a350u85ce254198a22a78@mail.gmail.com>
Date: Mon, 2 Jul 2007 16:11:00 -0300
From: "Henrique Dallazuanna" <wwwhsd@gmail.com>
To: "Roy Mendelssohn" <Roy.Mendelssohn@noaa.gov>
In-Reply-To: <3B7EDFF8-3569-4D44-832B-FAA15E7DAADE@noaa.gov>
MIME-Version: 1.0
References: <3B7EDFF8-3569-4D44-832B-FAA15E7DAADE@noaa.gov>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, Catherine Holt <caholt@u.washington.edu>
Subject: Re: [R] download.file - it works on my Mac but not on Windows.
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
Content-Type: multipart/mixed; boundary="===============1475099415=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============1475099415==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 3398

Try whit:

destfile=3D"C:/Users/Catherine Holt/test.nc"

--=20
Henrique Dallazuanna
Curitiba-Paran=E1-Brasil
25=B0 25' 40" S 49=B0 16' 22" O

On 02/07/07, Roy Mendelssohn <Roy.Mendelssohn@noaa.gov> wrote:
>
> Hi:
>
> I am working with someone remotely to allow them access to our data.
> The follow command using "download.file" works perfectly on my Mac:
>
>
> > > download.file(url=3D"http://oceanwatch.pfeg.noaa.gov:8081/thredds/
> > wcs/satellite/AG/ssta/14day?
> > request=3DGetCoverage&version=3D1.0.0&service=3DWCS&format=3DNetCDF3&co=
verage=3D
> > AGssta&Vertical=3D.0&time=3D2006-01-06T00:00:00Z&bbox=3D220,20,250,50",
> > destfile=3D"/users/rmendels/desktop/carrie.nc")
> > trying URL 'http://oceanwatch.pfeg.noaa.gov:8081/thredds/wcs/
> > satellite/AG/ssta/14day?
> > request=3DGetCoverage&version=3D1.0.0&service=3DWCS&format=3DNetCDF3&co=
verage=3D
> > AGssta&Vertical=3D.0&time=3D2006-01-06T00:00:00Z&bbox=3D220,20,250,50'
> > Content type 'application/x-netcdf' length 369144 bytes
> > opened URL
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> > downloaded 360Kb
> >
> >
>
> On Windows, which this person is using, the following fails:
>
> > download.file(url=3D"http://oceanwatch.pfeg.noaa.gov:8081/thredds/wcs/
> > satellite/AG/ssta/14day?
> > request=3DGetCoverage&version=3D1.0.0&service=3DWCS&format=3DNetCDF3&co=
verage=3D
> > AGssta&Vertical=3D.0&time=3D2006-01-06T00:00:00Z&bbox=3D220,20,250,50",
> > destfile=3D"C:\Users\Catherine Holt\test.nc")
> >
>
>
> The error message is:
>
> > Error: Uxxxxxxx sequences are not supported on Windows
> >
>
> Relevant Info:
>
> Mac:
>
> > version
>                 _
> platform       powerpc-apple-darwin8.9.1
> arch           powerpc
> os             darwin8.9.1
> system         powerpc, darwin8.9.1
> status
> major          2
> minor          5.1
> year           2007
> month          06
> day            27
> svn rev        42083
> language       R
> version.string R version 2.5.1 (2007-06-27)
>
>
> Windows:
>
> Here's my Version information:
>                _
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
>
> Any help or workarounds appreciated.
>
> -Roy M.
>
>
>
>
>
>
> **********************
> "The contents of this message do not reflect any position of the U.S.
> Government or NOAA."
> **********************
> Roy Mendelssohn
> Supervisory Operations Research Analyst
> NOAA/NMFS
> Environmental Research Division
> Southwest Fisheries Science Center
> 1352 Lighthouse Avenue
> Pacific Grove, CA 93950-2097
>
> e-mail: Roy.Mendelssohn@noaa.gov (Note new e-mail address)
> voice: (831)-648-9029
> fax: (831)-648-8440
> www: http://www.pfeg.noaa.gov/
>
> "Old age and treachery will overcome youth and skill."
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

	[[alternative HTML version deleted]]


--===============1475099415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============1475099415==--

               

eckhAt<5,Zf