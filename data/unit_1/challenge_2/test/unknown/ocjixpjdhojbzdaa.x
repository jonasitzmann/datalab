From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 11:46:13 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QFkCL9012945
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 11:46:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFjVcs007863;
	Tue, 26 Jun 2007 17:45:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from SXT-SM-1.UCIS.Dal.Ca (SXT-SM-1.UCIS.Dal.Ca [129.173.5.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QFiBmf006751
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 17:44:13 +0200
Received: from [129.173.38.222] (GenerationX.Psychology.Dal.Ca
	[129.173.38.222])
	by SXT-SM-1.UCIS.Dal.Ca (8.12.11/8.12.10) with ESMTP id l5QFi6nt004317; 
	Tue, 26 Jun 2007 12:44:06 -0300
In-Reply-To: <07E228A5BE53C24CAD490193A7381BBBA5AA51@LP-EXCHVS07.CO.IHC.COM>
References: <07E228A5BE53C24CAD490193A7381BBBA5AA51@LP-EXCHVS07.CO.IHC.COM>
Mime-Version: 1.0 (Apple Message framework v752.3)
Message-Id: <B7B68DB8-EA47-419B-99F1-7487F2027121@dal.ca>
From: Mike Lawrence <Mike.Lawrence@dal.ca>
Date: Tue, 26 Jun 2007 12:44:05 -0300
To: Greg Snow <Greg.Snow@intermountainmail.org>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: Rhelp <r-help@stat.math.ethz.ch>
Subject: Re: [R] Power calculation with measurement error
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

Thanks Greg, I've actually been programming precisely what you  
suggest since sending the request this morning (though your email was  
indeed helpful; I've never seen 'replicate()' and will see if it's  
faster than a loop).

However, I was hoping that an analytic solution was extant and  
implemented somewhere.


On 26-Jun-07, at 12:18 PM, Greg Snow wrote:

> I don't know of a current package that does this (others may), but if
> you know what you expect your data to look like you can simulate it  
> and
> calculate power that way.
>
> Basically, write a function that will simulate data with the level of
> measurement error that you expect in the real data (or have the amount
> of measurement error passed in as a parameter so you can examine the
> effect of diffenent values).  Then have the function compute the t  
> test
> (or other test that you plan to do) and return the p-value from the
> test.
>
> Then you can simulate the process with a command like:
>
>> out1 <- replicate( 1000, myfunction(n=25, err=.1, diff=.5) )
>
> And compute the power with:
>
>> mean( out1 < 0.05 ) # or whatever alpha value you want.
>
> Hope this helps,
>
> -- 
> Gregory (Greg) L. Snow Ph.D.
> Statistical Data Center
> Intermountain Healthcare
> greg.snow@intermountainmail.org
> (801) 408-8111
>
>
>
>> -----Original Message-----
>> From: r-help-bounces@stat.math.ethz.ch
>> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Mike Lawrence
>> Sent: Tuesday, June 26, 2007 5:13 AM
>> To: Rhelp
>> Subject: [R] Power calculation with measurement error
>>
>> Hi all,
>>
>> Hopefully this will be quick, I'm looking for pointers to
>> packages/ functions that would allow me to calculate the
>> power of a t.test when the DV has measurement error. That is,
>> I understand that, ceteris paribus, experiments using measure
>> with more error (lower
>> reliability) will have lower power.
>>
>> Mike
>>
>> --
>> Mike Lawrence
>> Graduate Student, Department of Psychology, Dalhousie University
>>
>> Website: http://memetic.ca
>>
>> Public calendar: http://icalx.com/public/informavore/Public
>>
>> "The road to wisdom? Well, it's plain and simple to express:
>> Err and err and err again, but less and less and less."
>> 	- Piet Hein
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>

--
Mike Lawrence
Graduate Student, Department of Psychology, Dalhousie University

Website: http://memetic.ca

Public calendar: http://icalx.com/public/informavore/Public

"The road to wisdom? Well, it's plain and simple to express:
Err and err and err again, but less and less and less."
	- Piet Hein

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

lL>f9
