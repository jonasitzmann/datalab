From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 05:47:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l669lAL9006041
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 05:47:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669jd3Y014815;
	Fri, 6 Jul 2007 11:45:55 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669jVsw014748
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 11:45:31 +0200
Received: (qmail 3754 invoked from network); 6 Jul 2007 09:45:30 -0000
Received: from unknown (HELO gaia-group.com) (138412@[217.110.20.74])
	(envelope-sender <Bernhard.Wellhoefer@gaia-group.com>)
	by smtprelay04.ispgateway.de (qmail-ldap-1.03) with SMTP
	for <r-help@stat.math.ethz.ch>; 6 Jul 2007 09:45:30 -0000
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Fri, 6 Jul 2007 11:45:29 +0200
Message-ID: <7C36DCD0D35F9A4A8D89A7A8916E755D6D5376@GAIA-SERVER.gaia-group.local>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: RODBC problem
Thread-Index: Ace/smONAmUrDdZpRrqmz0BgCx+rHw==
From: =?iso-8859-1?Q?Bernhard_Wellh=F6fer?=
	<Bernhard.Wellhoefer@gaia-group.com>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] RODBC problem
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

Hello,
 
I use a RODBC connection to a MySQL server on a Debian machine. The call to odbcConnect() seems to be ok, but the result of the first sqlFetch(channel,"t_studie") retrieves this data frame:
 
[1] "[RODBC] ERROR: Could not SQLExecDirect"
[2] "42000 1064 [MySQL][ODBC 3.51 Driver][mysqld-5.0.22-Debian_1bpo1-log]You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '\"t_studi(\004"

Please note the funny character at the end of the table name in the error message.
 
The "Test Data Source" option on the ODBC Data Source Name configuration panel report success.
 
Who can help me here?
 
Regards,
 
Bernhard
 
 
 
 
 

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

au-a.xet
u