From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 09:31:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55DVghB009451
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 09:31:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DUxlC012646;
	Tue, 5 Jun 2007 15:31:15 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mdhost1.centroin.com.br (smtp.centroin.com.br [200.225.63.205])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DARhq005805
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 15:10:29 +0200
Received: from centroin.com.br (trex.centroin.com.br [200.225.63.134])
	by mdhost1.centroin.com.br (8.14.0/8.14.0/CIP SMTP HOST) with ESMTP id
	l55DAP0f039725
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 10:10:47 -0300 (BRT)
	(envelope-from albmont@centroin.com.br)
From: "Alberto Monteiro" <albmont@centroin.com.br>
To: r-help@stat.math.ethz.ch
Date: Tue, 5 Jun 2007 11:10:47 -0200
Message-Id: <20070605130556.M17907@centroin.com.br>
X-Mailer: CIP WebMail 2.51 20050627
X-OriginatingIP: 200.179.65.110 (albmont)
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Inverse of encodeString
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

What is the inverse of encodeString?

For example, \u1 is some Unicode symbol. If I do

s <- encodeString("\u1")

then s will be the string "\001". But anything I do
with s, will not return the Unicode that corresponds to \u1:

cat(s, "\n") # prints \001
cat("\u1", "\n")  # prints y with umlaut

Alberto Monteiro

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

,IB<mt