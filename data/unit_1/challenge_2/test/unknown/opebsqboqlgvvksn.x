From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 13:29:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CHThL9029725
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 13:29:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CHSjc1003372;
	Tue, 12 Jun 2007 19:29:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_80, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, SARE_MLH_Stock1 autolearn=no version=3.2.0
Received: from nys17a-3003.corpny.csfb.com (mail-gw18.credit-suisse.com
	[198.240.130.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5CHSKCn003247
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=FAIL)
	for <r-help@lists.R-project.org>; Tue, 12 Jun 2007 19:28:21 +0200
Received: by nys17a-3003.corpny.csfb.com;
	Tue, 12 Jun 2007 13:28:13 -0400 (EDT) 
X-Server-Uuid: 451BAB89-5416-43D7-AAFC-AFA88B572C1F
Message-ID: <FB9A739CA1DD3F4E81BF65BE4C6B0836502CF60E@enyc19p32002.corpny.csfb.com>
From: "Kalish, Josh" <josh.kalish@credit-suisse.com>
To: "'r-help@lists.R-project.org'" <r-help@stat.math.ethz.ch>
Date: Tue, 12 Jun 2007 18:27:50 +0100
MIME-Version: 1.0
X-Mailer: Internet Mail Service (5.5.2653.19)
X-WSS-ID: 6A70082A3KW126524-01-05
X-Spam: 0% (whitelisted)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Stock Price Correlation to Index Price Levels
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

This is probably trivial to most people out there, but I'm struggling with this.

I have a data set which contains the closing prices (properly adjusted for dividends and splits) for several hundred securities and the closing prices for a general stock market index (S&P 500).  I have no problem getting it into R with RODBC and manipulating it.  There are no missing values.  I can easily turn the closing price series into a daily return series.

I'm trying to determine for each of the securities it's correlation to the index both in terms of an overall "beta" and the variance associated with the name.  For example a security might happen to average out to looking like it tracks the index, but the variance may be so high that it is not reliable.  I need to figure out how to score these names against the index.

I've looked at the cor() and cov() functions, but I couldn't figure out exactly how to use them to get this information.

I can put this data into excel and cover up with the mean of daily return for each name divided by the index return.  I can also come up with the variance of this, which is a good start.  I'd much rather do this in R, and I'm sure it's much more suited for this.  Also, there may be a better approach to this and I would be interested in any suggestions.

To give you a practical example, at the end of the day I may have long and short positions in twenty names in a trading account.   If there is a net exposure to the index then I can hedge it with index futures.  But, if there's low correlation, then I can't.  

Thanks,

Josh Kalish



==============================================================================
Please access the attached hyperlink for an important electr...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

    

aH3lttt rtwIAUo