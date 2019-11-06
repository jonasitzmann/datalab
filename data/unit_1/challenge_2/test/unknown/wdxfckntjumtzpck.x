From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 15:09:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62J9hL9017842
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 15:09:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62J8NAj016427;
	Mon, 2 Jul 2007 21:08:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, WEIRD_PORT autolearn=no version=3.2.0
Received: from stonefish.nmfs.noaa.gov (stonefish.nmfs.noaa.gov
	[137.110.142.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62IgXOe006963
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 20:42:33 +0200
Received: from [161.55.17.135] ([65.219.21.82]) by stonefish.nmfs.noaa.gov
	(Sun Java System Messaging Server 6.2-3.04 (built Jul 15 2005))
	with ESMTPSA id <0JKK006GOEMV5100@stonefish.nmfs.noaa.gov> for
	r-help@stat.math.ethz.ch; Mon, 02 Jul 2007 11:42:32 -0700 (PDT)
Date: Mon, 02 Jul 2007 11:42:32 -0700
From: Roy Mendelssohn <Roy.Mendelssohn@noaa.gov>
To: r-help@stat.math.ethz.ch
Message-id: <3B7EDFF8-3569-4D44-832B-FAA15E7DAADE@noaa.gov>
MIME-version: 1.0
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Catherine Holt <caholt@u.washington.edu>
Subject: [R] download.file - it works on my Mac but not on Windows.
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

Hi:

I am working with someone remotely to allow them access to our data.  
The follow command using "download.file" works perfectly on my Mac:


> > download.file(url="http://oceanwatch.pfeg.noaa.gov:8081/thredds/ 
> wcs/satellite/AG/ssta/14day? 
> request=GetCoverage&version=1.0.0&service=WCS&format=NetCDF3&coverage= 
> AGssta&Vertical=.0&time=2006-01-06T00:00:00Z&bbox=220,20,250,50",  
> destfile="/users/rmendels/desktop/carrie.nc")
> trying URL 'http://oceanwatch.pfeg.noaa.gov:8081/thredds/wcs/ 
> satellite/AG/ssta/14day? 
> request=GetCoverage&version=1.0.0&service=WCS&format=NetCDF3&coverage= 
> AGssta&Vertical=.0&time=2006-01-06T00:00:00Z&bbox=220,20,250,50'
> Content type 'application/x-netcdf' length 369144 bytes
> opened URL
> ==================================================
> downloaded 360Kb
>
>

On Windows, which this person is using, the following fails:

> download.file(url="http://oceanwatch.pfeg.noaa.gov:8081/thredds/wcs/ 
> satellite/AG/ssta/14day? 
> request=GetCoverage&version=1.0.0&service=WCS&format=NetCDF3&coverage= 
> AGssta&Vertical=.0&time=2006-01-06T00:00:00Z&bbox=220,20,250,50",  
> destfile="C:\Users\Catherine Holt\test.nc")
>


The error message is:

> Error: Uxxxxxxx sequences are not supported on Windows
>

Relevant Info:

Mac:

 > version
                _
platform       powerpc-apple-darwin8.9.1
arch           powerpc
os             darwin8.9.1
system         powerpc, darwin8.9.1
status
major          2
minor          5.1
year           2007
month          06
day            27
svn rev        42083
language       R
version.string R version 2.5.1 (2007-06-27)


Windows:

Here's my Version information:
               _
platform       i386-pc-mingw32
arch           i386
os             mingw32
system         i386, mingw32
status
major          2
minor          5.0
year           2007
month          04
day            23
svn rev        41293
language       R
version.string R version 2.5.0 (2007-04-23)


Any help or workarounds appreciated.

-Roy M.






**********************
"The contents of this message do not reflect any position of the U.S.  
Government or NOAA."
**********************
Roy Mendelssohn
Supervisory Operations Research Analyst
NOAA/NMFS
Environmental Research Division	
Southwest Fisheries Science Center
1352 Lighthouse Avenue
Pacific Grove, CA 93950-2097

e-mail: Roy.Mendelssohn@noaa.gov (Note new e-mail address)
voice: (831)-648-9029
fax: (831)-648-8440
www: http://www.pfeg.noaa.gov/

"Old age and treachery will overcome youth and skill."

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

weilob