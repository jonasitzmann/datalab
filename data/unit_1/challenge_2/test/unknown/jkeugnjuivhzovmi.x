From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 13:56:39 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64HucL9013784
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 13:56:38 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64HtJV8011157;
	Wed, 4 Jul 2007 19:55:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from alcyon.progiciels-bpi.ca (alcyon.progiciels-bpi.ca
	[206.167.211.254])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64HfLb4006289
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 19:41:22 +0200
Received: by alcyon.progiciels-bpi.ca (Postfix, from userid 405)
	id C27FD503A8; Wed,  4 Jul 2007 13:51:56 -0400 (EDT)
Date: Wed, 4 Jul 2007 13:51:56 -0400
From: =?iso-8859-1?Q?Fran=E7ois?= Pinard <pinard@iro.umontreal.ca>
To: Keith Alan Chamberlain <Keith.Chamberlain@Colorado.EDU>
Message-ID: <20070704175156.GA9154@alcyon.progiciels-bpi.ca>
Mail-Followup-To: =?iso-8859-1?Q?Fran=E7ois?= Pinard <pinard@iro.umontreal.ca>, 
	Keith Alan Chamberlain <Keith.Chamberlain@Colorado.EDU>,
	r-help@stat.math.ethz.ch
References: <mailman.11.1183543206.28203.r-help@stat.math.ethz.ch>
	<000101c7be41$7b2a4d30$6501a8c0@kLab>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000101c7be41$7b2a4d30$6501a8c0@kLab>
User-Agent: Mutt/1.5.9i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] A More efficient method?
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l64HucL9013784

[Keith Alan Chamberlain]

>Is there a faster way than below to set a vector based on values
>from another vector? I'd like to call a pre-existing function for
>this, but one which can also handle an arbitrarily large number of
>categories. Any ideas?

>Cat=c('a','a','a','b','b','b','a','a','b')	# Categorical variable
>C1=vector(length=length(Cat))	# New vector for numeric values

># Cycle through each column and set C1 to corresponding value of Cat.
>for(i in 1:length(C1)){
>	if(Cat[i]=='a') C1[i]=-1 else C1[i]=1
>}

>C1
>[1] -1 -1 -1  1  1  1 -1 -1  1
>Cat
>[1] "a" "a" "a" "b" "b" "b" "a" "a" "b"

For handling an arbitrarily large number of categories, one may go
through a recoding vector, like this for the example above:

> Cat <- c('a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'b')
> C1 <- c(a=-1, b=1)[Cat]
> C1
 a  a  a  b  b  b  a  a  b
-1 -1 -1  1  1  1 -1 -1  1

-- 
Fran�ois Pinard   http://pinard.progiciels-bpi.ca

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

             

6a iilerdeI he+H