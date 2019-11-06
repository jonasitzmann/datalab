From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 06:33:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FAXuL9032464
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 06:33:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FAWMKv027112;
	Fri, 15 Jun 2007 12:32:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pascal.uni-erfurt.de (pascal.uni-erfurt.de [194.95.117.230])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FAWDZZ027066
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 12:32:14 +0200
Received: from webshield.net.uni-erfurt.de ([194.95.117.245])
	by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with SMTP id <0JJO00BZNALQ2M80@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 12:32:14 +0200 (MEST)
Received: from pascal.uni-erfurt.de(194.95.117.230)
	by webshield.net.uni-erfurt.de via smtp	id
	4c42_112c9a7c_1b2b_11dc_9054_0011433682c5;
	Fri, 15 Jun 2007 12:27:49 +0200
Received: from [194.95.14.32] by pascal.uni-erfurt.de
	(Sun Java System Messaging Server 6.2-7.06 (built Oct  6 2006))
	with ESMTP id <0JJO00BZLALQ2M80@pascal.uni-erfurt.de> for
	r-help@stat.math.ethz.ch; Fri, 15 Jun 2007 12:32:14 +0200 (MEST)
Date: Fri, 15 Jun 2007 12:32:15 +0200
From: Stefan Grosse <singularitaet@gmx.net>
In-reply-to: <200706141816.47360.j.logsdon@quantex-research.com>
To: John Logsdon <j.logsdon@quantex-research.com>
Message-id: <46726AAF.3090000@gmx.net>
MIME-version: 1.0
References: <200706141816.47360.j.logsdon@quantex-research.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] JGR, Java and Kubuntu 7.04 ...
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

You could download the latest R (2.5.0) directly from CRAN, this just as
a side remark, You find instructions here:
http://cran.au.r-project.org/bin/linux/ubuntu/README

With java you should make sure that you have the Java 5 JDK installed. 
I dont know how it is with Ubuntu but on fedora I have to set the java
alternative (sun java installation does not change the default java
there). Which java is installed you can check with java -version there
you see it it is properly installed and a R CMD javareconf also
indicates if your java is configured correctly. Additionally on Fedora I
had to set JAVA_HOME to the JDK directory manually.

Stefan

-------- Original Message  --------
Subject: [R] JGR, Java and Kubuntu 7.04 ...
From: John Logsdon <j.logsdon@quantex-research.com>
To: r-help@stat.math.ethz.ch
Date: 14.06.2007 19:16
> R-ists
>
> Yet again Java rears its ugly head.  
>
> I have Kubuntu 7.04 running the Kubuntu-repository version of R 2.4.1-1.      
> Yes it isn't the  very latest version but this is not the issue here.  
>
> I want a Windows-like environment and everyone is talking about JGR.
>
> I downloaded it and installed it along with rJava.  Both compile and install 
> satisfactorily.
>
> But when I come to run it:
>
>   
>>> library('JGR')
>>>       
>> Loading required package: rJava
>> Error in dyn.load(x, as.logical(local), as.logical(now)) :
>>         unable to load shared library
>> '/usr/local/lib/R/site-library/rJava/libs/rJava.so':
>> /usr/local/lib/R/site-library/rJava/libs/rJava.so: undefined symbol:
>> JNI_GetCreatedJavaVMs Error: .onLoad failed in 'loadNamespace' for 'rJava'
>> Error: package 'rJava' could not be loaded
>>     
>
>
> When I first tried to run it without Java being installed, I got a message 
> saying that JDK wasn't installed but mentioned 1.4.2.  The version of Java 
> actually installed as the latest from the Ubuntu repository is Sun 1.5.0.11.  
> I don't see the point in installing old versions of Java just for one 
> application because the language, or at least the writing, should be 
> backwards compatible.  
>
> In all aspects I have seen Kubuntu is a very impressive in checking 
> compatibility.  Unfortunately this is frequently not the case with Java.  I 
> steer clear of Java as much as possible.  
>
> Can anyone suggest what I should do?  Use Windows perhaps?  Run Windows in a 
> kvm virtual machine just to run R?  Put my head in a bucket of cold water?  
> Is there an alternative IDE?  Is there a later JGR somewhere that is not yet 
> on CRAN?
>
> TIA
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

lvaia8N5hrocd0y