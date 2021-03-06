From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 11:41:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PFfqL9030545
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 11:41:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PFealL004207;
	Mon, 25 Jun 2007 17:40:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from sslmail2.wu-wien.ac.at (sslmail2.wu-wien.ac.at [137.208.8.46])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PFVgp1001596
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 17:31:43 +0200
Received: from disco (disco.wu-wien.ac.at [137.208.56.16])
	(authenticated bits=0)
	by sslmail2.wu-wien.ac.at (8.13.3/8.13.1) with ESMTP id l5PFVQa2089147
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NOT); 
	Mon, 25 Jun 2007 17:31:28 +0200 (CEST)
	(envelope-from Achim.Zeileis@wu-wien.ac.at)
Date: Mon, 25 Jun 2007 17:34:12 +0200 (CEST)
From: Achim Zeileis <Achim.Zeileis@wu-wien.ac.at>
X-X-Sender: zeileis@disco.wu-wien.ac.at
To: Horace Tso <Horace.Tso@pgn.com>
In-Reply-To: <467BDCAD020000650000693F@pgn.com>
Message-ID: <Pine.LNX.4.44.0706251727140.25241-100000@disco.wu-wien.ac.at>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
Cc: r-help@stat.math.ethz.ch,
   "Mark \(IED\) Leeds" <Mark.Leeds@morganstanley.com>
Subject: Re: [R] Imputing missing values in time series
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

On Fri, 22 Jun 2007, Horace Tso wrote:

> Thanks to Mark and Erik for different versions of locf, also Erik's
> pointer to archive where I found another function due to Simon Fear. I
> haven't tested the zoo locf function.

Just as an addition to what Marc already wrote:

"zoo" offers at least two advantages here:
  - it does not break if the first element is NA
  - if available it incorporates the corresponding time stamps

When we wrote na.locf(), Gabor also tried to optimize it for speed. I
haven't compared it to the solutions suggested here but would be surprised
if any of them would substantially faster.

As for your time series, I would recommend that you hold it as a "zoo"
series with "Date" time stamps. See
  vignette("zoo-quickref", package = "zoo")
  vignette("zoo", package = "zoo")
for some examples of "zoo" series in general and na.locf() in particular.
Z

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

ewrvbtlk /d