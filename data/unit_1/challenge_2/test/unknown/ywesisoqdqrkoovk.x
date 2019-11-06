From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 13:33:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EHXcL9024582
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 13:33:39 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EHWsPH030064;
	Thu, 14 Jun 2007 19:33:09 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pythagoras.zen.co.uk (pythagoras.zen.co.uk [212.23.3.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EHGkDU023177
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 19:16:46 +0200
Received: from [217.155.43.225] (helo=sunx.quantex)
	by pythagoras.zen.co.uk with esmtp (Exim 4.50) id 1HyswA-0001Vi-A1
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 17:16:46 +0000
From: John Logsdon <j.logsdon@quantex-research.com>
Organization: Quantex Research
Date: Thu, 14 Jun 2007 18:16:47 +0100
User-Agent: KMail/1.9.6
MIME-Version: 1.0
To: r-help@stat.math.ethz.ch
Content-Disposition: inline
Message-Id: <200706141816.47360.j.logsdon@quantex-research.com>
X-Originating-Pythagoras-IP: [217.155.43.225]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] JGR, Java and Kubuntu 7.04 ...
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

R-ists

Yet again Java rears its ugly head.  

I have Kubuntu 7.04 running the Kubuntu-repository version of R 2.4.1-1.      
Yes it isn't the  very latest version but this is not the issue here.  

I want a Windows-like environment and everyone is talking about JGR.

I downloaded it and installed it along with rJava.  Both compile and install 
satisfactorily.

But when I come to run it:

> > library('JGR')
>
> Loading required package: rJava
> Error in dyn.load(x, as.logical(local), as.logical(now)) :
>         unable to load shared library
> '/usr/local/lib/R/site-library/rJava/libs/rJava.so':
> /usr/local/lib/R/site-library/rJava/libs/rJava.so: undefined symbol:
> JNI_GetCreatedJavaVMs Error: .onLoad failed in 'loadNamespace' for 'rJava'
> Error: package 'rJava' could not be loaded


When I first tried to run it without Java being installed, I got a message 
saying that JDK wasn't installed but mentioned 1.4.2.  The version of Java 
actually installed as the latest from the Ubuntu repository is Sun 1.5.0.11.  
I don't see the point in installing old versions of Java just for one 
application because the language, or at least the writing, should be 
backwards compatible.  

In all aspects I have seen Kubuntu is a very impressive in checking 
compatibility.  Unfortunately this is frequently not the case with Java.  I 
steer clear of Java as much as possible.  

Can anyone suggest what I should do?  Use Windows perhaps?  Run Windows in a 
kvm virtual machine just to run R?  Put my head in a bucket of cold water?  
Is there an alternative IDE?  Is there a later JGR somewhere that is not yet 
on CRAN?

TIA

-- 
Best wishes

John

John Logsdon                               "Try to make things as simple
Quantex Research Ltd, Manchester UK         as possible but not simpler"
j.logsdon@quantex-research.com              a.einstein@relativity.org
+44(0)161 445 4951/G:+44(0)7717758675       www.quantex-research.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

fnoFrltz2
2itc1g