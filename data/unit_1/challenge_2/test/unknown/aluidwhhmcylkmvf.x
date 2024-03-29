From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 14:44:55 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CIisL9030510
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 14:44:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIhxgx000976;
	Tue, 12 Jun 2007 20:44:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.232])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CIVjDr027135
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 20:31:46 +0200
Received: by nz-out-0506.google.com with SMTP id o37so1469169nzf
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 11:31:44 -0700 (PDT)
Received: by 10.143.33.19 with SMTP id l19mr355908wfj.1181673103923;
	Tue, 12 Jun 2007 11:31:43 -0700 (PDT)
Received: by 10.143.7.9 with HTTP; Tue, 12 Jun 2007 11:31:43 -0700 (PDT)
Message-ID: <eb555e660706121131g73fe93abt41d89c8fa90b9be9@mail.gmail.com>
Date: Tue, 12 Jun 2007 11:31:43 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: dieter.menne@menne-biomed.de
In-Reply-To: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <LPEJLJACLINDNMBMFAFIKEBICIAA.dieter.menne@menne-biomed.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Stacked barchart color
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

On 6/12/07, Dieter Menne <dieter.menne@menne-biomed.de> wrote:
> Dear Latticer,
>
> I want to give individual colors to all elements in a simple stacked
> barchart. I know why the example below does not work (and it is a excellent
> default), but is there any workaround for this?
>
> Dieter
>
>
> # This only colors red and green, but I want blue and gray for Peatland.
>
> barchart(yield ~ variety , groups=year, data = barley,  stack = TRUE,
>   subset=site=="Grand Rapids" & variety %in% c("Velvet","Peatland"),
>     col=c("red","green","blue","gray"))

The easiest way is to create a new factor with suitable levels: replace

groups=year

by

groups=year:variety

or the more verbose

groups=interaction(year, variety)

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

6aiiflq