From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:36:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCa4LD028202
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:36:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MI2U5g000437;
	Fri, 22 Jun 2007 20:02:40 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MI2ME4000405
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 20:02:24 +0200
Received: from [192.168.0.176] (djm.stats.uwo.ca [129.100.76.113])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l5MI2JDD020377;
	Fri, 22 Jun 2007 14:02:19 -0400
Message-ID: <467C0F13.4060004@stats.uwo.ca>
Date: Fri, 22 Jun 2007 14:04:03 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Jose Quesada <quesada@gmail.com>
References: <op.tub2q6d64hcap5@delllap.ugr.es>
In-Reply-To: <op.tub2q6d64hcap5@delllap.ugr.es>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: "r-help@lists.r-project.org" <r-help@stat.math.ethz.ch>
Subject: Re: [R] Matrix library, CHOLMOD error: problem too large
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

On 6/22/2007 1:26 PM, Jose Quesada wrote:
> I have a pretty large sparse matrix of integers:
>> dim(tasa)
> [1] 91650 37651
> 
> I need to add one to it in order to take logs, but I'm getting the  
> following error:
> 
>> tasa  = log(tasa + 1)
> CHOLMOD error: problem too large
> Error in asMethod(object) : Cholmod error `problem too large'
> 
> I have 2 Gb of RAM, and the current workspace is barely 300mb.
> Is there any workaround to this? Anyone has any experience with this error?
>

If tasa is sparse, then tasa+1 will not be sparse, so that's likely your 
problem.  You might have better luck with

log1p(tasa)

if the authors of the Matrix package have written a method for log1p(); 
if not, you'll probably have to do it yourself.

Duncan Murdoch

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

rm0
J
/ws5/Adt08