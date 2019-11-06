From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 17:02:19 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FL2IL9006663
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 17:02:19 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FL1ePQ020490;
	Fri, 15 Jun 2007 23:01:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FJf9uU027892
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 21:41:10 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HzHfQ-0000JH-PR
	for r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 12:41:08 -0700
Message-ID: <11146488.post@talk.nabble.com>
Date: Fri, 15 Jun 2007 12:41:08 -0700 (PDT)
From: Mark Difford <mark_difford@yahoo.co.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <efb536d50706151035u4c03e6a7h83f09abe3aeada89@mail.gmail.com>
MIME-Version: 1.0
X-Nabble-From: mark_difford@yahoo.co.uk
References: <efb536d50706151035u4c03e6a7h83f09abe3aeada89@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] text display using expression or not
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


Hi Sarah,

You will kick yourself (perhaps?).  Try:

?par   ## sub: font.main (& font, just above)

## Example
par(mfrow=c(2,1))
plot(1:10, 1:10, main="Figure A", font.main=1)
plot(1:10, 1:10, main=expression("Figure B"))

Regards,
Mark.


Sarah Goslee wrote:
> 
> Hello,
> 
> I imagine that I'm missing something straightforward, but a run thru
> the help files didn't turn up an answer.
> 
> I noticed while formatting some figures for publication that text
> enclosed in expression() and used for a title displays differently
> than a string, regardless of the par options. On both postscript()
> and x11() devices, the regular text is heavier than the expression text.
> 
> Here's an example. The "real thing" used expression() to
> produce superscripts, but I boiled this down to the simplest possible
> case.
> 
> par(mfrow=c(2,1))
> plot(1:10, 1:10, main="Figure A")
> plot(1:10, 1:10, main=expression("Figure B"))
> 
> Is there some straightforward way to make them match, other
> than putting expression() around all strings?
> 
> 
> I'm currently using R 2.5.0 on Fedora core 5.
> 
> Thanks,
> Sarah
> 
> -- 
> Sarah Goslee
> http://www.functionaldiversity.org
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/text-display-using-expression-or-not-tf3929372.html#a11146488
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

- Ja&s4bem2