From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 06:32:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56AWMhB020334
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 06:32:23 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56AUmfj027116;
	Wed, 6 Jun 2007 12:31:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailgw02.nhh.no (mailgw02.nhh.no [158.37.108.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56AUASp026944
	for <R-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 12:30:11 +0200
X-IronPort-AV: E=Sophos;i="4.16,389,1175464800"; 
   d="scan'208";a="4475016"
Received: from inti.valuta.nhh.no ([158.37.108.136])
	by mailgw-02.nhh.no with ESMTP; 06 Jun 2007 12:30:10 +0200
Received: from reclus.nhh.no ([158.37.107.20]) by inti.valuta.nhh.no with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 6 Jun 2007 12:30:10 +0200
Date: Wed, 6 Jun 2007 12:30:10 +0200 (CEST)
From: Roger Bivand <Roger.Bivand@nhh.no>
X-X-Sender: rsb@reclus.nhh.no
To: jessica.gervais@tudor.lu
In-Reply-To: <OF96DE731E.71C43DCF-ONC12572F2.0034B1D4-C12572F2.0034B1E8@tudor.lu>
Message-ID: <Pine.LNX.4.44.0706061209560.16522-100000@reclus.nhh.no>
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Jun 2007 10:30:10.0427 (UTC)
	FILETIME=[A8E64CB0:01C7A825]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] spgrass6 and aggregation (bis)
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: Roger.Bivand@nhh.no
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

On Wed, 6 Jun 2007 jessica.gervais@tudor.lu wrote:

> 
> Dear all,
> 
> I have some additionale question concerning the spgrass6 package.
> 
> * When you set a region in GRASS, does the readGRASS6 function in R only
> load data contained in the zoomed region or the whole map ?

readRAST6() uses the current region, readVECT6() should not clip to the 
current region.

> 
> * When you have a MASK map in grass, does the readGRASS6 function in R only
> load data contained inside the MASK area ?
> 

MASK is respected (in spearfish):

r.mask input=rushmore
d.rast elevation.dem
R
library(spgrass6)
el <- readRAST6("elevation.dem")
summary(el)
image(el)

> 
> Could this be the problem ?

No, the problem was that you did not pay attention to the class of the 
data objects you were reading. You could have done:

my_SGDF <- readRAST6(c("landuse_mapname_in_grass", 
  "catchement_mapname_in_grass",
  "precipitation_mapname_in_grass"), cat=c(TRUE, TRUE, FALSE))

treating the whole as a single SpatialGridDataFrame, and the first two 
maps as factors (categorical).

Please remember that class(), summary(), image(), and other methods let 
you look at the data you have read - here I would certainly do:

summary(my_SGDF)
image(my_SGDF, "precipitation_mapname_in_grass")

You can then try:

my_DF <- as(my_SGDF, "data.frame")
aggregate(my_DF, by=list(my_DF$catchement_mapname_in_grass, 
  my_DF$landuse_mapname_in_grass), sum, na.rm=TRUE)

although I'm not sure whether this is what you need.

There are two mailing lists that are better suited to this question, 
R-sig-geo on the R side, and STATGRASS on the GRASS side, both with a fair 
number of experienced helpers.

> 
> Thanks,
> 
> Jessica
> 
> 
> ########################################################################3
> 
> Dear all,
> 
> 
> I am exporting grass map into R thanks to the very useful spgrass6 package.
> 
> library(spgrass6)
> 
> # I have 3 map I am working with a MASK map of a specific area.
> 
> # 1) a landuse map
> landuse<-readRAST6("landuse_mapname_in_grass")
> 
> # 2) a catchment map which divide the area in several catchements
> catchment<-readRAST6("catchement_mapname_in_grass")
> 
> # 3) a precipitation map
> precipitation<-readRAST6("precipitation_mapname_in_grass")
> 
> 
> # then I would like to sum the precipitation spatialy over each catchment
> and landuse. So, first I cbind all maps with cbind
> 
> MAP<-cbind(landuse,catchment,precipitation)
> 
> # then I use the aggregate function
> SUM<-aggregate(MAP[3],by=list(MAP[1],MAP[2]),sum,na.rm=TRUE)
> # here is the problem !!!
> Error in as.vector(x, mode) : invalid argument 'mode'
> 
> ....
> 
> I don't find any idea to solve this...
> 
> Does anyone has a suggestion ??
> 
> Thanks in advance
> 
> 
> Jess
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 

-- 
Roger Bivand
Economic Geography Section, Department of Economics, Norwegian School of
Economics and Business Administration, Helleveien 30, N-5045 Bergen,
Norway. voice: +47 55 95 93 55; fax +47 55 95 95 43
e-mail: Roger.Bivand@nhh.no

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



1p.ppr
