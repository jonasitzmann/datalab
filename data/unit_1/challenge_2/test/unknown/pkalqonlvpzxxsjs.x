From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 02:29:44 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l516ThhB005801
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 02:29:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l516T6je002675;
	Fri, 1 Jun 2007 08:29:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bay0-omc2-s9.bay0.hotmail.com (bay0-omc2-s9.bay0.hotmail.com
	[65.54.246.145])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l516SfL3002577
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 08:28:42 +0200
Received: from hotmail.com ([65.55.140.97]) by bay0-omc2-s9.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Thu, 31 May 2007 23:28:41 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Thu, 31 May 2007 23:28:41 -0700
Message-ID: <BAY135-F17AC8D5B5886730670BEB6C72C0@phx.gbl>
Received: from 65.55.140.123 by by135fd.bay135.hotmail.msn.com with HTTP;
	Fri, 01 Jun 2007 06:28:36 GMT
X-Originating-IP: [69.143.24.42]
X-Originating-Email: [sell_mirage_ne@hotmail.com]
X-Sender: sell_mirage_ne@hotmail.com
From: "Taka Matzmoto" <sell_mirage_ne@hotmail.com>
To: r-help@stat.math.ethz.ch
Date: Fri, 01 Jun 2007 01:28:36 -0500
Mime-Version: 1.0
X-OriginalArrivalTime: 01 Jun 2007 06:28:41.0029 (UTC)
	FILETIME=[187ADF50:01C7A416]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] 3 classification variables and one string variable
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

Dear R users
I have 3 classification variables (string type) and one string variable in a 
data.frame (x).

the first factor is a region (north, south, west, and east) (4 levels)
the second factor is a market type (A, B, C, and D) (4 levels)
the third factor is a item type (w, x, y, z) (4 levels)
the string variable is a seller first name.

My goal is to create a string vector consisting of seller first names for 
each cell of  4*4*4 contingency table. Some of the cells are empty.

For example, w type ITEM in B market in North region = c("John", "Smith")
I would like to create a name for the string vector using the three factor 
names (e.g., north.B.w)
I tried to use table(). It didn't work well. I could use some long tedious 
method like below but it doesn't look good.

north.B.w.ind <- x$region == "Noth" & x$market == "B" & x$item == "w"
north.B.w <- x[north.B.w.ind, "name"]


Any help will be appreciated.

Thanks

Taka,

_________________________________________________________________

Office Live http://clk.atdmt.com/MRT/go/aub0540003042mrt/direct/01/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

aHEsWmoI-crt9i