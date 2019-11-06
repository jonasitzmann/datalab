From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 14:35:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CIZ9L9030420
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 14:35:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIYWO7028513;
	Tue, 12 Jun 2007 20:34:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIMXpH022920
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 20:22:34 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HyB0j-0008NC-9P
	for r-help@stat.math.ethz.ch; Tue, 12 Jun 2007 11:22:33 -0700
Message-ID: <11084157.post@talk.nabble.com>
Date: Tue, 12 Jun 2007 11:22:33 -0700 (PDT)
From: Vladimir Eremeev <wl2776@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <BAY116-DAV128838EFA6E77F9B2FFFF7B8190@phx.gbl>
MIME-Version: 1.0
X-Nabble-From: wl2776@gmail.com
References: <BAY116-DAV128838EFA6E77F9B2FFFF7B8190@phx.gbl>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] dyn.load( ) problem
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



Ian McCarthy wrote:
> 
> I am trying to access a dll with dyn.load, but I get an error message box
> titled "R Console: Rgui.exe - Unable to Locate Component". The error
> message itself states "this application has failed to start because
> libifcoremdd.dll was not found. Re-installing the application may fix this
> problem." I have reinstalled the program (with full installation) but
> still get the same error. I received the dll from a colleague who never
> had this issue on his computer, so I don't think it is problem with a
> compiler or the source code. 
> 

And where is the file libifcoremdd.dll?

Looks like you have to install the Intel Fortran compiler, as this DLL is
its component ("Intel-specific Fortran I/O intrinsic support library when
compiled with /MDd",
http://www.intel.com/support/performancetools/fortran/windows/sb/cs-007847.htm),
or, at least all DLLs, your DLL depends on.
Try using Dependency Walker to resolve these
(http://www.dependencywalker.com/).


-- 
View this message in context: http://www.nabble.com/dyn.load%28-%29-problem-tf3908956.html#a11084157
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

ei1mbfSparne8lue