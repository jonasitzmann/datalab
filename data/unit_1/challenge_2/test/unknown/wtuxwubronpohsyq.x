From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 05:25:37 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T9PaL9023623
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 05:25:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T9OjkM029423;
	Fri, 29 Jun 2007 11:25:12 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtpout2.pt.lu (smtpout2.pt.lu [194.154.192.94])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T9NwNF029139
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 11:23:59 +0200
Received: from localhost ([192.168.20.60])
	by smtpout2.pt.lu  with ESMTP id l5T9NtV3015648;
	Fri, 29 Jun 2007 11:23:55 +0200
Received: from drill.healthnet.lu (drill.healthnet.lu [158.64.36.2]) by
	webmail.pt.lu (Horde MIME library) with HTTP; Fri, 29 Jun 2007 11:23:55
	+0200
Message-ID: <20070629112355.6u6czn66kg4s8ggk@webmail.pt.lu>
Date: Fri, 29 Jun 2007 11:23:55 +0200
From: bioinfonews@pt.lu
To: Jacques VESLOT <Jacques.Veslot@avignon.inra.fr>
References: <20070629104312.nq1xs68cu8k04ows@webmail.pt.lu>
	<4684CCD3.1030204@avignon.inra.fr>
In-Reply-To: <4684CCD3.1030204@avignon.inra.fr>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Internet Messaging Program (IMP) H3 (4.1.3)
X-Originating-IP: 158.64.36.2
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5T9NwNF029139
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to add elements to a table
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5T9PaL9023623

Thanks a lot! Wow, I know why I love R, things are so incredibly easy  
with R (once you know how ;-) )

Moreover I've found messages in the archive showing how to make plot  
draw as many ticks as I've got years, so everything is OK.

Thanks for the help,

Anne-Mudle


Quoting Jacques VESLOT <Jacques.Veslot@avignon.inra.fr>:

>> z <- read.table("clipboard")
>> z
>    V1 V2
> 1 1990 20
> 2 1991 15
> 3 1995 17
> 4 1997  9
> 5 1998 10
> 6 1999 11
> 7 2000  5
>> zz <- merge(data.frame(V1=1990:2000), z, by="V1", all.x=T)
>> plot(zz, type="l")
>
> Jacques VESLOT
>
> INRA - Biostatistique & Processus Spatiaux
> Site Agroparc 84914 Avignon Cedex 9, France
>
> Tel: +33 (0) 4 32 72 21 58
> Fax: +33 (0) 4 32 72 21 84
>
>
>
> bioinfonews@pt.lu a �crit :
>> Hi,
>>
>> I've been using R for a few weeks now, but consider myself still a   
>>  newbie, especially in what concerns the basics of data handling in  
>> R.
>>
>> My situation is this:
>> I read in data from a database using RODBC, and then use "table" to  
>>   produce a table of "counts per years", table which I give to   
>> "plot".  All is well, as long as there are no gaps in the years   
>> sequence, but  now I have the following result (example):
>>
>> 1990 20
>> 1991 15
>> 1995 17
>> 1997  9
>> 1998 10
>> 1999 11
>> 2000  5
>>
>> The "plot" function is quite intelligent, in the sense that it   
>> draws  appropriate gaps in the x-axis between years, but not   
>> intelligent  enough to interrupt the data line during the gap. This  
>>  gives the  impression that, although no year is marked on the   
>> x-axis between 1991 and 1995, there has been data for this period,   
>> which is not correct.
>>
>> What I tried to do is convert the table to a matrix, insert zeros   
>> for  the missing years using rbind and cbind, and convert the   
>> result back  to table. But the structure of this resulting table is  
>>  not the same as for the originating table, so that I need to pass   
>> "tab[1,]" to "plot".  It's no longer a contingency table in fact.
>>
>> I've seen in the mailing list archives that there is an issue on   
>> using "table"s when matrixes or other structures would be more   
>> appropriate.
>>
>> I like the "table", because "plot" automatically plots the    
>> corresponding years on the x-axis, which I find less error-prone   
>> than  adding the tick labels later by hand, i.e. the association   
>> between  years and counts is stronger.
>>
>> Also, as I tabulate counts of cases per gender, or per age   
>> categories, I think a contingency table is the right thing to use,   
>> isn't it?
>>
>> I'd be glad on any advice about what would be the best data   
>> structure  to handle my situation, and I'd also like to know how I   
>> could  automagically check a list of "year, cases" rows against a   
>> fixed list  of years, insert zero or "NA" values for missing years,  
>>  and get an  easily usable result that I can forward to "plot" or   
>> "barplot".
>>
>> Thanks a lot in advance,
>>
>> Anne-Mudle
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

              

BrJl
  re