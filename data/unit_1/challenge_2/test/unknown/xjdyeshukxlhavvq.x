From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 05:53:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l519rQhB008104
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 05:53:26 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l519qoTw010055;
	Fri, 1 Jun 2007 11:52:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.precheza.cz (mail.precheza.cz [80.188.29.243])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l519qikF010016
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 11:52:44 +0200
Received: from localhost (localhost [127.0.0.1])
	by mail.precheza.cz (Mailer) with ESMTP id ED68234E584;
	Fri,  1 Jun 2007 11:52:42 +0200 (CEST)
Received: from mail.precheza.cz ([127.0.0.1])
	by localhost (mail.precheza.cz [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 16963-01-2; Fri, 1 Jun 2007 11:52:40 +0200 (CEST)
Received: from n5en1.precheza.cz (n5en1.precheza.cz [192.168.210.35])
	by mail.precheza.cz (Mailer) with ESMTP id 72A1C34E582;
	Fri,  1 Jun 2007 11:52:30 +0200 (CEST)
In-Reply-To: <000901c7a42c$a894d170$99e1cec1@dms.unina.it>
To: "mirko sanpietrucci" <mirko.sanpietrucci@email.it>
MIME-Version: 1.0
X-Mailer: Lotus Notes Release 7.0.1 January 17, 2006
Message-ID: <OFE9270BE5.2DEC0994-ONC12572ED.00360172-C12572ED.00363E32@precheza.cz>
From: Petr PIKAL <petr.pikal@precheza.cz>
Date: Fri, 1 Jun 2007 11:52:30 +0200
X-MIMETrack: Serialize by Router on SRVDomino/PRECHEZA(Release 7.0.1FP1 | May
	25, 2006) at 01.06.2007 11:52:40,
	Serialize complete at 01.06.2007 11:52:40
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: [R] Odp:  how to extract the maximum from a matrix?
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

Hi

If you have tried to go through help pages of max you could find out which 
function, which can tell you position of your maximum.

which(x==max(x), arr.ind=T)

Regards

Petr Pikal
petr.pikal@precheza.cz

r-help-bounces@stat.math.ethz.ch napsal dne 01.06.2007 11:09:09:

> Dear UseRs,
> I have a very simple question. I have a big matrix (say x) including 
> probabilities (values in (0,1)).
> I have to store in a list the names of the row and the column where 
max(x) 
> is located. How can I proceed?
> 
> Thanks in advance for your assistance!
> 
> mirko
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

KZFt{iw