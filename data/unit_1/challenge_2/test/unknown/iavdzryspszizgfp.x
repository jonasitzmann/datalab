From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 17:22:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56LMihB026417
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 17:22:45 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56LKpm5025753;
	Wed, 6 Jun 2007 23:21:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l56L8U64022304
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 6 Jun 2007 23:08:32 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hw2k1-0004iv-V6
	for r-help@stat.math.ethz.ch; Wed, 06 Jun 2007 14:08:29 -0700
Message-ID: <10997356.post@talk.nabble.com>
Date: Wed, 6 Jun 2007 14:08:29 -0700 (PDT)
From: Artem Mariupol <artem.mariupol@gmail.com>
To: r-help@stat.math.ethz.ch
In-Reply-To: <loom.20070606T132031-749@post.gmane.org>
MIME-Version: 1.0
X-Nabble-From: artem.mariupol@gmail.com
References: <bfb35b70706052345t1d40bf88l48942296d9d5ea68@mail.gmail.com>
	<loom.20070606T132031-749@post.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] correspondence analysis
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



Thanks very much Jari, I appreciate your guidance.
I trust R very much, the only thing I can do is to dig up the methodology
behind the SPSS result (and of course behind the correspondence analysis
itself).
Regards,
am


Jari Oksanen wrote:
> 
> Artem Mariupol <artem.mariupol <at> gmail.com> writes:
> 
>> 
>> Hello,
>> 
>> I am new to R and I have a question about the difference between
>> correspondence analysis in R and SPSS.
>> This is the input table I am working with (4 products and 18 attributes):
>> 
>> > mytable
>>    1  2  3  4  5 6  7  8  9 10 11 12 13 14 15 16 17 18
>> 1 15 11 20  4 14 7  1  2  1  4 12 12 17 19 11 20  9 10
>> 2 19 18 14 14 16 4 14 11 11 15 22 19 22 16 21 19 15 16
>> 3 16 13 10  9 15 4 10  7 11 13 18 17 14 14 16 16 13 11
>> 4 21 18 16 14 20 6 12 14 14 17 23 20 19 18 21 18 19 18
>> 
>> I found the function corresp() in the package MASS, but the results are
>> different from the output in SPSS. Also, I don't understand the
>> coordinates;
>> in the biplot I cannot find a -2 limit for example from the first product
>> on
>> any of the x axes.
>> 
> At a quick look, there is nothing strange in the result. Have you
> contacted SPSS
> and asked them to explain their deviant results?
> 
> It seems that biplot.correspondence is undocumented. However, it has
> argument
> 'type' which defaults to "symmetric", other alternative being "rows" and
> "columns". Intelligent guess is that this selects the scaling of row and
> column
> scores, and type="symmetric" scales both. By selecting type="columns",
> only
> columns are scaled and the -2 value for a row will be displayed (which
> proves
> that the guess was correct).
> 
> I don't have a clue how SPSS scales results, but I guess that the
> differences in
> the results may be due to different scalings. Function corresp gives you
> weighted orthonormal row and column scores, but scales these in the plot
> like
> specified. It may be that SPSS does the scaling already in the printout
> (and
> does not give you the choice of type?). Another possible source of
> difference is
> that corresp gives you "canonical correlations" whereas some other program
> or
> function may give you their squares, a.k.a. eigenvalues. Moreover, the
> sign is
> arbitrary so that negative and positive scores may be switched between
> programs. 
> 
> I hope this helps, 
> 
> Jari Oksanen
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
View this message in context: http://www.nabble.com/correspondence-analysis-tf3876129.html#a10997356
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

           

a:o0oato/