From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 14:14:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59IE7L9012754
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 14:14:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59ICgB6012015;
	Sat, 9 Jun 2007 20:12:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32807.mail.mud.yahoo.com (web32807.mail.mud.yahoo.com
	[68.142.206.37])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l59ICVFP011940
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 20:12:33 +0200
Received: (qmail 16840 invoked by uid 60001); 9 Jun 2007 18:12:30 -0000
X-YMail-OSG: NHpYaNQVM1lNn6eZVT4tR0ma60k3GzKAsf6XJS1HDqRzhB0n6DE0.W8Llfh2mEjIUETAMUSTJ7Nm6LWxfBpkgxaZGCWCbT1.XBWooU1IA4kiFm79389QeZuMGYEC3A--
Received: from [130.15.106.174] by web32807.mail.mud.yahoo.com via HTTP;
	Sat, 09 Jun 2007 14:12:30 EDT
Date: Sat, 9 Jun 2007 14:12:30 -0400 (EDT)
From: John Kane <jrkrideau@yahoo.ca>
To: R R-help <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <752272.16499.qm@web32807.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Lines in dotchart & dotplot ?
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

Is it possible to use dotchart or dotplot and set the
lines in such a way that they only extend from the
left y-axis to the data point?  

I seem to remember that Wm Cleveland did this in his
1985 book  "The elements of graphing data".

In cases where one has a true starting or O point on
the x-scale this layout seems to be very effective in
displaying some data. 

I know that I can do it by simple ploting lines and
points but a more polished function than I am likely
to produce would be nice.

Thanks

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

r7mv/nsdt/s