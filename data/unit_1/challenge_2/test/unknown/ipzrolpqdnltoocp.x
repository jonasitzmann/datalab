From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 06:32:33 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59AWWL9008556
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 06:32:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59AV3tq005268;
	Sat, 9 Jun 2007 12:31:21 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.gmx.net (mail.gmx.net [213.165.64.20])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l59AUvk1005195
	for <r-help@lists.r-project.org>; Sat, 9 Jun 2007 12:30:57 +0200
Received: (qmail invoked by alias); 09 Jun 2007 10:30:56 -0000
Received: from W1c5c.w.pppool.de (EHLO -) [89.58.28.92]
	by mail.gmx.net (mp044) with SMTP; 09 Jun 2007 12:30:56 +0200
X-Authenticated: #1533669
X-Provags-ID: V01U2FsdGVkX180e0hwvyA00wltolaEtrLIdHAvLOuBq5H2rOOGn7
	+w7OxjXAZeP/38
Date: Sat, 09 Jun 2007 12:31:03 +0200
To: r-help@stat.math.ethz.ch
From: "Andreas Gegg" <AndreasGegg@gmx.de>
MIME-Version: 1.0
Message-ID: <op.ttngt1ybof9uj6@->
User-Agent: Opera Mail/9.20 (Win32)
X-Y-GMX-Trusted: 0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] write.table: last line should differ from usual eol
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
Content-Type: text/plain; charset="iso-8859-15"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l59AWWL9008556

Dear R-Team,

I have a problem with writing an array to (for example) a .txt-file.  
Because of the .txt-file must be read from another programm (OPL ILOG),  
the syntax of the output must be from a special form:

name_of_the_object = [	[1,2, ... ],
			[1,...],
			... ];

I think it's easier to understand with a small example:

X<-array(1:4,c(2,2))

should be written as:
X = [[1,3],
      [2,4]];


I have (until now) used the following:

write("X=[[",file=filename)
write.table(X,file=filename,sep=",",eol="],\n [", row.names=FALSE,  
col.names=FALSE,append=TRUE)

which leads to the following output:
X=[[
1,3],
  [2,4],
  [

I hope you can help because it's very annoying to adjust the resulting  
.txt-file "by hand".

Thanks a lot for your help!
With nice greetings

Andreas Gegg,
mathematic-student on Catholic University of Eichst�tt-Ingolstadt (Germany)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

7ey"