From r-help-bounces@stat.math.ethz.ch  Fri Jun 29 13:46:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5THkbL9028967
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 13:46:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5THjfI0020105;
	Fri, 29 Jun 2007 19:45:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mmp4.nems.noaa.gov (mail.afsc.noaa.gov [161.55.120.188])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5THjTmX019623
	for <r-help@lists.R-project.org>; Fri, 29 Jun 2007 19:45:29 +0200
Received: from [161.55.166.111] by mmp4.nems.noaa.gov
	(Sun Java System Messaging Server 6.2-7.05 (built Sep  5 2006))
	with ESMTPSA id <0JKE00DSERZMXXB0@mmp4.nems.noaa.gov> for
	r-help@lists.R-project.org; Fri, 29 Jun 2007 13:45:27 -0400 (EDT)
Date: Fri, 29 Jun 2007 10:45:15 -0700
From: Suzan Pool <Suzan.Pool@noaa.gov>
To: r-help@stat.math.ethz.ch
Message-id: <4685452B.2080608@noaa.gov>
MIME-version: 1.0
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] modify tick labels in 3D GAM plot
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

Hello,

I have a GAM plot in 3D which was generated from the mgcv package 
(plot.gam) which seems to call the persp( ) function from graphics.  
This plot is one of three being plotted in the graphics window to copy 
to a manuscript.  The plot's rotation has been set to clearly show the 
response surface generated in GAM.  The resulting plot is small enough 
that the tick labels overlap tick marks, start in the plot, and overlap 
each other.  I could reduce the font size using cex, however, doing so 
would make it too small for the manuscript.  Using adj in par( ) does 
not change anything in the plot.gam( ) function, only the text( ) 
function.  The tick labels on the x-axis need adjustment to the right 
and those on the y-axis need adjustment to the left.
 
Here is the code:

library(mgcv)
gam.from.mgcv<-gam(response ~ s(var1) + s(var2, var3) + s(var4) + 
offset(var5),
    family=poisson, scale=-1, gamma=1.4, data=globecdata)
par(mfrow=c(1,3))
par(cex=1, xpd=NA)
plot(gam.from.mgcv, select=2, pers=T, theta=-65, phi=20, scale=0,
      xlab="\n\n\nLongitude", ylab="\n\nLatitude", main="",
      ticktype="detailed", expand=0.8)
par(srt=100, adj=0.5)  #angle and alignment to set for z label
text(-0.5,-0.06,"Effect\n\n")  #x,y coordinates to place z label
 
How do I adjust the tick labels?
 
Also, I would like to remove the negative signs from the tick labels on 
the x-axis for longitude.  Is there a way to use the abs( ) function for 
this?
 
Thanks,
Suzan

-- 
Suzan Pool
Oregon State University
Cooperative Institute for Marine Resources Studies

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

48d.