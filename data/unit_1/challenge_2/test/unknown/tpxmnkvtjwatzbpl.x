From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 03:00:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l586xbhB011925
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 02:59:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586wvIg002094;
	Fri, 8 Jun 2007 08:59:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, FH_MSGID_01C67 autolearn=no version=3.2.0
Received: from fw.netz.klinik.uni-mainz.de (fw.Netzwerk.Klinik.Uni-Mainz.DE
	[134.93.123.250])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l586wqSW002064
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 08:58:52 +0200
Received: from server12.ukmainz.de ([10.13.0.12])
	by fw.netz.klinik.uni-mainz.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.43) id 1HwYQt-0007kJ-Rn
	for r-help@stat.math.ethz.ch; Fri, 08 Jun 2007 08:58:51 +0200
Received: from ws302310 (ws-302-310.3med.klinik.uni-mainz.de [10.11.30.15])
	by server12.ukmainz.de (8.13.8/8.13.8/Debian-3) with ESMTP id
	l586wpqu007803
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 08:58:51 +0200
From: =?iso-8859-1?Q?Gunther_H=F6ning?= <gunther.hoening@ukmainz.de>
To: <r-help@stat.math.ethz.ch>
References: <000c01c7a965$d81ae220$0300a8c0@Vaio>
Date: Fri, 8 Jun 2007 08:58:53 +0200
Message-ID: <000001c7a99a$79d46990$0f1e0b0a@3med.klinik.unimainz.de>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-Reply-To: <000c01c7a965$d81ae220$0300a8c0@Vaio>
Thread-Index: Acepk/UOWX5tjdgIRA2IzzV6rFPzxQABeKuw
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Sorting dataframe by different columns
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

Dear list,

I have a very short question,
Suggest a dataframe of four columns.

df <- data.frame(w,x,y,z)

I want this ordered the following way:
first by :x, decreasing = FALSE
and 
secondly by: z, decreasing =TRUE

How can this be done ?

Thanks

Gunther

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

X a 0St 8aoet.Xr