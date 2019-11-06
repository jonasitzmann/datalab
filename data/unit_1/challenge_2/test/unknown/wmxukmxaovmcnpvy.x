From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 14:44:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57IighB005637
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 14:44:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57Ihx3V014520;
	Thu, 7 Jun 2007 20:44:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l57IhqoY014487
	for <r-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 20:43:52 +0200
Received: by py-out-1112.google.com with SMTP id f31so1002964pyh
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 11:43:52 -0700 (PDT)
Received: by 10.65.54.9 with SMTP id g9mr3603285qbk.1181241831586;
	Thu, 07 Jun 2007 11:43:51 -0700 (PDT)
Received: by 10.65.51.12 with HTTP; Thu, 7 Jun 2007 11:43:51 -0700 (PDT)
Message-ID: <509e0620706071143x45a2c4efv844774339c486a94@mail.gmail.com>
Date: Thu, 7 Jun 2007 13:43:51 -0500
From: "Michael Lawrence" <lawremi@iastate.edu>
To: "Bob Meglen" <bmeglen@comcast.net>
In-Reply-To: <007d01c7a929$57024bb0$6943474b@Meglenhome>
MIME-Version: 1.0
References: <007d01c7a929$57024bb0$6943474b@Meglenhome>
X-Google-Sender-Auth: 63ec817d35767c54
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] reading BMP or TIFF files
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

On 6/7/07, Bob Meglen <bmeglen@comcast.net> wrote:
>
> I realize that  this question has been asked before (2003);
>
> From: Yi-Xiong Zhou
> Date: Sat 22 Nov 2003 - 10:57:35 EST
>
> but I am hoping that the answer has changed. Namely, I would
> rather read the BMP  (or TIFF) files directly instead of putting
> them though a separate utility for conversion as suggested by,


What would you like to do with the images? The GdkPixbuf bindings provided
by the RGtk2 package allow you to read both types of images. In conjunction
with the cairoDevice package, you could mix the image with R graphics.

Another way might be to use some Java library via rJava and use the Java
graphics device.

Michael

From: Prof Brian Ripley
> Date: Sat 22 Nov 2003 - 15:23:33 EST
>
> "Even easier is to convert .bmp to .pnm by an external utility. For
> example, `convert' from the ImageMagick suite (www.imagemagick.org) can do
> this. "
>
>
>
> Thanks,
> Robert Meglen
> bmeglen@comcast.net
>         [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

s_K. Rp0Wrut"i "