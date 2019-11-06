From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 05:08:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T98iL9023403
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 05:08:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T97nGg022576;
	Fri, 29 Jun 2007 11:07:57 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from avignon.inra.fr (avignon.inra.fr [147.100.0.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5T96YCg022156
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 11:06:35 +0200
Received: from [147.100.14.162] (pcbiom82 [147.100.14.162])
	by avignon.inra.fr (/8.13.8) with ESMTP id l5T96HgN017752;
	Fri, 29 Jun 2007 11:06:17 +0200 (CEST)
Message-ID: <4684CCD3.1030204@avignon.inra.fr>
Date: Fri, 29 Jun 2007 11:11:47 +0200
From: Jacques VESLOT <Jacques.Veslot@avignon.inra.fr>
User-Agent: Thunderbird 1.5.0.10 (X11/20070305)
MIME-Version: 1.0
To: bioinfonews@pt.lu
References: <20070629104312.nq1xs68cu8k04ows@webmail.pt.lu>
In-Reply-To: <20070629104312.nq1xs68cu8k04ows@webmail.pt.lu>
X-Miltered: at avi with ID 4684CB89.000 by Joe's j-chkmail
	(http://j-chkmail.ensmp.fr)!
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-1.6
	(avignon.inra.fr [147.100.0.1]);
	Fri, 29 Jun 2007 11:06:17 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5T98iL9023403

 > z <- read.table("clipboard")
 > z
    V1 V2
1 1990 20
2 1991 15
3 1995 17
4 1997  9
5 1998 10
6 1999 11
7 2000  5
 > zz <- merge(data.frame(V1=1990:2000), z, by="V1", all.x=T)
 > plot(zz, type="l")

Jacques VESLOT

INRA - Biostatistique & Processus Spatiaux
Site Agroparc 84914 Avignon Cedex 9, France

Tel: +33 (0) 4 32 72 21 58
Fax: +33 (0) 4 32 72 21 84



bioinfonews@pt.lu a �crit :
> Hi,
>
> I've been using R for a few weeks now, but consider myself still a  
> newbie, especially in what concerns the basics of data handling in R.
>
> My situation is this:
> I read in data from a database using RODBC, and then use "table" to  
> produce a table of "counts per years", table which I give to "plot".  
> All is well, as long as there are no gaps in the years sequence, but  
> now I have the following result (example):
>
> 1990 20
> 1991 15
> 1995 17
> 1997  9
> 1998 10
> 1999 11
> 2000  5
>
> The "plot" function is quite intelligent, in the sense that it draws  
> appropriate gaps in the x-axis between years, but not intelligent  
> enough to interrupt the data line during the gap. This gives the  
> impression that, although no year is marked on the x-axis between 1991  
> and 1995, there has been data for this period, which is not correct.
>
> What I tried to do is convert the table to a matrix, insert zeros for  
> the missing years using rbind and cbind, and convert the result back  
> to table. But the structure of this resulting table is not the same as  
> for the originating table, so that I need to pass "tab[1,]" to "plot".  
> It's no longer a contingency table in fact.
>
> I've seen in the mailing list archives that there is an issue on using  
> "table"s when matrixes or other structures would be more appropriate.
>
> I like the "table", because "plot" automatically plots the  
> corresponding years on the x-axis, which I find less error-prone than  
> adding the tick labels later by hand, i.e. the association between  
> years and counts is stronger.
>
> Also, as I tabulate counts of cases per gender, or per age categories,  
> I think a contingency table is the right thing to use, isn't it?
>
> I'd be glad on any advice about what would be the best data structure  
> to handle my situation, and I'd also like to know how I could  
> automagically check a list of "year, cases" rows against a fixed list  
> of years, insert zero or "NA" values for missing years, and get an  
> easily usable result that I can forward to "plot" or "barplot".
>
> Thanks a lot in advance,
>
> Anne-Mudle
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

  

t=1 0-y76