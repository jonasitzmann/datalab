From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 13:35:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHZvL9012998
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 13:35:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KHZ7Tc032022;
	Wed, 20 Jun 2007 19:35:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=AWL, BAYES_80,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.173])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KH3tCg019439
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 19:03:59 +0200
Received: by ug-out-1314.google.com with SMTP id m3so365772uge
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 10:03:55 -0700 (PDT)
Received: by 10.78.171.13 with SMTP id t13mr442989hue.1182359034677;
	Wed, 20 Jun 2007 10:03:54 -0700 (PDT)
Received: by 10.78.40.8 with HTTP; Wed, 20 Jun 2007 10:03:54 -0700 (PDT)
Message-ID: <4c817d530706201003s3723fa3fh2ef8eb47b2c54843@mail.gmail.com>
Date: Wed, 20 Jun 2007 18:03:54 +0100
From: "=?ISO-8859-1?Q?S=E9rgio_Nunes?=" <snunes@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5KH3tCg019439
Subject: [R] Averaging dates?
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KHZvL9012998

Hi,

What's the best way to average dates?
I though mean.POISXct would work fine but...

> a
[1] "2007-04-02 19:22:00 WEST"
> b
[1] "2007-03-17 16:23:00 WET"
> class(a)
[1] "POSIXt"  "POSIXct"
> class(b)
[1] "POSIXt"  "POSIXct"
> mean(a,b)
[1] "2007-04-02 19:22:00 WEST"
> mean(b,a)
[1] "2007-03-17 16:23:00 WET"

?!

Thanks in advance for any advice,
--
S�rgio Nunes

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

Sf:npqgwv eUt1