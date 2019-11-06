From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 23:20:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D3JwL9002544
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 23:19:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D3JHBj028679;
	Wed, 13 Jun 2007 05:19:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from postrelay-2.pdf.com (postrelay-2.pdf.com [209.128.81.153])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D3J8iW028638
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 05:19:09 +0200
Received: from postbox.pdf.com (postbox.pdf.com [10.10.8.7])
	by postrelay-2.pdf.com (Switch-3.2.5/Switch-3.2.5) with ESMTP id
	l5D3KEI0003802; Tue, 12 Jun 2007 20:20:15 -0700
Received: from malt.pdf.com (malt.pdf.com [10.10.8.80])
	by postbox.pdf.com (Switch-3.2.6/Switch-3.2.6) with ESMTP id
	l5D3J5cK020920
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jun 2007 20:19:05 -0700
Received: from [10.2.8.148] ([10.2.8.132])
	by malt.pdf.com (8.12.11/8.12.11) with ESMTP id l5D3J2qF023071;
	Tue, 12 Jun 2007 20:19:02 -0700
Message-ID: <466F61CF.1090704@pdf.com>
Date: Tue, 12 Jun 2007 20:17:35 -0700
From: Spencer Graves <spencer.graves@pdf.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Josh Gilbert <jgilbert.r@gmail.com>
References: <238121.85415.qm@web37210.mail.mud.yahoo.com>
	<200706122111.16526.jgilbert.r@gmail.com>
In-Reply-To: <200706122111.16526.jgilbert.r@gmail.com>
X-Spam: Internal
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] PCA  for Binary data
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

      The problem with applying prcomp to binary data is that it's not 
clear what problem you are solving. 

      The standard principal components and factor analysis models 
assume that the observations are linear combinations of unobserved 
"common" factors (shared variability), normally distributed, plus normal 
noise, independent between observations and variables.  Those 
assumptions are clearly violated for binary data. 

      RSiteSearch("PCA for binary data") produced references to 'ade4' 
and 'FactoMineR'.  Have you considered these?  I have not used them, but 
FactoMineR included functions for 'Multiple Factor Analysis for Mixed 
[quantitative and qualitative] Data'
  
      Hope this helps. 
      Spencer Graves

Josh Gilbert wrote:
> I don't understand, what's wrong with using prcomp in this situation?
>
> On Sunday 10 June 2007 12:50 pm, Ranga Chandra Gudivada wrote:
>   
>> Hi,
>>
>>     I was wondering whether there is any package implementing Principal
>> Component Analysis for Binary data
>>
>>                                               Thanks chandra
>>
>>
>> ---------------------------------
>>
>>
>> 	[[alternative HTML version deleted]]
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html and provide commented, minimal,
>> self-contained, reproducible code.
>>     
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

a
tmeakn i<