From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 03:42:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E7gSL9018263
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 03:42:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E7fmrY029024;
	Thu, 14 Jun 2007 09:42:03 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5E7fg5j028988
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 09:41:43 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hyjxd-0004Ax-Ju
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 00:41:41 -0700
Message-ID: <11115436.post@talk.nabble.com>
Date: Thu, 14 Jun 2007 00:41:41 -0700 (PDT)
From: Vladimir Eremeev <wl2776@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <0946E293C7C22A45A0E33BA14FAA8D88F38822@500MAIL.goldbox.com>
MIME-Version: 1.0
X-Nabble-From: wl2776@gmail.com
References: <0946E293C7C22A45A0E33BA14FAA8D88F38822@500MAIL.goldbox.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Formatted Data File Question for Clustering -Quickie Project
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


The "R Data Import/Export" guide was mentioned already, it contains
everything you should know about data exchange between R and other software.

In case it says nothing about dates, try as.Date() and strftime().
For your example below,
  as.Date("1/31/1994",format="%m/%d/%Y")
works.


ngottlieb wrote:
> 
> I am trying to learn how to format Ascii data files for scan or read
> into R.
> 
> Precisely for a quickie project, I found some code (at end of this
> email) to do exactly what I need:
> To cluster and graph a dendrogram from package (stats).
> 
> I am stuck on how to format a text file to run the script.
> I looked at the dataset USArrests (which would be replaced by my data
> and labels) using UltraEdit. That data appears to be in binary format
> and I would simply like a readable ASCII text file.
> 
> How can I:
> A) format this data to a file for the script below? 
> B) I would like to use squared Euclidean distance, can hclust support
> this?
> 
> Thanks,
> Neil Gottlieb
> 
> Here is sub-set example of my data set, return series to cluster: 13
> cases by 36 observations):
> Month	  Convertible Arbitrage	  Dedicated Short Bias	  Emerging
> Markets	
> 1/31/1994	0.004	-0.016	0.105	
> 2/28/1994	0.002	0.020	-0.011	
> 3/31/1994	-0.010	0.072	-0.046	
> 
> [skip]
> 

-- 
View this message in context: http://www.nabble.com/Formatted-Data-File-Question-for-Clustering--Quickie-Project-tf3915926.html#a11115436
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

6wHAJPC1ba.m3