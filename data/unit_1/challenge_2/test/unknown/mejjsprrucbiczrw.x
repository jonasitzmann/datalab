From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 07:29:59 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59BTwL9008995
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 07:29:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59BTV11022311;
	Sat, 9 Jun 2007 13:29:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59BTOQJ022287
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 13:29:25 +0200
Received: from [127.0.0.1]
	(IDENT:U2FsdGVkX19/JI1nuRPJrnX1Hj21gM+cyaDnk5ll28g@localhost.localdomain
	[127.0.0.1])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l59BTMJ8022276;
	Sat, 9 Jun 2007 07:29:22 -0400
Message-ID: <466A8F0E.9060804@stats.uwo.ca>
Date: Sat, 09 Jun 2007 07:29:18 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: stevenmh@muohio.edu
References: <26142.134.53.7.120.1181328742.squirrel@134.53.7.120>
In-Reply-To: <26142.134.53.7.120.1181328742.squirrel@134.53.7.120>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] open .r files with double-click
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

On 08/06/2007 2:52 PM, stevenmh@muohio.edu wrote:
> Hi Folks,
> On Windows XP, R 2.5.0.
> 
> After reading the Installation for Windows and Windows FAQs,
> I cannot resolve this.
> 
> I set file types so that Rgui.exe will open .r files.
> 
> When I try to open a .r file by double-clicking, R begins to launch,
> but I get an error message saying
> 
> "Argument 'C:\Documents and Settings\Zoology\My Documents\trial.r' _ignored_"
> 
> I click OK, and then R GUI opens, but not the script file.
> 
> Is there a way to change this?

Not currently. See the appendix "Invoking R" of the Introduction manual 
for the current command line parameters, which don't include "open a 
script".  This would be a reasonable addition, and I'll add it at some 
point, sooner if someone else comes up with a convincing argument for 
the "right" command line parameter to do this.

It would be better if clicking on a second script opened a new window in 
the same session, but that takes more work; not sure I'll get to this.

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

cLiD>pAh