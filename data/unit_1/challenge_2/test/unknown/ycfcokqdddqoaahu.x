From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 19:04:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62N4XL9020134
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 19:04:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62N1J0d024096;
	Tue, 3 Jul 2007 01:03:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=AWL, BAYES_60, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web34704.mail.mud.yahoo.com (web34704.mail.mud.yahoo.com
	[209.191.68.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l62N186b024034
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 01:01:08 +0200
Received: (qmail 19188 invoked by uid 60001); 2 Jul 2007 23:01:07 -0000
X-YMail-OSG: LjbGlZwVM1kwMIhpuayvOwntiLRopeNC5u.MzWsL6xbEOIIzuOmuFP4r0jR3U7waTqKm0ALNHHZFMNzvrgAlai1efqVvAuJ18VTv
Received: from [192.12.78.250] by web34704.mail.mud.yahoo.com via HTTP;
	Mon, 02 Jul 2007 16:01:07 PDT
Date: Mon, 2 Jul 2007 16:01:07 -0700 (PDT)
From: Judith Flores <juryef@yahoo.com>
To: RHelp <r-help@stat.math.ethz.ch>
MIME-Version: 1.0
Message-ID: <25077.11252.qm@web34704.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Substitution of Variables
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

   I need to run a script under the variable (that
comes from a csv file) that is assigned to another
variable. This is very a simplified version of what I
want to do:

data<-read.csv('name.csv')
names(data)<-("VA","VB","VC")

v<-VA

mn(v)


Thank you in advance,

Judith
   




       
____________________________________________________________________________________
Got a little couch potato? 
Check out fun summer activities for kids.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

vrs:iggole  tRs