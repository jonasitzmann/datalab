From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 17:52:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RLqbL9000476
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 17:52:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RLobpb027582;
	Wed, 27 Jun 2007 23:51:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, STOX_REPLY_TYPE autolearn=no version=3.2.0
Received: from ag-out-0708.google.com (ag-out-0708.google.com [72.14.246.247])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RLFdAF017656
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 23:15:39 +0200
Received: by ag-out-0708.google.com with SMTP id 35so251482aga
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 14:15:38 -0700 (PDT)
Received: by 10.100.111.16 with SMTP id j16mr694390anc.1182978937570;
	Wed, 27 Jun 2007 14:15:37 -0700 (PDT)
Received: from TDWKST14 ( [65.242.180.138])
	by mx.google.com with ESMTP id c9sm10414931ana.2007.06.27.14.15.36
	(version=SSLv3 cipher=RC4-MD5); Wed, 27 Jun 2007 14:15:37 -0700 (PDT)
Message-ID: <040801c7b900$a6a77780$3927a8c0@treesdalellc.net>
From: "AA" <aa2007r@gmail.com>
To: "Christophe Pallier" <christophe@pallier.org>,
   "Markus Loecher" <loecher@eden.rutgers.edu>
References: <13225635.24491182965129984.JavaMail.tomcat@rainier>
	<dea6cb960706271143g28cf675el12831208c4f0d55a@mail.gmail.com>
Date: Wed, 27 Jun 2007 17:18:04 -0400
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Matlab end operator
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

Hi Markus, Christophe

I also use both matlab and R.
I agree with Christophe: you can define the 'end' functionality by nrow or 
length
also have a look at the following link that may be useful.
http://mathesaurus.sourceforge.net/octave-r.html
good luck
AA.
----- Original Message ----- 
From: "Christophe Pallier" <christophe@pallier.org>
To: "Markus Loecher" <loecher@eden.rutgers.edu>
Cc: <r-help@stat.math.ethz.ch>
Sent: Wednesday, June 27, 2007 2:43 PM
Subject: Re: [R] Matlab end operator


> Hello Markus,
>
> On 6/27/07, Markus Loecher <loecher@eden.rutgers.edu> wrote:
>>
>> Dear list members,
>> I use both R and Matlab and find that each has its own strengths. Matlab
>> definitely has the edge when it comes to the interactivity of its graphs.
>
>
> I also use both. R definitely has the edge when it comes to do perform
> statistical data analyses :)
> (and also when you consider the price...)
>
> In addition I find the little operator end extremely useful in indexing
>> arrays. (as in x(1:end,) )
>
>
> You mean 'x(1:end,1:end)' or 'x(:,:)'  (':' is equivalent to "1:end")
>
> When I go from R to Matlab, I tend to forget to type the ':' ("a[,2]" in R
> is "a(:,2)" in Matlab.)
>
> The interest of 'end' is clearer when the starting index is larger than 1 
> as
> in, e.g., 'x(2:end)'
>
> Yet note that in R, you can use negative indexes:
>
>  x[-1]   is the R equivalent of  Matlab's x(2:end)
>
>  x[-(1:(n-1))] is equivalent to x(n:end)
>
>
> I agree that R syntax may be a bit less "elegant" in this particular
> situation (but try to write the equivalent of a[-2,] in Matlab)
> Personally, I would stick to "x[n:length(x)]" (or "a[n:nrow(a),]" for a
> matrix). Anyway this kind of code would probably appear inside a loop and 
> I
> would put the numbers of rows or columns in variables if there are needed
> more than once.
>
> Best,
>
> -- 
> Christophe Pallier
>
> [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

oiizUcIi