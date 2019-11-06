From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 07:32:56 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MBWrL9005631
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 07:32:55 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MBWGqp025061;
	Fri, 22 Jun 2007 13:32:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FH_HOST_EQ_D_D_D_DB,
	RDNS_DYNAMIC autolearn=no version=3.2.0
Received: from mail.bitwrit.com.au (3.202.233.220.exetel.com.au
	[220.233.202.3])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MBW5hB025011
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <R-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 13:32:08 +0200
Received: from [192.168.1.21] ([192.168.1.21])
	by mail.bitwrit.com.au (8.13.1/8.13.1) with ESMTP id l5MBVxrH023537;
	Fri, 22 Jun 2007 21:31:59 +1000
Message-ID: <467BB43D.3060004@bitwrit.com.au>
Date: Fri, 22 Jun 2007 21:36:29 +1000
From: Jim Lemon <jim@bitwrit.com.au>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.7.8) Gecko/20050513 Fedora/1.7.8-2
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: Jose Borreguero <borreguero@gmail.com>, R-help@stat.math.ethz.ch
References: <7cced4ed0706201302y3df7a375hbcf775b58a0cb2bc@mail.gmail.com>
In-Reply-To: <7cced4ed0706201302y3df7a375hbcf775b58a0cb2bc@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] how to create cumulative histogram from two
	independent	variables?
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

Jose Borreguero wrote:
> Hi all,
> I am extremely newbie to R. Can anybody jump-start me with any clues as to
> how do I get a cumulative histogram from two independent variables,
> cumhist(X,Y) ?
> -jose
> 
Hi Jose,

Is this something like you want?

var1<-sample(1:10,100,TRUE)
var2<-sample(1:10,100,TRUE)
barplot(rbind(hist(var1,plot=FALSE)$counts,hist(var2,plot=FALSE)$counts))

Jim

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

kcjagl5