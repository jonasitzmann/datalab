From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 15:09:03 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54J91hB031710
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 15:09:02 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54J8JSU009527;
	Mon, 4 Jun 2007 21:08:31 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from sccrmhc11.comcast.net (sccrmhc11.comcast.net [204.127.200.81])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l54J85h4009457
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 21:08:06 +0200
Received: from mxd32803wb
	(c-69-140-138-137.hsd1.md.comcast.net[69.140.138.137])
	by comcast.net (sccrmhc11) with SMTP
	id <2007060419080401100i0sube>; Mon, 4 Jun 2007 19:08:04 +0000
Message-ID: <001f01c7a6db$b1be35f0$6405a8c0@MXD32803WB>
From: "Stan Hopkins" <stanhopkins@comcast.net>
To: <r-help@stat.math.ethz.ch>
Date: Mon, 4 Jun 2007 14:08:11 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: stanhopkins@comcast.net
Subject: [R] Extracting lists in the dataframe $ format
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

I'm new to R and am trying to extract the factors of a dataframe using numeric indices (e.g. df[1]) that are input to a function definition instead of the other types of references (e.g. df$out).  df[1] is a list(?) whose class is "dataframe".  These indexed lists can be printed successfuly but are not agreeable to the plot() and lm() functions shown below as are their df$out references.  Reading the documentation for plot and lm hasn't helped yet.  Thanks in advance - Stan.

> df=data.frame(out=1:4*3,pred1=1:4,pred2=1:4*2)
> regression=function(tble,a,b) 
+ {
+            plot.new()
+            plot(tble[a]~tble[b])
+            lmm=lm(tble[a]~tble[b])
+            abline(lmm)
+            anova(lmm)
+ }
> df[1]
  out
1   3
2   6
3   9
4  12
> df
  out pred1 pred2
1   3     1     2
2   6     2     4
3   9     3     6
4  12     4     8
> regression(df,1,3)
Error in model.frame(formula, rownames, variables, varnames, extras, extranames,  : 
        invalid type (list) for variable 'tble[a]'
> 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



Occ<=Duelg=U O