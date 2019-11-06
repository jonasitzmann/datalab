From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 09:41:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55Df2hB009562
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 09:41:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DeJ0G016199;
	Tue, 5 Jun 2007 15:40:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from ns1.nimr.mrc.ac.uk (ns1.nimr.mrc.ac.uk [194.80.106.135])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DIClH008376
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 15:18:12 +0200
Received: from uist.mathbio.nimr (mb2.nimr.mrc.ac.uk [195.195.124.31])
	by ns1.nimr.mrc.ac.uk (8.13.8/8.13.8) with ESMTP id l55DIBQN009343;
	Tue, 5 Jun 2007 14:18:11 +0100 (BST)
	(envelope-from mdosrei@nimr.mrc.ac.uk)
Received: from [192.168.2.124] (unknown [192.168.2.1])
	by uist.mathbio.nimr (Postfix) with ESMTP id EB3C0F2141DC;
	Tue,  5 Jun 2007 14:16:01 +0100 (BST)
Message-ID: <46656214.1000006@nimr.mrc.ac.uk>
Date: Tue, 05 Jun 2007 14:16:04 +0100
From: Mario dos Reis <mdosrei@nimr.mrc.ac.uk>
User-Agent: Thunderbird 1.5.0.10 (X11/20070302)
MIME-Version: 1.0
To: Prof Brian Ripley <ripley@stats.ox.ac.uk>
References: <mailman.9.1180951205.916.r-help@stat.math.ethz.ch>
	<46653C85.6050504@nimr.mrc.ac.uk>
	<Pine.LNX.4.64.0706051224080.32466@gannet.stats.ox.ac.uk>
In-Reply-To: <Pine.LNX.4.64.0706051224080.32466@gannet.stats.ox.ac.uk>
X-PMX-Version: 5.2.2.285561, Antispam-Engine: 2.5.0.283055,
	Antispam-Data: 2007.6.5.60259
X-PerlMx-Spam: Gauge=IIIIIII, Probability=7%, Report='__CT 0, __CTE 0,
	__CT_TEXT_PLAIN 0, __HAS_MSGID 0, __MIME_TEXT_ONLY 0,
	__MIME_VERSION 0, __SANE_MSGID 0, __USER_AGENT 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Latex \ell symbol in plotmath
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

I am using R 2.5.0 on Fedora Linux core 6, AMD 64.

Prof Brian Ripley wrote:
> On Tue, 5 Jun 2007, Mario dos Reis wrote:
> 
>> Is it possible to use the '\ell' (i.e. the log likelihood) in plots?
> 
> 'plots'?  On what OS and what device?   (There is no general solution 
> here.)
> 
>> I've been browsing the plotmath documentation unsucesfully.
> 
> That symbol is in neither of the Latin-1 nor symbol encoding used in R's 
> standard fonts for postscript(), pdf() and the like.  Since it is not in 
> the Adobe symbol encoding it is not accessible via plotmath.
> 
> It is Unicode character U+2113, and so on UTF-8 R systems you may well 
> be able to enter it as \u2113 and get it plotted on-screen in a suitable 
> font.  But we'd need to know a lot more about your system to advise on 
> how exactly to do so.
> 

Cheers,
Mario dos Reis

mdosrei@nimr.mrc.ac.uk
+44 (0)20 8816 2300

Division of Mathematical Biology
National Institute for Medical Research
The Ridgeway
Mill Hill
London, NW7 1AA, UK

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

i�gncta6ekaWZ
8s