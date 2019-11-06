From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 11:18:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62FI5L9015290
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 11:18:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62FHLWX025159;
	Mon, 2 Jul 2007 17:17:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from XSMTP0.ethz.ch (xsmtp0.ethz.ch [82.130.70.14])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62FHDSX025139
	for <R-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 17:17:14 +0200
Received: from xfe1.d.ethz.ch ([82.130.124.41]) by XSMTP0.ethz.ch with
	Microsoft SMTPSVC(6.0.3790.3959); Mon, 2 Jul 2007 17:17:13 +0200
Received: from [129.132.121.7] ([129.132.121.7]) by xfe1.d.ethz.ch over TLS
	secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
	Mon, 2 Jul 2007 17:17:13 +0200
Message-ID: <468916F8.1080207@erdw.ethz.ch>
Date: Mon, 02 Jul 2007 17:17:12 +0200
From: Andy Weller <weller@erdw.ethz.ch>
Organization: ETH Zurich
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: R-help@stat.math.ethz.ch
References: <467B87A1.3090808@erdw.ethz.ch>
	<D3AEEDA31E57474B840BEBC25A8A834401957411@NYWEXMB23.msad.ms.com>
In-Reply-To: <D3AEEDA31E57474B840BEBC25A8A834401957411@NYWEXMB23.msad.ms.com>
X-OriginalArrivalTime: 02 Jul 2007 15:17:13.0623 (UTC)
	FILETIME=[1176F270:01C7BCBC]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] Salient feature selection
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

I am relatively new to R. I am hoping that someone will be able to point 
me in the right direction and/or suggest a technique/package/reference 
that will help me with the following. I have:

a) Some explanatory variables (integers, real) - these are "real world" 
physical descriptions, i.e. counts of features, etc

b) Some response variables (integers, real) - these are image analysis 
measurements (gray-value distributions, textural descriptors, etc) of 
the same things represented in a

and I want to find out which between the two correlate best - i.e. the 
salient features from BOTH sets (i.e. not for classification purposes).

For example, if a has 10 explanatory variables and b has 10 response 
variables, I want to test the complete set of explanatory variables with 
each individual response (or vice versa). So, explanatory 1-10 with 
response 1, explanatory 1-10 with response 2, explanatory 1-10 with 
response 3, etc...

This should ultimately tell me which "real world" physical features are 
related best with the image analysis measurements (with the confidence 
level between them).

I hope this makes sense?

I have used SPSS AnswerTree's "Exhaustive CHAID" before to select a 
subset of input features for a complete set of output features to aid 
the creation of artificial neural networks. I want to do a similar 
thing, but it is not important for ALL explanatory and response 
variables are used/selected.

I hope that I have been clear in my intentions and I look forward to 
your replies, Andy

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

g70lacdS>a yhuA