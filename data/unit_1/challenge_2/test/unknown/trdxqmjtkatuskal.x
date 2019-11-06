From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 05:46:51 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l569kohB019972
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 05:46:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l569jwqf008748;
	Wed, 6 Jun 2007 11:46:15 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, SARE_BAYES_5x8 autolearn=no version=3.2.0
Received: from web32804.mail.mud.yahoo.com (web32804.mail.mud.yahoo.com
	[68.142.206.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l569cp0Q006073
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 11:38:51 +0200
Received: (qmail 95825 invoked by uid 60001); 6 Jun 2007 09:38:51 -0000
X-YMail-OSG: lxDEfYIVM1m2HLzWj4Z5PKRODfXfT0XRP7zQrQnENmTDqPnSnZ4H8fmafDCqL0xoUCkqi2wx05AFsIwd_xaP_LJqSD3AJLxxsDRd
Received: from [130.15.106.174] by web32804.mail.mud.yahoo.com via HTTP;
	Wed, 06 Jun 2007 05:38:50 EDT
Date: Wed, 6 Jun 2007 05:38:50 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: Rina Miehs <rmi@danishmeat.dk>, r-help@stat.math.ethz.ch
In-Reply-To: <466692D1.76E3.003F.0@danishmeat.dk>
MIME-Version: 1.0
Message-ID: <939958.82036.qm@web32804.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Svar: Re:  help with simple R-question
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


--- Rina Miehs <rmi@danishmeat.dk> wrote:

> thanks, that works great!!
>  
> just have another thing...i the same area
> What if the class is list instead of array, how can
> you name the first unrecognized column?

I am not sure that I understand the question.  You
don't really have an unrecognised column in the
dataframe but an array of rownames ( I don't know how
they are stored).

I think you can do the same thing as you did for the
data.frame but as I say, I am not sure I understand
the question.  Would you post a little example?


>  
> Rina
> 
> >>> John Kane <jrkrideau@yahoo.ca> 06/05/07 3:17 >>>
> 
> --- Rina Miehs <rmi@danishmeat.dk> wrote:
> 
> > hello
> >  
> > what do i write for R to recognize both columns?
> >  
> > In the R-script downunder you can see that i use
> > tapply to get my
> > information out of my data, and then i need to use
> > it as a dataframe
> > with both columns! It is like R is using the first
> > column as an
> > observationnumber or something, how can i change
> > that?? 
> 
> It is using the names of the variables as rownames.
> 
> try 
> n.ant <- names(antall)
> antal1 <- data.frame(n.antal1, antal1)
> 
> 
> >  
> > > antal1 <-tapply(l1$omlob1,l1$farid,length)
> > > antal1
> > 1437987  10000100  10007995  10008295  10008792 
> > 10010203  10018703 
> > 10033401 
> >         2         3         3         2         3 
>  
> >      1         1  
> >       2 
> >  10048900  10050492  10055897  10076495  10081892 
> > 10094801  10100692 
> > 10101395 
> >         3         1         3         3         6 
>  
> >      2         5  
> >      20 
> >  10101495  10101595  10104692  10113592  10113697 
> > 10114297  10120797 
> > 10120897 
> >         1         5         4         2         6 
>  
> >     11         1  
> >       4 
> >  10121697  10121897  10121997  10133592  10142892 
> > 10142995  10146495 
> > 10150497 
> >        16         3         6         1         1 
>  
> >      6         4  
> >       4 
> >  10150692  10157092  10157292  10164792  10170892 
> > 10171795  10171895 
> > 10172300 
> >         5         2         4         4         4 
>  
> >      4         4  
> >       1 
> >  10175195  10187802  10192499  10192897  10198295 
> > 10200493  10201693 
> > 10211593 
> >         1         2         2         3         5 
>  
> >      1         3  
> >       5 
> > > antal1 <- data.frame(antal1)
> > > antal1
> >           antal1
> > 1437987        2
> > 10000100       3
> > 10007995       3
> > 10008295       2
> > 10008792       3
> > 10010203      NA
> > 10018703      NA
> > 10033401       2
> > 10048900       3
> > 10050492       1
> > 10055897       3
> > 10076495       3
> > 10081892       6
> > 10094801       2
> > 10100692       5
> >  
> > Thanks
> > Rina
> > 
> > [[alternative HTML version deleted]]
> > 
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help 
> > PLEASE do read the posting guide
> > http://www.R ( http://www.r/
> )-project.org/posting-guide.html
> > and provide commented, minimal, self-contained,
> > reproducible code.
> > 
> 
> 
> 
>       Get news delivered with the All new Yahoo!
> Mail.  Enjoy RSS feeds
> right on your Mail page. Start today at
> http://mrd.mail.yahoo.com/try_beta?.intl=ca 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

i
haJ�..f9ovfn