From r-help-bounces@stat.math.ethz.ch  Mon Jun 11 11:36:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BFaVL9015716
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 11:36:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFZehJ013419;
	Mon, 11 Jun 2007 17:36:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from relay12.bu.edu (relay12.bu.edu [128.197.27.63])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5BFWV5B011841
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 17:32:31 +0200
X-Envelope-From: qyang@bu.edu
Received: from [155.41.160.108] (bcd-dhcp-160-108.bumc.bu.edu [155.41.160.108])
	by relay12.bu.edu (8.13.1/8.13.1) with ESMTP id l5BFW0g8015288
	for <r-help@stat.math.ethz.ch>; Mon, 11 Jun 2007 11:32:01 -0400
Message-ID: <466D6AF0.6080208@bu.edu>
Date: Mon, 11 Jun 2007 11:32:00 -0400
From: Qiong Yang <qyang@bu.edu>
User-Agent: Mozilla Thunderbird 1.0.7 (Windows/20050923)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] lmekin() function in kinship package
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

Hi,

I had a problem with the lmekin() in kinship package: 
lmekin() can not be wrapped into another function

library(kinship)
#creat an example dataset
xx<-rnorm(100)
yy<-rnorm(100)
id<-1:100  
test.dat<-as.data.frame(cbind(xx,yy,id))
rm(xx,yy,id)
a<-bdsmatrix(rep(10,10),rep(block,10),dimnames=list(c(1:100),c(1:100)))  
#100x100 block (n=10) diagonal matrix to indicate the correlation between the 100 observations

#this works, call lmekin directly
lmekin(yy~xx,random=~1|id,data=test.dat,varlist=a,na.action=na.omit)

#this doesn't work, wrap into another function

fo<-function(x,y,z,data)lmekin(y~x,random=~1|z,data=test.dat,varlist=a,na.action=na.omit)
fo(xx,yy,id)

Error in eval(expr, envir, enclos) : Object "y" not found

I did line by line debug within lmekin(). I found the problem was from 
line #25
m <- eval(m, sys.parent())

Here is the print(m) result before this line
[1] model.frame(data = data, na.action = na.omit, formula = y ~ x +z)

I will appreciate anyone help me figure out why data cannot be passed 
to the arguments when lmekin() is wrapped into another function? And what can be done
to fix it? 


Thanks

Qiong

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

E yI-YbzesA