From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 11:16:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QFGcL9012541
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 11:16:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFFcCf026793;
	Tue, 26 Jun 2007 17:16:08 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.precheza.cz (mail.precheza.cz [80.188.29.243])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QF3VPS021637
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 17:03:32 +0200
Received: from localhost (localhost [127.0.0.1])
	by mail.precheza.cz (Mailer) with ESMTP id E0D8D34E585;
	Tue, 26 Jun 2007 17:03:29 +0200 (CEST)
Received: from mail.precheza.cz ([127.0.0.1])
	by localhost (mail.precheza.cz [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 14022-02-4; Tue, 26 Jun 2007 17:03:27 +0200 (CEST)
Received: from n5en1.precheza.cz (n5en1.precheza.cz [192.168.210.35])
	by mail.precheza.cz (Mailer) with ESMTP id 5715C34E584;
	Tue, 26 Jun 2007 17:03:27 +0200 (CEST)
In-Reply-To: <33846cd50706260708j3fe8c402w820efd3656b28fd7@mail.gmail.com>
To: "Tavpritesh Sethi" <tavpritesh@gmail.com>
MIME-Version: 1.0
X-Mailer: Lotus Notes Release 7.0.1 January 17, 2006
Message-ID: <OFFF88495B.8CF47062-ONC1257306.0052478D-C1257306.0052B79D@precheza.cz>
From: Petr PIKAL <petr.pikal@precheza.cz>
Date: Tue, 26 Jun 2007 17:03:28 +0200
X-MIMETrack: Serialize by Router on SRVDomino/PRECHEZA(Release 7.0.1FP1 | May
	25, 2006) at 26.06.2007 17:03:28,
	Serialize complete at 26.06.2007 17:03:28
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: [R] Odp:  how to iterate
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

as you did not specify your code (which you said it had failed) I try to 
give you a suggestion how I would do such tasks.

for (i in 1:100)  {

sample(something, no, replace =TRUE)
result <-perform a test
store.a result[i] <- result

}

Regards
Petr


r-help-bounces@stat.math.ethz.ch napsal dne 26.06.2007 16:08:16:

> for the following example dataset:-
>    Category Variable 1 127 1 261 1 142 1 183 1 234 1 162 2 173 2 321 2 
168 2
> 197 2 213 2 261 3 198 3 126 3 167 3 154 3 134 3 187 3 109 3 210
> I have performed Anova on the measured variable (column#2) for the 
groups
> 1,2&3 (column#1). Now I want to randomize the values in C#2 and 
reperform
> the test, say, a hundred times. Please suggest a way for this iteration. 
The
> loop I tried to write didn't work.
> Thanks.
> 
>    [[alternative HTML version deleted]]
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

         

 eioM/ae