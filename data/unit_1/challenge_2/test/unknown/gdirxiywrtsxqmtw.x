From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 09:53:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63DrfL9029308
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 09:53:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63DqsQH001808;
	Tue, 3 Jul 2007 15:53:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS,
	WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63DqkTd001772
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 15:52:47 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I5ioA-0005ED-2U
	for r-help@stat.math.ethz.ch; Tue, 03 Jul 2007 06:52:46 -0700
Message-ID: <11412603.post@talk.nabble.com>
Date: Tue, 3 Jul 2007 06:52:46 -0700 (PDT)
From: runner <sunnyside500@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <914427.39695.qm@web39712.mail.mud.yahoo.com>
MIME-Version: 1.0
X-Nabble-From: sunnyside500@gmail.com
References: <11363041.post@talk.nabble.com>
	<914427.39695.qm@web39712.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] regexpr
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


using lapply is so great. That help me a lot.
thanks.


Stephen Tucker wrote:
> 
> I think you are looking for paste().
> 
> And you can replace your for loop with lapply(), which will apply regexpr
> to
> every element of 'mylist' (as the first argument, which is 'pattern').
> 'text'
> can be a vector also:
> 
> mylist <- c("MN","NY","FL")
> lapply(paste(mylist,"$",sep=""),regexpr,text="Those from MN:")
> 
> 
> 
> --- runner <sunnyside500@gmail.com> wrote:
> 
>> 
>> Hi, 
>> 
>> I 'd like to match each member of a list to a target string, e.g.
>> ------------------------------
>> mylist=c("MN","NY","FL")
>> g=regexpr(mylist[1], "Those from MN:")
>> if (g>0)
>> {
>> "On list"
>> }
>> ------------------------------
>> My question is:
>> 
>> How to add an end-of-string symbol '$' to the to-match string? so that
>> 'M'
>> won't match.
>> 
>> Of course, "MN$" will work, but i want to use it in a loop; "mylist[i]"
>> is
>> what i need. I tried "mylist[1]$", but didn't work. So why it doesn't
>> extrapolate? How to do it?
>> 
>> Thanks a lot!
>> -- 
>> View this message in context:
>> http://www.nabble.com/regexpr-tf4000743.html#a11363041
>> Sent from the R help mailing list archive at Nabble.com.
>> 
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>> 
> 
> 
> 
>  
> ____________________________________________________________________________________
> Bored stiff? Loosen up...
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/regexpr-tf4000743.html#a11412603
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

tRDpcVa=