From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 20:28:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J0SrL9023515
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 20:28:54 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J0S8lD008759;
	Tue, 19 Jun 2007 02:28:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.172])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5J0NdQQ007654
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 02:23:39 +0200
Received: by ug-out-1314.google.com with SMTP id m3so672107uge
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 17:23:38 -0700 (PDT)
Received: by 10.66.237.9 with SMTP id k9mr55062ugh.1182212618847;
	Mon, 18 Jun 2007 17:23:38 -0700 (PDT)
Received: by 10.67.106.14 with HTTP; Mon, 18 Jun 2007 17:23:38 -0700 (PDT)
Message-ID: <971536df0706181723nadc7be9nd1a41f2ccc6577de@mail.gmail.com>
Date: Mon, 18 Jun 2007 20:23:38 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Christopher Marcum" <cmarcum@uci.edu>
In-Reply-To: <3136.24.176.215.116.1182210859.squirrel@webmail.uci.edu>
MIME-Version: 1.0
Content-Disposition: inline
References: <3136.24.176.215.116.1182210859.squirrel@webmail.uci.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] String manipulation, insert delim
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

Try this:

> paste(read.fwf(textConnection(foo), bar, as.is = TRUE), collapse = ",")
[1] "have,a,nice,day"


On 6/18/07, Christopher Marcum <cmarcum@uci.edu> wrote:
> Hello All,
>
> I've been using R for two years now and I am happy to say this is the
> first time I could not find the answer to my problem in the R-help
> archives. Here is the pending problem:
>
> I want to be able to insert delimiters, say commas, into a string of
> characters at uneven intervals such that:
>
> foo<-c("haveaniceday")#my string of character
> bar<-c(4,1,4,3) # my vector of uneven intervals
>
> my.fun(foo,bar) # some function that places delimiters appropriately
>
> have,a,nice,day # what the function would ideally return
>
> I've tried multiple for-loops using cut and paste but have not had success.
>
> Thanks!
> Chris Marcum
> UCI Sociology
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



WA1g"9hlxst6/