From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 08:05:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RC5NL9026195
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 08:05:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RC4f29003779;
	Wed, 27 Jun 2007 14:05:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RC4YAJ003740
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 14:04:35 +0200
Received: by wa-out-1112.google.com with SMTP id j37so189785waf
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 05:04:33 -0700 (PDT)
Received: by 10.114.93.17 with SMTP id q17mr424124wab.1182945873952;
	Wed, 27 Jun 2007 05:04:33 -0700 (PDT)
Received: by 10.114.26.17 with HTTP; Wed, 27 Jun 2007 05:04:33 -0700 (PDT)
Message-ID: <56750b780706270504w2930e572m948d4c44a2120bfb@mail.gmail.com>
Date: Wed, 27 Jun 2007 08:04:33 -0400
From: "David Einstein" <deinst@gmail.com>
To: "Richard M. Heiberger" <rmh@temple.edu>
In-Reply-To: <20070626224617.CFA45710@po-d.temple.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <20070626224617.CFA45710@po-d.temple.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Strange RODBC problem
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

On 6/26/07, Richard M. Heiberger <rmh@temple.edu> wrote:
> > I am using RODBC to collect data from an ODBC connection to an MS Access
> > Database.  Everything seems to be working well except datetimes between
> > March 12, 2006 02:00 and 02:59 get moved one hour forward.  This does not
> > seem to be happening with Excel connecting to the same connection.  March 12
> > seems a bit early for Daylight savings time.  What am I doing wrong?
>
> In 2007, the US moved daylight savings to March 11 instead of the more traditional
> first weekend in April.  It continues to November 4, a week later than before.
> Google "daylight savings 2007" for lots of background.
>
> Some MS programs did not make the switch until April 1, therefore my calendars
> doubled up continuing appointments.
>
> From your experience, it looks like some programs are retroactively misapplying
> the change to 2006.
>
Thanks, that seems to be the problem. Now I need to figure out how to
fix it, but I know where to look.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

:v lnn
vh