From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 00:30:38 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l564UbhB017334
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 00:30:37 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l564RKDC004705;
	Wed, 6 Jun 2007 06:29:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME,
	FORGED_HOTMAIL_RCVD2 autolearn=no version=3.2.0
Received: from mta-c3.warpdrive.net (mta-c3.warpdrive.net [24.56.130.93])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l564QgoZ004234
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 06:26:42 +0200
X-ASG-Debug-ID: 1181104889-0643004a0002-H36N8W
X-ASG-Debug-ID: 1181104889-0643004a0002-H36N8W
X-ASG-Debug-ID: 1181104889-0643004a0002-H36N8W
X-Barracuda-URL: http://24.56.130.93:80/cgi-bin/mark.cgi
X-Barracuda-Connect: 64-17-77-144.co.warpdriveonline.com[64.17.77.144]
X-Barracuda-Start-Time: 1181104889
Received: from [127.0.0.1] (64-17-77-144.co.warpdriveonline.com [64.17.77.144])
	by mta-c3.warpdrive.net (Spam Firewall) with ESMTP
	id 620051E315C; Wed,  6 Jun 2007 00:41:31 -0400 (EDT)
Message-ID: <46663776.5080707@hotmail.com>
Date: Tue, 05 Jun 2007 22:26:30 -0600
From: "Francisco J. Zagmutt" <gerifalte28@hotmail.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
Newsgroups: gmane.comp.lang.r.general
To: Roland Rau <roland.rproject@gmail.com>
X-ASG-Orig-Subj: Re: the biggest integer R can display in complete form but
	not scientific form
References: <dff718fc0706050802sb21befr30a132494df1bfcd@mail.gmail.com>
	<46658CC7.2030107@gmail.com>
In-Reply-To: <46658CC7.2030107@gmail.com>
X-Barracuda-Virus-Scanned: by mta-c3.warpdrive.net - Outbound at warpdrive.net
X-Barracuda-Spam-Score: 0.55
X-Barracuda-Spam-Status: No, SCORE=0.55 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=4.0
	tests=FORGED_HOTMAIL_RCVD2
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19094
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.55 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address,
	but no 'Received:'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] the biggest integer R can display in complete form but not
 scientific form
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l564UbhB017334

Also, look at options(digits) to set the number digits to be printed in the console, i.e.
 > pi[1] 3.141593
 > options(digits=22) > pi[1] 3.141592653589793	
Regards
Francisco

Roland Rau wrote:> 李俊杰 wrote:>> Dear R-lister,>>>> One of my friends wanted to produce random number which is 64 bits. He did>> it with Fortune. I think R can do it also. But I don't know how to display a>> very big integer in the complete form but not scientific form. And what's>> the biggest integer R can display in complete form ?>>>> Thanks in advance,>>>> Li Junjie>>>>>>> I guess the biggest integer R can represent (if this is what you mean) > is machine dependent and you can find it out via:> > .Machine> help(".Machine")> > I hope this helps,> Roland> > ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

                  

 t 7a4XDmfJ+e