From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 22:18:48 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5A2IlL9016848
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 22:18:48 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5A2GrA4015617;
	Sun, 10 Jun 2007 04:17:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.174])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5A2GkCS015588
	for <r-help@stat.math.ethz.ch>; Sun, 10 Jun 2007 04:16:46 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1149109uga
	for <r-help@stat.math.ethz.ch>; Sat, 09 Jun 2007 19:16:46 -0700 (PDT)
Received: by 10.67.44.4 with SMTP id w4mr3969304ugj.1181441806065;
	Sat, 09 Jun 2007 19:16:46 -0700 (PDT)
Received: by 10.67.28.5 with HTTP; Sat, 9 Jun 2007 19:16:46 -0700 (PDT)
Message-ID: <971536df0706091916i1c36a5cfp1c5d8f0f51205092@mail.gmail.com>
Date: Sat, 9 Jun 2007 22:16:46 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Robert Wilkins" <irishhacker@gmail.com>
In-Reply-To: <874da0b40706091838i7f390997y6ad396d6f0aa0843@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <874da0b40706071701m55cd42fem15f55a8fcde04f17@mail.gmail.com>
	<40e66e0b0706080547o5c630ac3ne5feadc4247e289a@mail.gmail.com>
	<6BB2732B-E656-4A61-8D09-8C5D5EFC5AA4@MUOhio.edu>
	<874da0b40706091838i7f390997y6ad396d6f0aa0843@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Tools For Preparing Data For Analysis
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

That can be  elegantly handled in R through R's object oriented programming
by defining a class for the fancy input.  See this post:
  https://stat.ethz.ch/pipermail/r-help/2007-April/130912.html
for a simple example of that style.


On 6/9/07, Robert Wilkins <irishhacker@gmail.com> wrote:
> Here are some examples of the type of data crunching you might have to do.
>
> In response to the requests by Christophe Pallier and Martin Stevens.
>
> Before I started developing Vilno, some six years ago, I had been working in
> the pharmaceuticals for eight years ( it's not easy to show you actual data
> though, because it's all confidential of course).
>
> Lab data can be especially messy, especially if one clinical trial allows
> the physicians to use different labs. So let's consider lab data.
>
> Merge in normal ranges, into the lab data. This has to be done by lab-site
> and lab testcode(PLT for platelets, etc.), obviously. I've seen cases where
> you also need to match by sex and age. The sex column in the normal ranges
> could be: blank, F, M, or B ( B meaning for Both sexes). The age column in
> the normal ranges could be: blank, or something like "40 <55". Even worse,
> you could have an ageunits column in the normal ranges dataset: usually "Y",
> but if there are children in the clinical trial, you will have "D" or "M",
> for Days and Months. If the clinical trial is for adults, all rows with "D"
> or "M" should be tossed out at the start. Clearly the statistical programmer
> has to spend time looking at the data, before writing the program. Remember,
> all of these details can change any time you move to a new clinical trial.
>
> So for the lab data, you have to merge in the patient's date of birth,
> calculate age, and somehow relate that to the age-group column in the normal
> ranges dataset.
>
> (By the way, in clinical trial data preparation, the SAS datastep is much
> more useful and convenient, in my opinion, than the SQL SELECT syntax, at
> least 97% of the time. But in the middle of this program, when you merge the
> normal ranges into the lab data, you get a better solution with PROC SQL (
> just the SQL SELECT statement implemented inside SAS) This is because of the
> trickiness of the age match-up, and the SAS datastep does not do well with
> many-to-many joins.).
>
> Merge in various study drug administration dates into the lab data. Now, for
> each lab record, calculate treatment period ( or cycle number ), depending
> on the statistician's specifications and the way the clinical trial is
> structured.
>
> Different clinical sites chose to use different lab providers. So, for
> example, for Monocytes, you have 10 different units ( essentially 6 units,
> but spelling inconsistencies as well). The statistician has requested that
> you use standardized units in some of the listings ( % units, and only one
> type of non-% unit, for example ). At the same time, lab values need to be
> converted ( *1.61 , divide by 1000, etc. ). This can be very time consuming
> no matter what software you use, and, in my experience, when the SAS
> programmer asks for more clinical information or lab guidebooks, the
> response is incomplete, so he does a lot of guesswork. SAS programmers do
> not have expertise in lab science, hence the guesswork.
>
> Your program has to accomodate numeric values, "1.54" , quasi-numeric values
> "<1" , and non-numeric values "Trace".
>
> Your data listing is tight for space, so print "PROLONGED CELL CONT" as
> "PRCC".
>
> Once normal ranges are merged in, figure out which values are out-of-range
> and high , which are low, and which are within normal range. In the data
> listing, you may have "H" or "L" appended to the result value being printed.
>
> For each treatment period, you may need a unique lab record selected, in
> case there are two or three for the same treatment period. The statistician
> will tell the SAS programmer how. Maybe the averages of the results for that
> treatment period, maybe that lab record closest to the mid-point of of the
> treatment period. This isn't for the data listing, but for a summary table.
>
> For the differentials ( monocytes, lymphocytes, etc) , merge in the WBC
> (total white blood cell count) values , to convert values between % units
> and absolute count units.
>
> When printing the values in the data listing, you need "H" or "L" to the
> right of the value. But you also need the values to be well lined up ( the
> decimal place ). This can be stupidly time consuming.
>
>
>
> AND ON AND ON AND ON .....
>
> I think you see why clinical trials statisticians and SAS programmers enjoy
> lots of job security.

This could be readily handled in R using object oriented programming.
You would specify a class for the strange input,

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

eo7sea