From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 09:49:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63DnkL9029257
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 09:49:47 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63DmqD7032435;
	Tue, 3 Jul 2007 15:49:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63Ckwet011681
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 14:46:59 +0200
Received: from [192.168.0.176] (djm.stats.uwo.ca [129.100.76.113])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l63Ckuxh027550;
	Tue, 3 Jul 2007 08:46:56 -0400
Message-ID: <468A45B1.3030304@stats.uwo.ca>
Date: Tue, 03 Jul 2007 08:48:49 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Ivan Baxter <ibaxter@purdue.edu>
References: <4689E5D1.2070202@purdue.edu>
In-Reply-To: <4689E5D1.2070202@purdue.edu>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] loop causes syntax error in print()
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

On 7/3/2007 1:59 AM, Ivan Baxter wrote:
> I am having trouble printing a table out to the GUI display when the 
> table is created and printed within a loop.
> 
> I get a "Error: syntax error message"
> 
> If I comment out the print statement, the loop runs fine and I can print 
> out the last iteration of the table.

You should simplify your loop until it's something you can post for us 
to try.  Chances are you'll notice the error when you do that, but if 
not, someone else will be able to tell you what's going on.

Without a reproducible example, it's more or less hopeless.

Duncan Murdoch

> 
> ...[multiple loops and calculations ending with.....]...
> 
> +             print(paste(mutType,"sim",sim,"hmm",hmm))      
> +             # print(acctab[,10:15])
> +                
> +             nummod <- nummod +1
> +         }  #end hmmMats loop
> +         }  #end tmats loop   
> +         }  #end mut type loop
> [1] "dup sim Imod hmm Jmod"
> 
>  > print(acctab[,10:15])
>     hitrate falsepos   multrate      avghit avgmiss avgfalsepos
> 1 0.0000000        1        NaN         NaN       2          NA
> 2 1.0000000        0 0.00000000    5.333333     NaN          NA
> 3 0.0000000      NaN        NaN         NaN       9          NA
> 4 0.7777778        0 0.00000000   15.571429      11          NA
> 5 1.0000000        0 0.00000000   24.083333     NaN          NA
> 6 1.0000000        0 0.07692308   64.538462     NaN          NA
> 7 1.0000000        0 0.39207048 1088.454846     NaN          NA
> 
> you can see that
> a) the print statement above it works
> b) the print command works with this table
> 
> but if I uncomment it and try to run the loops again.....
> 
> +             print(paste(mutType,"sim",sim,"hmm",hmm))         
>               print(acctab[,10:15])
> Error: syntax error
>  >        
>  >                
>  >             nummod <- nummod +1
>  >         }  #end hmmMats loop
> Error: syntax error
>  >         }  #end tmats loop   
> Error: syntax error
>  >         }  #end mut type loop
> Error: syntax error
> 
> 
> I have tried print.data.frame, but that doesn't work either....
> 
> 
> Any suggestions would be appreciated  (session info below)
> 
> 
> Ivan
> 
> 
>  > sessionInfo()
> R version 2.5.1 (2007-06-27)
> i386-apple-darwin8.9.1
> 
> locale:
> C
> 
> attached base packages:
> [1] "stats"     "graphics"  "grDevices" "utils"     "datasets"  
> "methods"   "base"  
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

50d9eVuVrilLaml 