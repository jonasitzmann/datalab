From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 13:38:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56HcDhB024432
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 13:38:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56Hagg6011837;
	Wed, 6 Jun 2007 19:36:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bureau14.utcc.utoronto.ca (bureau14.utcc.utoronto.ca
	[128.100.132.42])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56HaZwS011815
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 19:36:36 +0200
Received: from dhcp58.dls.utoronto.ca ([128.100.115.58] EHLO [10.100.225.58]
	ident: IDENT-NOT-QUERIED [port 6360]) by
	bureau14.utcc.utoronto.ca with ESMTP id <890106-28265>;
	Wed, 6 Jun 2007 13:36:28 -0400
Message-ID: <4666F0C1.6070108@utoronto.ca>
Date: Wed, 06 Jun 2007 13:37:05 -0400
From: "Kevin E. Thorpe" <kevin.thorpe@utoronto.ca>
Organization: University of Toronto
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: Yanqin Yang <yanqin_yang@yahoo.com>
References: <820809.9299.qm@web53506.mail.re2.yahoo.com>
In-Reply-To: <820809.9299.qm@web53506.mail.re2.yahoo.com>
X-Enigmail-Version: 0.94.2.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] how to update R version
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

Yanqin Yang wrote:
> Hello,
> 
> I am new in using Linux R. Would someone tell me what the best way to
> update my current R 2.3.0 to R 2.5.0? I want to keep my current
> library packages. Do I have to erase the older version and install
> the newer version? In that case, I need to re-download all the
> packages I need. Any short way to do the update?
> 
> Thanks for your help!
> 
> yanqin
> 

Since I compile from source, I simply compile the new version and
install it to the same location as the old.  Then I run
update.packages() to update the additional packages I have
installed. Of course, I may get bit by this approach one day.

It is possible to have more than one directory for packages.
One suggestion I've seen is to collect your "user installed"
packages in a different directory than the base and recommended
packages.

-- 
Kevin E. Thorpe
Biostatistician/Trialist, Knowledge Translation Program
Assistant Professor, Department of Public Health Sciences
Faculty of Medicine, University of Toronto
email: kevin.thorpe@utoronto.ca  Tel: 416.864.5776  Fax: 416.864.6057

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

atHR=:gnD