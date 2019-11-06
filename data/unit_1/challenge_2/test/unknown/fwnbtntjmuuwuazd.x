From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 03:36:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l587aJhB012218
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 03:36:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l587ZDEK015822;
	Fri, 8 Jun 2007 09:35:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l587YtrF015693
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 09:34:56 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HwYzn-0000So-4W
	for r-help@stat.math.ethz.ch; Fri, 08 Jun 2007 00:34:55 -0700
Message-ID: <11021815.post@talk.nabble.com>
Date: Fri, 8 Jun 2007 00:34:55 -0700 (PDT)
From: "Tom.O" <tom.olsson@dnbnor.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <46690610.2090108@family-krueger.com>
MIME-Version: 1.0
X-Nabble-From: tom.olsson@dnbnor.com
References: <11021315.post@talk.nabble.com>
	<46690610.2090108@family-krueger.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Barplots: Editing the frequency x-axis names
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


Hi thanks for the respone, but cant you be more specific with your example. I
cant see that this will do the trick. What Im looking for is a function that
remembers each position but only displays every n'th date.

For example

position	Returns	    Disply Date
2003-01-31		1		N
2003-02-28		2		N
2003-03-31		3		Yes
2003-04-30		4		N
2003-05-31		5		N
2003-06-30		6		Yes
2003-07-31		7		N
2003-08-31		8		N
2006-09-30		9		Yes
.... and so on until present 

Where I want to display all the returns in a barplot, but where I only want
to display every quarterly date in the plot???

Tom

Knut Krueger-5 wrote:
> 
> Tom.O schrieb:
>> Hi
>> I have a timeSeries object (X) with monthly returns. I want to display
>> the
>> returns with a barplot, which I can fix easily. But my problem is
>> labaling
>> the x-axis, if I use the positions from the timeseries It gets very
>> messy. I
>> have tried rotating and changing the font size but it doesn't do the
>> trick.
>> I think the optimal solution for my purpose is too only display every
>> second
>> or third date, pherhaps only use every 12 month. But how do I do that?
>>
>> Thanks Tom
>>   
> I think you could use:
> 
> library(chron):
> f.e
> x <- c(dates(02/27/92),dates(02/27/95))
> y <- c(10,50)
> plot(x, y)
> 
> Regards Knut
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
View this message in context: http://www.nabble.com/Barplots%3A-Editing-the-frequency-x-axis-names-tf3888029.html#a11021815
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

 B3<  