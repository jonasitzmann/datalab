From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 10:32:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FEWHL9003328
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 10:32:18 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FEVakg010101;
	Fri, 15 Jun 2007 16:31:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mxout3.cac.washington.edu (mxout3.cac.washington.edu
	[140.142.32.166])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FEUipF009796
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 16:30:46 +0200
Received: from homer21.u.washington.edu (homer21.u.washington.edu
	[140.142.12.133])
	by mxout3.cac.washington.edu (8.13.7+UW06.06/8.13.7+UW07.05) with ESMTP
	id l5FEUh2Q028261
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jun 2007 07:30:43 -0700
Received: from localhost (tlumley@localhost)
	by homer21.u.washington.edu (8.13.7+UW06.06/8.13.7+Submit) with ESMTP
	id l5FEUg5f001278; Fri, 15 Jun 2007 07:30:42 -0700
Date: Fri, 15 Jun 2007 07:30:42 -0700 (PDT)
From: Thomas Lumley <tlumley@u.washington.edu>
To: Chris Linton <connect.chris@gmail.com>
In-Reply-To: <b05bf6c40706142214i24ef2f33tbad26e0df9e785d2@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.0706150719330.31946@homer21.u.washington.edu>
References: <b05bf6c40706142214i24ef2f33tbad26e0df9e785d2@mail.gmail.com>
MIME-Version: 1.0
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.15.70849
X-Uwash-Spam: Gauge=IIIIIII, Probability=7%, Report='__CT 0, __CT_TEXT_PLAIN 0,
	__HAS_MSGID 0, __MIME_TEXT_ONLY 0, __MIME_VERSION 0,
	__SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] importing .dta files
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

On Fri, 15 Jun 2007, Chris Linton wrote:

> I'm trying to read in a Stata file but I've never used this function (
> read.dta).  It's the only one that seems to come close to working, but I
> keep getting this error:
>
>> data<-read.dta("C:/Documents and
> Settings/Chris/Desktop/S4412/catestscores.dta")
> Error in read.dta("C:/Documents and
> Settings/Chris/Desktop/S4412/catestscores.dta",  :
>        a binary read error occurred
>
>
> There's little chance the data is corrupt considering it came from my
> professor and he used the data earlier.  So, either I'm doing something
> wrong or R just doesn't like to read in Stata files.  If it's a problem with
> R, how can I easily convert the file without purchasing Stata?
>

R does read Stata files -- I use this facility frequently.  It's hard to 
tell why it isn't working in your case, since we don't know anything about 
the file, your version of R, version of Stata, etc (we can guess you are 
on windows from the file name).

The error message implies that the file was found, and that it started 
with the right sequence of bytes to be a Stata .dta file, but that 
something (probably the end of the file) prevented R from reading what it 
was expecting to read.

This is why (in the absence of any further information) the natural 
suspicion is that the file is corrupt.  It is possible that we have 
misunderstood some unusual possibility in the Stata file format -- this 
has happened once before -- but it is fairly well documented.  In any 
case, there is not much that can be done without more information.


 	-thomas

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

beHxEu