From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 12:28:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58GSMhB017528
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 12:28:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58GQTRm023144;
	Fri, 8 Jun 2007 18:26:50 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.227])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58GODbk022634
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 18:24:14 +0200
Received: by nz-out-0506.google.com with SMTP id o37so683715nzf
	for <r-help@stat.math.ethz.ch>; Fri, 08 Jun 2007 09:24:13 -0700 (PDT)
Received: by 10.142.111.14 with SMTP id j14mr155637wfc.1181319852565;
	Fri, 08 Jun 2007 09:24:12 -0700 (PDT)
Received: by 10.143.7.9 with HTTP; Fri, 8 Jun 2007 09:24:12 -0700 (PDT)
Message-ID: <eb555e660706080924v6cfa2e29h2ed8c66bf42c291d@mail.gmail.com>
Date: Fri, 8 Jun 2007 11:24:12 -0500
From: deepayan.sarkar@gmail.com
To: asb@mail.nih.gov
In-Reply-To: <1181227630.6917.12.camel@gestalt.nimh.nih.gov>
MIME-Version: 1.0
Content-Disposition: inline
References: <1181227630.6917.12.camel@gestalt.nimh.nih.gov>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] rlm results on trellis plot
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

On 6/7/07, Alan S Barnett <asb@mail.nih.gov> wrote:
> How do I add to a trellis plot the best fit line from a robust fit? I
> can use panel.lm to add a least squares fit, but there is no panel.rlm
> function.

Well, panel.lmline (not panel.lm, BTW) is defined as:

> panel.lmline
function (x, y, ...)
{
    if (length(x) > 0)
        panel.abline(lm(as.numeric(y) ~ as.numeric(x)), ...)
}

So it's not much of a stretch to define

panel.rlmline <- function(x, y, ...)
    if (require(MASS) && length(x) > 0)
        panel.abline(rlm(as.numeric(y) ~ as.numeric(x)), ...)

The other replies have already shown you how you might use this in a call.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

Bh1p:wrqgwjcb2