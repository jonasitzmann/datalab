From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 12:54:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55Gs6hB011438
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 12:54:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GrRkE022033;
	Tue, 5 Jun 2007 18:53:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.179])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55GW5i8013639
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 18:32:06 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2529954waf
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 09:32:05 -0700 (PDT)
Received: by 10.115.79.1 with SMTP id g1mr6160204wal.1181061124621;
	Tue, 05 Jun 2007 09:32:04 -0700 (PDT)
Received: by 10.114.15.8 with HTTP; Tue, 5 Jun 2007 09:32:04 -0700 (PDT)
Message-ID: <efb536d50706050932mb90ce15g2b02b85a05a567f@mail.gmail.com>
Date: Tue, 5 Jun 2007 12:32:04 -0400
From: "Sarah Goslee" <sarah.goslee@gmail.com>
To: "Kuhn, Max" <Max.Kuhn@pfizer.com>
In-Reply-To: <71257D09F114DA4A8E134DEAC70F25D3088F80FB@groamrexm03.amer.pfizer.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <efb536d50706050809h3caca688ob437d90e01324fed@mail.gmail.com>
	<71257D09F114DA4A8E134DEAC70F25D3088F80FB@groamrexm03.amer.pfizer.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch,
   Laurence Amilhat <Laurence.Amilhat@toulouse.inra.fr>
Subject: Re: [R] odfTable
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

>
>   3. To simply Sarah's approach, add the style definition via
> setStyleDefs(existingStyles) as suggested. Then, just before making the
> table, simply use
>
> current <- getStyles()
> currrent$header <- "newStyle1"
> setStyles(current)
>
>      then produce the table. Unless I'm not understanding what you want,
> you shouldn't need to use tableStyles.


Ah, right. That example was cut from a longer document where the more
elaborate method was used for demonstration purposes.

Thanks for the hard work!
Sarah

-- 
Sarah Goslee
http://www.functionaldiversity.org

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

ota1RnbmAoe t=u