From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 13:12:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EHCXL9024362
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 13:12:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EHC3Wm020783;
	Thu, 14 Jun 2007 19:12:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: ***
X-Spam-Status: No, score=3.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SARE_FORGED_CITI,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from mail.citigroup.com (smtp5.citigroup.com [192.193.71.4])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ECF1ks004709
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 14:15:04 +0200
Received: from imbarc-sg02.apac.nsroot.net (imbarc-sg02.ap.ssmb.com
	[163.37.24.22])
	by imbaspam-sg04.apacdmz.dmzroot.net (8.13.8/8.13.8/SSMB_EXT/ev: 16778
	$) with ESMTP id l5ECEuwL000214; Thu, 14 Jun 2007 12:14:58 GMT
Received: from mailhub-sg02.apac.nsroot.net (mailhub-sg02.apac.nsroot.net
	[163.36.32.97])
	by imbarc-sg02.apac.nsroot.net (8.13.7/8.13.7/SSMB_QQQ_IN/1.1) with
	ESMTP id l5ECEkRP015037; Thu, 14 Jun 2007 12:14:46 GMT
Received: from EXHKSM01.apac.nsroot.net (exhksm01.apac.nsroot.net
	[169.181.10.89])
	by mailhub-sg02.apac.nsroot.net (8.13.7/8.13.7/CG_HUB) with ESMTP id
	l5ECEgU0016600; Thu, 14 Jun 2007 12:14:45 GMT
Received: from exinmb04.apac.nsroot.net ([163.36.240.27]) by
	EXHKSM01.apac.nsroot.net with Microsoft SMTPSVC(5.0.2195.6713); 
	Thu, 14 Jun 2007 20:14:44 +0800
X-MimeOLE: Produced By Microsoft Exchange V6.0.6619.12
content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Thu, 14 Jun 2007 17:44:36 +0530
Message-ID: <6E2AF71DA2E3F241A66122F3F90F32140DF5E9@exinmb04-bkp.apac.nsroot.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] Confusion with sapply
Thread-Index: AcetvihfdT49hGclRbCHwVZYkvbEKwAv2LrA
From: "Patnaik, Tirthankar " <tirthankar.patnaik@citi.com>
To: "Gabor Grothendieck" <ggrothendieck@gmail.com>
X-OriginalArrivalTime: 14 Jun 2007 12:14:44.0246 (UTC)
	FILETIME=[97B11B60:01C7AE7D]
X-Scanned-By: MIMEDefang 2.52 on 192.193.71.4
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5ECF1ks004709
X-Mailman-Approved-At: Thu, 14 Jun 2007 19:12:01 +0200
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Confusion with sapply
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

Thanks Gabor, this is cool!

Best,
-Tir 

> -----Original Message-----
> From: Gabor Grothendieck [mailto:ggrothendieck@gmail.com] 
> Sent: Wednesday, June 13, 2007 6:53 PM
> To: Patnaik, Tirthankar [GWM-CIR]
> Cc: r-help@stat.math.ethz.ch
> Subject: Re: [R] Confusion with sapply
> 
> Try this. It takes a Date class date and in the first line 
> month.day.year converts unclass(x) to chron.  In the last 
> line of the function we convert back to Date class.  Its 
> already vectorized so sapply is unneeded:
> 
> library(chron)
> f <- function(x) with(month.day.year(unclass(x)), {
> 	month <- ifelse(month == 6 | month == 9, 3, month)
> 	year <- ifelse(month == 12, year + 1, year)
> 	as.Date(paste(year, month, day, sep = "-"))
> })
> 
> Running the last line gives:
> 
> > # test
> > f(seq(Sys.Date(), length = 12, by = "month"))
>  [1] "2007-03-13" "2007-07-13" "2007-08-13" "2007-03-13" "2007-10-13"
>  [6] "2007-11-13" "2008-12-13" "2008-01-13" "2008-02-13" "2008-03-13"
> [11] "2008-04-13" "2008-05-13"
> 
> 
> On 6/13/07, Patnaik, Tirthankar <tirthankar.patnaik@citi.com> wrote:
> > Hi,
> >  I have some confusion in applying a function over a column.
> >
> > Here's my function. I just need to shift non-March 
> month-ends to March 
> > month-ends. Initially I tried seq.dates, but one cannot give a 
> > negative increment (decrement) here.
> >
> > 
> return(as.Date(seq.dates(format(xdate,"%m/%d/%Y"),by="months",len=4)[4
> > ])
> > )
> >
> > Hence this simple function:
> >
> > > mydate <- as.Date("2006-01-01")
> > >
> > > # Function to shift non-March company-reporting dates to March.
> > > Set2March <- function(xdate){
> > + # Combines non-March months into March months:
> > + # Dec2006 -> Mar2007
> > + # Mar2006 -> Mar2006
> > + # Jun2006 -> Mar2006
> > + # Sep2006 -> Mar2006
> > + # VERY Specific code.
> > +     Month <- format(xdate,"%m")
> > +     wDate <- month.day.year(julian(xdate))
> > +     if (Month=="12"){
> > +         wDate$year <- wDate$year + 1
> > +         wDate$month <- 3
> > +     }else
> > +     if (Month=="06"){
> > +         wDate$month <- 3
> > +     }else
> > +     if (Month=="09"){
> > +         wDate$month <- 3
> > +         wDate$day <- wDate$day + 1
> > +     }else warning ("No Changes made to the month, since 
> month is not
> > one of (6,9,12)")
> > +     cDate <- 
> chron(paste(wDate$month,wDate$day,wDate$year,sep="/"))
> > +     return(as.Date(as.yearmon(as.Date(cDate,"%m/%d/%y")),frac=1))
> > + }
> > > Set2March(as.Date("2006-06-30"))
> > [1] "2006-03-31"
> > > Set2March(mydate)
> > [1] "2006-01-31"
> > Warning message:
> > No Changes made to the month, since month is not one of (6,9,12) in:
> > Set2March(mydate)
> > >
> >
> > Works well when I use it on a single date. Then I try it on 
> a vector:
> >
> >
> > > dc <- seq(as.Date("2006-01-01"),len=10, by="month") dc
> >  [1] "2006-01-01" "2006-02-01" "2006-03-01" "2006-04-01" 
> "2006-05-01"
> > "2006-06-01" "2006-07-01" "2006-08-01"
> >  [9] "2006-09-01" "2006-10-01"
> >
> >
> > > sapply(as.vector(dc),Set2March)
> > Error in prettyNum(.Internal(format(x, trim, digits, 
> nsmall, width, 3,
> > :
> >        unimplemented type 'character' in 'asLogical'
> > >
> >
> > What am I missing here? Shouldn't the function work with the sapply 
> > working on each entry?
> >
> >
> > TIA and best,
> > -Tir
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide 
> > http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

waq 