From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 16:30:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LKUfL9028904
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 16:30:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LKTnnv011750;
	Thu, 21 Jun 2007 22:30:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.231])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LKLp0J007946
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 22:21:51 +0200
Received: by nz-out-0506.google.com with SMTP id o37so601893nzf
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 13:21:50 -0700 (PDT)
Received: by 10.114.77.1 with SMTP id z1mr2090745waa.1182457310412;
	Thu, 21 Jun 2007 13:21:50 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Thu, 21 Jun 2007 13:21:50 -0700 (PDT)
Message-ID: <eb555e660706211321x72aa9ee5w7d40f866c03471c0@mail.gmail.com>
Date: Thu, 21 Jun 2007 13:21:50 -0700
From: "Deepayan Sarkar" <deepayan.sarkar@gmail.com>
To: "Sigbert Klinke" <sigbert@wiwi.hu-berlin.de>
In-Reply-To: <467A5CDE.2030002@wiwi.hu-berlin.de>
MIME-Version: 1.0
Content-Disposition: inline
References: <467A5CDE.2030002@wiwi.hu-berlin.de>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] barchart in trellis and NA
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

On 6/21/07, Sigbert Klinke <sigbert@wiwi.hu-berlin.de> wrote:
> Hi,
>
> I've a dataset with discrete data and several groups and in one group I
> have also missing values (NA). When I use table and barchart to
> visualize the counts I never get a bar for  NA in the barchart although
> it appears in the result of table. Is there a possibility to get this
> bar too?

Please give a reproducible example, because it's not clear to me what
exactly is supposed to be NA.

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

sad 8,ogb