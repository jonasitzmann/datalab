From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 16:03:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62K3kL9018366
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 16:03:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62K24nA001849;
	Mon, 2 Jul 2007 22:02:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.224])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62K1wYP001803
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 22:01:58 +0200
Received: by wx-out-0506.google.com with SMTP id i28so1557800wxd
	for <r-help@stat.math.ethz.ch>; Mon, 02 Jul 2007 13:01:57 -0700 (PDT)
Received: by 10.90.80.8 with SMTP id d8mr5531566agb.1183406517710;
	Mon, 02 Jul 2007 13:01:57 -0700 (PDT)
Received: by 10.90.118.18 with HTTP; Mon, 2 Jul 2007 13:01:57 -0700 (PDT)
Message-ID: <971536df0707021301i1b1bbfc5u5064d548c57af347@mail.gmail.com>
Date: Mon, 2 Jul 2007 16:01:57 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Jiong Zhang, PhD" <jizhang@chori.org>
In-Reply-To: <9911b82c3fadb84182141a14f713b6a0@mail.chori.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <9911b82c3fadb84182141a14f713b6a0@mail.chori.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "r-help@stat.math.ethz.ch" <r-help@stat.math.ethz.ch>
Subject: Re: [R] displaying one page at a time in the console
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

View(names(x)) will display the names in a scrollable fashion.  Also
head(names(x)) will show just the first few if that's good enough.

On 7/2/07, Jiong Zhang, PhD <jizhang@chori.org> wrote:
> Hi all,
>
> How do I ask the console to display one page at a time for commands such
> as "names()"?
>
> Thanks.
>
> jiong

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

C32GF"T