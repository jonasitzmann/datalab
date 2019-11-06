From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 14:45:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FIjaL9005529
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 14:45:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FIi5Lc006449;
	Fri, 15 Jun 2007 20:44:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from qb-out-0506.google.com (qb-out-0506.google.com [72.14.204.229])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FIhxT4006394
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 20:43:59 +0200
Received: by qb-out-0506.google.com with SMTP id b14so1160101qbc
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 11:43:58 -0700 (PDT)
Received: by 10.142.84.3 with SMTP id h3mr169837wfb.1181933038320;
	Fri, 15 Jun 2007 11:43:58 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Fri, 15 Jun 2007 11:43:58 -0700 (PDT)
Message-ID: <eb555e660706151143o79137d08mc4183f579dcbc863@mail.gmail.com>
Date: Fri, 15 Jun 2007 11:43:58 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: ted.harding@manchester.ac.uk
In-Reply-To: <XFMail.070615161333.ted.harding@nessie.mcc.ac.uk>
MIME-Version: 1.0
Content-Disposition: inline
References: <XFMail.070615161333.ted.harding@nessie.mcc.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] [OT] 'gv' and fractional points
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

On 6/15/07, Ted Harding <ted.harding@nessie.mcc.ac.uk> wrote:
> Hi Folks,
>
> This is off-topic R-wise, but it may be close to
> the heart of many R-users, so I think it may be
> the best place to ask!
>
> Users of 'gv' (the "front end" to ghostscript) will
> be aware of the little window which gives you the
> x-y coordinates (in points = 1/72 inch) of the position
> of the "cross-hair" mouse cursor. These coordinates
> are those of the corresponding position on the printed
> page, relative to some origin.
>
> I have often used this to extract numerical values
> for data from graphs in Postscript files (also PDF
> files, after you have converted them to PS). Then
> (veering back on topic ... ) you can submit the
> numerical data to R and try your own analyses on
> these data, and compare with what the article does.
>
> However, this little window only gives the numbers
> in whole points. Say a smallish graphic may print
> out 3 inches wide or high. Then you get precision
> of 1/216 per 3 inches or 0.4% of full scale. This
> can be adequate on many occasions, but can be on
> the coarse side on other occasions.

If you are mostly concerned about small figures, one possibility is

1. zoom out to a level where you're happy with the pixel resolution
2. do a screen capture using 'import'
3. use gimp (which has the same feature, with more units)

gimp can also load PS files directly, with a user supplied zoom factor
at load time, but only one page at a time, AFAICT.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

dh-c7Lw-0 3r 