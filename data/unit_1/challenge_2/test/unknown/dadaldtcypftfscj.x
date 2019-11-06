From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 04:38:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D8cDL9005514
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 04:38:14 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8bekL004627;
	Wed, 13 Jun 2007 10:37:54 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8Kv9c028997
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 10:20:59 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HyO65-0002by-AL
	for r-help@stat.math.ethz.ch; Wed, 13 Jun 2007 01:20:57 -0700
Message-ID: <11094865.post@talk.nabble.com>
Date: Wed, 13 Jun 2007 01:20:57 -0700 (PDT)
From: Vladimir Eremeev <wl2776@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <f4min7$hu5$1@sea.gmane.org>
MIME-Version: 1.0
X-Nabble-From: wl2776@gmail.com
References: <f4min7$hu5$1@sea.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Read Windows-like .INI files into R data structure?
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


One more question, inspired by this one, just to increase my R skill level.

Earl F. Glynn wrote:
> 
> I need to process some datasets where the configuration information was 
> stored in .INI-like files, i.e., text files with sections like this:
> 
> [Section1]
> var1=value1
> var2=value2
> [Section2]
> A=value3
> B=value4
> 
"var1=value1", "A=value3" is almost pure R code.
Is it possible to use this feature to solve the problem? 
That is, something like eval(as.expression("A=value3"))  and assign (store)
the result in "lst$Section2" environment.

"lst" is a newly created list, containing the contents of the file being
processed.
-- 
View this message in context: http://www.nabble.com/Read-Windows-like-.INI-files-into-R-data-structure--tf3908740.html#a11094865
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

.>Jne Gac:9tJlo