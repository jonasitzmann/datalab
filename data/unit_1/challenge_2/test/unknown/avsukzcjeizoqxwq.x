From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 09:44:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SDi6L9011272
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:44:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDh7OL000506;
	Thu, 28 Jun 2007 15:43:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No,
	score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME autolearn=no
	version=3.2.0
Received: from thor.math.uic.edu (thor.math.uic.edu [131.193.178.67])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SDgfvK000305
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 15:42:43 +0200
Received: from math.uic.edu (shell-new.math.uic.edu [::ffff:131.193.178.63])
	by thor.math.uic.edu with esmtp; Thu, 28 Jun 2007 08:42:40 -0500
	id 00037EFA.4683BAD0.00001CB5
Received: (qmail 25275 invoked by uid 31415); 28 Jun 2007 08:42:40 -0500
From: vladimir@math.uic.edu
Date: Thu, 28 Jun 2007 08:42:40 -0500
To: r-help@stat.math.ethz.ch
Message-ID: <20070628134240.GA25191@math.uic.edu>
Mime-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.9i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Installing an old package in R-2.4.1
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

I am new to R.   We have a binary package that was not maintained for
about a year, and the original maintainer is not around anymore.
The package used to work in R-1.5.1.  I used the following steps
to install this package in R-2.4 on WinXP:

  Started the GUI
  Went into the menu "Packages" and selected "Install packages from
  local zip files
  Clicked on the zip file with the package, and clicked "Open"
  
R responded with the message "Updating HTML package descriptions".
I can see the package files in the "library" subdirectory of
R installation:

cd "c:/program files/R/R-2.4.1/library"
find . -name 'Rproj' -print
./file72ae2cd6/Rproj
./file72ae2cd6/Rproj/help/Rproj
./file72ae2cd6/Rproj/R/Rproj
./Rproj
./Rproj/help/Rproj
./Rproj/R/Rproj

( Please don't get confused by the UNIX-style paths, I am using cygwin
shell on Windows ).
However when I go to "Packages->Load package" menu, the Rproj 
package is not listed there.   How would I find out what went wrong?

Thanks,
	Vlad

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

b$l�D4DlaaDt1