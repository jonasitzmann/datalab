From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 12:08:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62G8RL9015821
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 12:08:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G7lGi013384;
	Mon, 2 Jul 2007 18:08:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mochilla.bms.com (usintout02.bms.com [165.89.129.232])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62G2aJr010698
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 18:02:36 +0200
Received: from meusmsg02 ([127.0.0.1])
	by mochilla.bms.com (iPlanet Messaging Server 5.2 HotFix 1.21 (built
	Sep 8 2003)) with ESMTP id <0JKK002RM78BG4@mochilla.bms.com> for
	r-help@stat.math.ethz.ch; Mon, 02 Jul 2007 16:02:36 +0000 (GMT)
Received: from ([165.89.83.230]) by meusintout02.net.bms.com
	(InterScan E-Mail VirusWall Unix); Mon, 02 Jul 2007 16:02:36 +0000 (GMT)
Received: from [140.176.177.50] (A129287.hpw.pri.bms.com [140.176.177.50])
	by meusmsg02.net.bms.com
	(iPlanet Messaging Server 5.2 HotFix 2.02 (built Oct 21 2004))
	with ESMTPA id <0JKK001ZZ78BXA@meusmsg02.net.bms.com>; Mon,
	02 Jul 2007 16:02:35 +0000 (GMT)
Content-return: prohibited
Date: Mon, 02 Jul 2007 12:02:36 -0400
From: Hao Liu <hao.liu@bms.com>
In-reply-to: <468920F8.3000804@biostat.ku.dk>
To: Peter Dalgaard <p.dalgaard@biostat.ku.dk>
Message-id: <4689219C.5040307@bms.com>
Organization: Bristol-Myers Squibb Company
MIME-version: 1.0
X-Accept-Language: en-us, en
User-Agent: Mozilla Thunderbird BMS-en M7r6 (20060214)
References: <46891A2E.6050709@bms.com> <468920F8.3000804@biostat.ku.dk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] focus to tkwindow after a PDF window pop up
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

Thanks...
I finally used BrowseURL(), which is how Rcmdr does this... it starts 
firefox and things are ok...

Thanks
Hao

Peter Dalgaard wrote:

> Hao Liu wrote:
>
>> Dear All:
>>
>> I currently have a TK window start a acroread window: However, when 
>> the acroread window is open, I can't get back to the TK window unless 
>> I close the acroead.
>>
>> I invoked the acroread window using: system(paste("acroread ",file, 
>> sep=""))
>>
>> anything I can do to make them both available to users?
>>   
>
> Tell system() not to _wait_ for command to complete.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

af-0  f "+