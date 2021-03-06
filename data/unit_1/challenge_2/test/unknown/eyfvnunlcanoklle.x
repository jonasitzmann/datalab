From r-help-bounces@stat.math.ethz.ch  Sun Jun 17 03:55:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5H7tcL9023968
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 03:55:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5H7sL5b006872;
	Sun, 17 Jun 2007 09:54:32 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME, SUBJ_RE_NUM autolearn=no version=3.2.0
Received: from mail.xylon.de (mail.xylon.de [217.68.152.75])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5H7sF3J006850
	for <R-help@stat.math.ethz.ch>; Sun, 17 Jun 2007 09:54:15 +0200
Received: from localhost (xylos.xylon.de [127.0.0.1])
	by mail.xylon.de (Postfix) with ESMTP id 6844B904C6;
	Sun, 17 Jun 2007 09:54:15 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from mail.xylon.de ([127.0.0.1])
	by localhost (xylos.xylon.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yh+5QgKKoTV7; Sun, 17 Jun 2007 09:53:21 +0200 (CEST)
Received: from morgoth.le.xylon.de (83-221-78-94.dynamic.primacom.net
	[83.221.78.94]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.xylon.de (Postfix) with ESMTP id A9401904C5;
	Sun, 17 Jun 2007 09:53:20 +0200 (CEST)
Date: Sun, 17 Jun 2007 09:53:19 +0200
From: Arne Brutschy <abr-r-project@xylon.de>
X-Priority: 3 (Normal)
Message-ID: <1661951608.20070617095319@xylon.de>
To: "hadley wickham" <h.wickham@gmail.com>
In-Reply-To: <f8e6ff050706160315r325ec00eua9b14eb87152db71@mail.gmail.com>
References: <699125298.20070616105514@xylon.de>
	<f8e6ff050706160315r325ec00eua9b14eb87152db71@mail.gmail.com>
MIME-Version: 1.0
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] Visualize quartiles of plot line
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Arne Brutschy <abr-r-project@xylon.de>
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

Hi,

concerning the missing se coloring: I followed the examples on
http://had.co.nz/ggplot2/stat_smooth.html

 c <- ggplot(mtcars, aes(y=wt, x=qsec))

 c + stat_smooth()
 c + stat_smooth() + geom_point()
 c + stat_smooth(se = TRUE) + geom_point()
 c + stat_smooth(fill=alpha("blue", 0.2), colour="darkblue", size=2)
 c + geom_point() + stat_smooth(fill=alpha("blue", 0.2), colour="darkblue", size=2)
Does not work, se is missing.

 c + stat_smooth(fill="blue", colour="darkblue", size=2)
Does work.

 c + stat_smooth(method = lm, formula= y ~ ns(x,3)) + geom_point()
 c + stat_smooth(method = rlm, formula= y ~ ns(x,3)) + geom_point()
Does not work:
"Error in model.frame(formula = formula, data = data, weights = weight,  :
                 ..2 used in a wrong context, no ... to read"

All other examples on the page do not work. This seems to be a bug,m
right? Tell me if I can be of any use fixing this.

Regards,
Arne
 
h> On 6/16/07, Arne Brutschy <abr-r-project@xylon.de> wrote:
>> Hello,
>>
>> I'm currently using a simple plot to visualize some mean values. I'm
>> having ~200 datapoints on the x-axis, each has 10 records. I'm
>> currently plotting only the mean value of each of the datapoints.
>>
>> What I need is a way to visualize the quartiles/error/whatever of
>> these points. I thought about boxplots, but I have to many points on
>> the xaxis - it would be impossible to see anything. I though that it
>> would be nice to have a "hull" around each line, indicate the width of
>> the quartiles, visualized by a different background. It's like a very
>> wide boxplot with a changing mean value...
>>
>> Is this possible with r? Does anyone know what I mean and/or has done
>> this before?
>>
>> Thanks
>> Arne
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

A0icerAu21qwEn.