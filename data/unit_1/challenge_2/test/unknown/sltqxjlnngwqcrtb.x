From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 07:27:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EBRgL9020712
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 07:27:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EBR8UE019528;
	Thu, 14 Jun 2007 13:27:18 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=AWL, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EBOaSb019050
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 13:24:37 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HynRM-0001G0-5V
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 04:24:36 -0700
Message-ID: <11118347.post@talk.nabble.com>
Date: Thu, 14 Jun 2007 04:24:36 -0700 (PDT)
From: Vladimir Eremeev <wl2776@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <11113853.post@talk.nabble.com>
MIME-Version: 1.0
X-Nabble-From: wl2776@gmail.com
References: <11113853.post@talk.nabble.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] test if files in current folder
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




runner wrote:
> 
> I want to test if the files are already in my current folder before I
> download or copy from somewhere else. What's in my mind is to check if a
> file is open-able in current folder. Is there a way to do this, like in
> Perl: 
> if (open()) { do sth}?
> 
> To put it another way, how to extract all file names in a folder to an
> array or list? 
> 

?files
?dir

BTW, Perl has nice -X functions, which allow file testing without explicit
opening:
 http://perldoc.perl.org/functions/-X.html
-- 
View this message in context: http://www.nabble.com/test-if-files-in-current-folder-tf3919587.html#a11118347
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

gsxolbLlt>