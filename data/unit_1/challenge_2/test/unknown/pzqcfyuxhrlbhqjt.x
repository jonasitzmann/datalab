From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 15:41:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56Jf1hB025542
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 15:41:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56JeDVO023502;
	Wed, 6 Jun 2007 21:40:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.225])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56J9rel010924
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 21:09:54 +0200
Received: by nz-out-0506.google.com with SMTP id o37so216853nzf
	for <r-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 12:09:53 -0700 (PDT)
Received: by 10.142.86.7 with SMTP id j7mr42134wfb.1181156993010;
	Wed, 06 Jun 2007 12:09:53 -0700 (PDT)
Received: by 10.143.7.9 with HTTP; Wed, 6 Jun 2007 12:09:52 -0700 (PDT)
Message-ID: <eb555e660706061209w53d06c3fj1f5ec03ab6c06a64@mail.gmail.com>
Date: Wed, 6 Jun 2007 12:09:52 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Ben Tupper" <btupper@bigelow.org>
In-Reply-To: <f46l5o$r65$1@sea.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <f46l5o$r65$1@sea.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] handling a cancelled file.choose()
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

On 6/6/07, Ben Tupper <btupper@bigelow.org> wrote:
> Hello,
>
>
> I have a file reading function that prompts the user with a file dialog
> if a filename is not provided in the argument list.  It is desirable to
> return gracefully if the user selects "Cancel", but file.choose() throws
> an error instead of returning something like a character.
>
>  > file.choose()
> [1] "/Users/ben/ben_idl.pref"
>
>  > file.choose()
> Error in file.choose() : file choice cancelled
>
> I naively planned to use nchar() to test the length, assuming
> cancellation would return a zero-length character. That appears to be
> out of the question. [...]

Not really, errors can be caught and handled. This seems to give the
behaviour you want:

tryCatch(file.choose(), error = function(e) "")

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

ZdeGn:ms4ecEn