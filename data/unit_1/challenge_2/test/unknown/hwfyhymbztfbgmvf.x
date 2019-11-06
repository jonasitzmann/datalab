From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 04:52:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H8qgL9005321
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 04:52:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5H8q5Ew024763;
	Sun, 17 Jun 2007 10:52:18 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5H8pxbZ024725
	for <R-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 10:51:59 +0200
Received: by an-out-0708.google.com with SMTP id b2so253605ana
	for <R-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 01:51:59 -0700 (PDT)
Received: by 10.100.167.7 with SMTP id p7mr2805318ane.1182070318913;
	Sun, 17 Jun 2007 01:51:58 -0700 (PDT)
Received: by 10.100.44.6 with HTTP; Sun, 17 Jun 2007 01:51:58 -0700 (PDT)
Message-ID: <f8e6ff050706170151n9706361k8ff68042ed86a615@mail.gmail.com>
Date: Sun, 17 Jun 2007 10:51:58 +0200
From: "hadley wickham" <h.wickham@gmail.com>
To: "Arne Brutschy" <abr-r-project@xylon.de>
In-Reply-To: <555253635.20070617092257@xylon.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <699125298.20070616105514@xylon.de>
	<f8e6ff050706160315r325ec00eua9b14eb87152db71@mail.gmail.com>
	<555253635.20070617092257@xylon.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Visualize quartiles of plot line
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

On 6/17/07, Arne Brutschy <abr-r-project@xylon.de> wrote:
> Hi,
>
> h> How about quantile regression? Have a look at
> h> http://had.co.nz/ggplot2/stat_quantile.html for some examples of
> h> what that might look like.
> I tried the ggplot2 package, it seems to be quite powerful. But
> documentation is only partially available, so I'm having some problems
> creating the graphs at all.
>
> First of all, where can I find the diamonds and dsmall data? I cannot
> recreate the samples given in the documentation.

The diamonds dataset is available from the ggplot2 package, and the
dsmall dataset is usually created as needed - dsmall <-
diamonds[sample(1:nrow(diamonds), 1000), ]

> I'm currently using a simple smoother to display the tendency of the
> data and it's stderr. For some reason, it works only for simple
> colors:
>
> p <- ggplot(data, aes(x=Problemsize, y=Fitness)) +
>   geom_smooth(fill=alpha("blue", 0.2), colour="darkblue", size=2)
>
> This does only display a line, not the surrounding stderr. When I
> change the fill atrribute to "blue" or "grey80" without the alpha, the
> stderr gets displayed.

As I said in the other email, this is a known restriction of the
windows graphics device.

> Additionally, I want to display three different models by this, each
> with a differen curve/stderr fill color. How do I do that? I tried so
> set color=Model, which yields only a single line.

It's hard to know without know more about the structure of your
dataset.  Including colour=factor(Model) in the aes statement may do
what you need.

> On another plot, I want to use a single model to be displayed with
> points colored by a gradient depending on a third property:
>
> p <- ggplot(data, aes(x=Problemsize, y=Fitness), color=DeltaConfig) +
>   geom_smooth(size=1, color="black", fill="grey80")+
>   geom_point(size=0.5)+
>   scale_colour_gradient(limits=c(0,10), low="red", high="white")
>
> This does not work, I think the connection between goem_point and
> DeltaConfig is not there. But when I try to set
>
>   geom_point(size=0.5, color=DeltaConfig)+

Colour needs to be inside the aes function - you are mapping colour to
the DeltaConfig variable, not setting colour to a fixed variable.

> it complains about an unknown DeltaConfig object.
>
> Hmm, I guess I don't fully understand this 'grammar of graphics'
> thing. But documentation is quite inconsistent. :( And, the coloring
> thing seems to be a bug. BTW, I'm using R 2.5.0 on windows.

You might want to read the introductory chapters in the ggplot book,
available from http://had.co.nz/ggplot2, which will give you more of a
background.  Please let me know places where you think the
documentation is inconsistent so I can try and make them better.

Hadley

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

Y tE