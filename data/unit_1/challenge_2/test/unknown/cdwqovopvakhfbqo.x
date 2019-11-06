From r-help-bounces@stat.math.ethz.ch  Thu Jul  5 12:59:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65GxGL9028863
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 12:59:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65Gw7c9009908;
	Thu, 5 Jul 2007 18:58:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from strider.Berkeley.EDU (strider.Berkeley.EDU [128.32.135.35])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l65Gn3c3005932
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 18:49:06 +0200
Received: from [129.111.183.220] (220.183.uthscsa.edu [129.111.183.220] (may
	be forged)) (authenticated bits=0)
	by strider.Berkeley.EDU (8.13.8/8.13.8) with ESMTP id l65Gn0AB026789
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 5 Jul 2007 09:49:01 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.2)
Message-Id: <7CFF2F2B-4F18-4E90-A43C-8BBD2060DDE1@stat.berkeley.edu>
To: r-help@stat.math.ethz.ch
From: Guilherme Veiga da Rocha <gvrocha@stat.berkeley.edu>
Date: Thu, 5 Jul 2007 11:48:54 -0500
X-Mailer: Apple Mail (2.752.2)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Information on objects of "class by"
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

	Hi all,
	
	Does anyone know where to find more information on the "by" class?
	
	OR
	
	Does anyone know how to coerce an object of the "by" class into a  
data.frame containing the results of FUN and the values of the  
grouping variables?
	
	OR
	
	Does anyone know how to do the following:
	
	I have a big table with the results of many replications of an  
experiment and I want to summarize the medians according to the  
experimental parameters used.
	Columns 1-6 index the parameters used in that particular replication.
	Column 7 is just an index to the replication number.
	Column 8 is the variable I want to summarize
	
	I did:
	x=by(model.errors[, 8], model.errors[, 1:6], median)
	
	I now have an object of class "by" that seems to contain everything  
I need.
	If I just output "x" to the screen, I see all I need: the median for  
each unique combination of values in model.errors[, 1:6].
	However, I only know how to access the information on the medians  
themselves by getting x[i] where i is the index of the median I want.
	
	The problem is:
	- How do I retrieve the combination of values in model.errors[, 1:6]  
for a given index "i".
	OR
	- How do I determine the correct index "i" for a particular  
combination of the values in model.errors[, 1:6]?
	
	Just to help the thinking: I bypassed this problem for the mean by  
using lm and predict.
	I could in principle do the same using the L1 loss instead of the L2  
loss in lm by I do not know how to do that...
	This seems a rather convoluted solution for a problem "by" is meant  
to solve easily...
	
	Any help is appreciated.
	
	Thanks a lot,
	
	Guilherme Rocha

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

bknnam+toCoC