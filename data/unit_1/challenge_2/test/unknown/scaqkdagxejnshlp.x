From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 11:48:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BFmiL9015839
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 11:48:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFlmHa018393;
	Mon, 11 Jun 2007 17:48:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mtaprod2.gene.com (smtp-out.gene.com [72.34.128.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFghFs016619
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 17:42:45 +0200
Received: from mta-rwc-2.gene.com (mta-rwc-2.gene.com [128.137.15.61])
	by mtaprod2.gene.com (Switch-3.2.4/Switch-3.2.4) with ESMTP id
	l5BFgdYi026317
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=OK);
	Mon, 11 Jun 2007 08:42:39 -0700
Received: from BGUNTERDT2 (dhcp144-77.gene.com [128.137.144.77])
	by mta-rwc-2.gene.com (Switch-3.1.7/Switch-3.1.7) with ESMTP id
	l5BFgc6u021472; Mon, 11 Jun 2007 08:42:38 -0700 (PDT)
From: Bert Gunter <gunter.berton@gene.com>
To: "'Duncan Murdoch'" <murdoch@stats.uwo.ca>, <stevenmh@muohio.edu>
Date: Mon, 11 Jun 2007 08:42:38 -0700
Organization: Genentech Inc.
Message-ID: <004c01c7ac3f$243c09a0$4d908980@gne.windows.gene.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
Thread-Index: AceqiYfdkMaP1ZsRRfShhcx9H/ZwxwBtOzrw
In-Reply-To: <466A8F0E.9060804@stats.uwo.ca>
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

However, do note (on Windows) that you can use an external text/programming
editors (see CRAN's listings)and can register .r / .R files to open
automatically in the chosen editor when clicked on.At least some of these
editors (eg TINN-R) can be configured to automatically and simultaneously
open the RGUI, too, I believe -- but someone may correct me on this.

Bert Gunter
Nonclinical Statistics
7-7374

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Duncan Murdoch
Sent: Saturday, June 09, 2007 4:29 AM
To: stevenmh@muohio.edu
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] open .r files with double-click

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
> "Argument 'C:\Documents and Settings\Zoology\My Documents\trial.r'
_ignored_"
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

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

.M/Dt