From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 13:51:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51HovhB012875
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 13:50:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51HnBHQ018348;
	Fri, 1 Jun 2007 19:49:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mdhost1.centroin.com.br (smtp.centroin.com.br [200.225.63.205])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51Hn2gR018295
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 19:49:04 +0200
Received: from centroin.com.br (trex.centroin.com.br [200.225.63.134])
	by mdhost1.centroin.com.br (8.14.0/8.14.0/CIP SMTP HOST) with ESMTP id
	l51HmsEW026328; Fri, 1 Jun 2007 14:49:16 -0259 (BRT)
	(envelope-from albmont@centroin.com.br)
From: "Alberto Monteiro" <albmont@centroin.com.br>
To: "Horace Tso" <Horace.Tso@pgn.com>, <r-help@stat.math.ethz.ch>
Date: Fri, 1 Jun 2007 15:49:16 -0200
Message-Id: <20070601174731.M73712@centroin.com.br>
In-Reply-To: <465FDDDE0200006500005FCA@pgn.com>
References: <465FDDDE0200006500005FCA@pgn.com>
X-Mailer: CIP WebMail 2.51 20050627
X-OriginatingIP: 200.179.65.110 (albmont)
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Excel calling R functions
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


Horace Tso wrote:
> 
> Is it possible to have Excel call a R function. If not, how about 
> making Excel send off a command to call a R script and then read the 
> result back into Excel.
> 
> I know, I know, this should belong to some Excel forum, but i just 
> try my luck here.
> 
You can always put R in loop, checking each second or minute
for the _existence_ of a file. As soon as this file is create,
run an R function, and output a file.

Then, do the same in Excel: write a file (I _think_ this is possible
with macros), enter into a loop waiting for the other file to
be created, and procceed after that.

Slow, but better than to use Excel alone :-)

Alberto Monteiro

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

"hnee0tgl4ier_6h