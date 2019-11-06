From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 02:56:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l556ubhB005173
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 02:56:41 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l556u7wE027619;
	Tue, 5 Jun 2007 08:56:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pastel.toulouse.inra.fr (pastel.toulouse.inra.fr
	[147.99.111.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l556tx5k027579
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 08:56:00 +0200
Received: from [147.99.96.190] (camboue.toulouse.inra.fr [147.99.96.190])
	by pastel.toulouse.inra.fr (/8.13.7) with ESMTP id l556twPk026750
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 08:55:59 +0200 (MEST)
Message-ID: <466508D7.20005@toulouse.inra.fr>
Date: Tue, 05 Jun 2007 08:55:19 +0200
From: Laurence Amilhat <Laurence.Amilhat@toulouse.inra.fr>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Greylist: Sender DNS name whitelisted, not delayed by milter-greylist-1.6
	(pastel.toulouse.inra.fr [147.99.111.242]);
	Tue, 05 Jun 2007 08:55:59 +0200 (MEST)
X-j-chkmail-Score: MSGID : 466508FE.000 on pastel : j-chkmail score : X : 5/50
	0
X-Miltered: at pastel with ID 466508FE.000 by Joe's j-chkmail
	(http://j-chkmail.ensmp.fr)!
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-Virus-Status: Clean
Subject: [R] multiple plot in odfWeave
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

Hello R users,


I found the odfWeave package to create an odf document. It seems to be a 
very nice tool.
So i tried to used it to create a report with multiple plot:

I create an odt file with some code inside:
I connect to a mysql database
I get a list of projects
foreach project I would like to make a plot (a map exactly)

then in a R console I use the odfweave (inFile, outFile) function.


When I try this, with only one program without the loop on the program 
names, it
draw a map on my odt file, but when i a m doing the loop it doesn't work.

When i try to launch the plot (using the loop) in R console directly, 
without odfweave, it also works.

Do you know if it is possible to make successive plot in odfWeave document?

Thank you for your help,


Laurence.


Here the code:

My odt file: test2.odt

<<loadData, results = hide, echo = FALSE>>=

@

<<Connection, echo = FALSE, fig = TRUE>>=

library("RMySQL")
library(maps)
library(mapdata)
library(spmaps)
library(grid)
library(plotrix)

drv <- dbDriver("MySQL")
con <- dbConnect(drv, user="lamilhat", password="******", 
dbname="Aquagenome", host="mymachine.toulouse.inra.fr")

@

Liste des projets:

<<carte2, echo = FALSE, results= verbatim, fig = TRUE>>=

lp <- dbSendQuery(con, "SELECT nom FROM projets")
projets <- fetch(lp)
nbr=dim(projets)[1]
for (i in 1:nbr)
{
    monprojet=(projets)[i,1]
    myquery=paste("SELECT s.longitude, s.latitude, o.orgashort FROM 
organisme o JOIN scientist s ON o.codeorga=s.codeorga JOIN partenaire p 
ON p.codescientist=s.codescientist JOIN projets ON 
projets.codeproj=p.codeproj WHERE projets.nom LIKE \"",monprojet,"\" 
ORDER BY s.longitude", sep="")

    rs <- dbSendQuery(con, myquery )
    df <- fetch(rs)

    print(df)

    map(database="world", xlim=c(-15,40),ylim=c(27,71), fill=TRUE, 
col="#FFFFCC")
    points(df$longitude,df$latitude, col="red", pch=16)    
                                                 
spread.labels(df$longitude,df$latitude,df$orgashort,0,bg="#CCFFFF", 
border=TRUE, cex=0.8, xpad=0.5, ypad=0.8, font=6)
}

@



Then in the R console:

 >library (odfWeave)
 >inFile <- "/home/lamilhat/AQUAGENOME/PRESENTATION/RAPPORTS/test_2.odt"
 >outFile <- 
"/home/lamilhat/AQUAGENOME/PRESENTATION/RAPPORTS/test_2_out.odt"

 >imageDefs <- getImageDefs()
 >imageDefs$dispWidth <- 7
 >imageDefs$dispHeight <- 6
 >setImageDefs(imageDefs)

 >odfWeave(inFile, outFile)









-- 
====================================================================
= Laurence Amilhat    INRA Toulouse 31326 Castanet-Tolosan     	   = 
= Tel: 33 5 61 28 53 34   Email: laurence.amilhat@toulouse.inra.fr =

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

iI e8=