From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 17:57:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QLvJL9018256
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 17:57:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QLtciL017775;
	Tue, 26 Jun 2007 23:56:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_80, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QLtMJq017659
	for <r-help@stat.math.ethz.ch.>; Tue, 26 Jun 2007 23:55:23 +0200
Received: by wa-out-1112.google.com with SMTP id j4so2417798wah
	for <r-help@stat.math.ethz.ch.>; Tue, 26 Jun 2007 14:55:22 -0700 (PDT)
Received: by 10.114.80.4 with SMTP id d4mr6823843wab.1182894921960;
	Tue, 26 Jun 2007 14:55:21 -0700 (PDT)
Received: by 10.114.26.17 with HTTP; Tue, 26 Jun 2007 14:55:21 -0700 (PDT)
Message-ID: <56750b780706261455p59273079vd51ee1aedc7ca3e4@mail.gmail.com>
Date: Tue, 26 Jun 2007 17:55:21 -0400
From: "David Einstein" <deinst@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Strange RODBC problem
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

I am using RODBC to collect data from an ODBC connection to an MS Access
Database.  Everything seems to be working well except datetimes between
March 12, 2006 02:00 and 02:59 get moved one hour forward.  This does not
seem to be happening with Excel connecting to the same connection.  March 12
seems a bit early for Daylight savings time.  What am I doing wrong?

R 2.5.0  Windows XP with the latest RODBC (I'm not sure how to get the
versions of the packages in use)

Thank you very much,
   deinst

(R is a fantastic package.)

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

rcDd>Mi