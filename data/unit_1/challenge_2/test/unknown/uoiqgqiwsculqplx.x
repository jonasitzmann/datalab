From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 14:46:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EIkCL9025255
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 14:46:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EIjM0w023246;
	Thu, 14 Jun 2007 20:45:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail04.syd.optusnet.com.au (mail04.syd.optusnet.com.au
	[211.29.132.185])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EIjAke023194
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:45:13 +0200
Received: from c220-237-183-166.frank1.vic.optusnet.com.au
	(c220-237-183-166.frank1.vic.optusnet.com.au [220.237.183.166])
	by mail04.syd.optusnet.com.au (8.13.1/8.13.1) with ESMTP id
	l5EIj3x3012655
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jun 2007 04:45:04 +1000
Received: from c220-237-183-166.frank1.vic.optusnet.com.au (localhost
	[127.0.0.1])
	by c220-237-183-166.frank1.vic.optusnet.com.au (8.13.8/8.13.8) with
	ESMTP id l5EIimQ6047951; Fri, 15 Jun 2007 04:44:48 +1000 (EST)
	(envelope-from A.Robinson@ms.unimelb.edu.au)
Received: (from andrewr@localhost)
	by c220-237-183-166.frank1.vic.optusnet.com.au (8.13.8/8.13.8/Submit)
	id l5EIikWt047950; Fri, 15 Jun 2007 04:44:46 +1000 (EST)
	(envelope-from A.Robinson@ms.unimelb.edu.au)
X-Authentication-Warning: c220-237-183-166.frank1.vic.optusnet.com.au: andrewr
	set sender to A.Robinson@ms.unimelb.edu.au using -f
Date: Fri, 15 Jun 2007 04:44:46 +1000
From: Andrew Robinson <A.Robinson@ms.unimelb.edu.au>
To: Ndoye Souleymane <ndoye_p@hotmail.com>
Message-ID: <20070614184446.GH63160@ms.unimelb.edu.au>
References: <1314811283.20070614112554@gmail.com>
	<BAY116-F3571CED6E53E4FC4AD677A991F0@phx.gbl>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BAY116-F3571CED6E53E4FC4AD677A991F0@phx.gbl>
User-Agent: Mutt/1.4.2.2i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: genomenet@gmail.com, r-help@stat.math.ethz.ch
Subject: Re: [R] how to fit y=m*x
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

Probably

lm(y ~ x - 1)

will be better.  y~x doesn't remove the intercept, and ln() is a typo
(I hope!)

Andrew

On Thu, Jun 14, 2007 at 06:33:02PM +0000, Ndoye Souleymane wrote:
> Hi,
> 
> try : ln(y~x)
> 
> 
> >From: genomenet@gmail.com
> >Reply-To: genomenet@gmail.com
> >To: r-help@stat.math.ethz.ch
> >Subject: [R] how to fit y=m*x
> >Date: Thu, 14 Jun 2007 11:25:54 -0700
> >
> >Hi There,
> >
> >I have a set of data (xi,yi).I want to fit them with the equation
> >y=mx.
> >
> >note: in the above equation, there is no intercept.
> >
> >I don't know how to use common software such as R , matlab, sas, or
> >spss to do this kind of regression.
> >
> >Does anyone know how to do this?
> >
> >I know it is easy to use least square method to do this by
> >programming. But I want to find if there exists some common software
> >which can do this.
> >
> >Thank you very much.
> >
> >Van
> >
> >______________________________________________
> >R-help@stat.math.ethz.ch mailing list
> >https://stat.ethz.ch/mailman/listinfo/r-help
> >PLEASE do read the posting guide 
> >http://www.R-project.org/posting-guide.html
> >and provide commented, minimal, self-contained, reproducible code.
> 
> _________________________________________________________________
> D?couvrez le Blog heroic Fantaisy d'Eragon!
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

-- 
Andrew Robinson  
Department of Mathematics and Statistics            Tel: +61-3-8344-9763
University of Melbourne, VIC 3010 Australia         Fax: +61-3-8344-4599
http://www.ms.unimelb.edu.au/~andrewpr
http://blogs.mbs.edu/fishing-in-the-bay/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          


biols