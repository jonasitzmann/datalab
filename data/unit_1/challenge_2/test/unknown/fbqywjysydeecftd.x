From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 06:40:52 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DAepL9006559
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 06:40:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DAeFXx019699;
	Wed, 13 Jun 2007 12:40:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from rutherford.zen.co.uk (rutherford.zen.co.uk [212.23.3.142])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5DAe8u9019606
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 12:40:08 +0200
Received: from [217.155.205.190] (helo=Desktop.aghmed.fsnet.co.uk)
	by rutherford.zen.co.uk with esmtp (Exim 4.50)
	id 1HyQGl-0001qT-V8; Wed, 13 Jun 2007 10:40:08 +0000
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Wed, 13 Jun 2007 11:40:01 +0100
To: "Rina Miehs" <rmi@danishmeat.dk>, <r-help@stat.math.ethz.ch>
From: Michael Dewey <info@aghmed.fsnet.co.uk>
In-Reply-To: <466FC170.76E3.003F.0@danishmeat.dk>
References: <466FC170.76E3.003F.0@danishmeat.dk>
Mime-Version: 1.0
Message-ID: <Zen-1HyQGl-0001qT-V8@rutherford.zen.co.uk>
X-Originating-Rutherford-IP: [217.155.205.190]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] export to a dat file that SAS can read
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

At 09:05 13/06/2007, Rina Miehs wrote:
>Hello
>
>i have a data frame in R that some SAS users need to use in their
>programs, and they want it in a dat file, is that possible?
>and which functions to use for that?

Does
library(foreign)
?write.foreign
get you any further forward?

>
>my data frame is like this:
>
> > out13[1:100,]
>              farid            niveau1          niveau3
>p1                p3   antal1
>2    10007995  0.0184891394  4.211306e-10 5.106471e-02 2.594580e-02
>  3
>9    10076495  0.0140812953  3.858757e-10 1.065804e-01 3.743271e-02
>  3
>10   10081892  0.0241760590  7.429612e-10 1.628295e-02 3.021538e-04
>  6
>13   10101395  0.0319517576  3.257375e-10 2.365204e-03 6.633232e-02
>19
>16   10104692  0.0114040787  3.661169e-10 1.566721e-01 4.550663e-02
>  4
>17   10113592  0.0167586526  4.229634e-10 6.922003e-02 2.543987e-02
>  2
>18   10113697  0.0259205504  2.888646e-10 1.096366e-02 9.118995e-02
>  6
>22   10121697 -0.0135341273 -5.507914e-10 1.157417e-01 5.501947e-03
>16
>28   10146495  0.0093514076  3.493487e-10 2.041883e-01 5.340801e-02
>  4
>29   10150497  0.0091611504  3.455925e-10 2.089893e-01 5.531904e-02
>  4
>36   10171895  0.0089116669  2.956742e-10 2.153844e-01 8.614259e-02
>  4
>42   10198295  0.0078515166  3.147140e-10 2.437943e-01 7.314111e-02
>  5
>
>
>Thanks
>
>Rina
>
>
>
>
>         [[alternative HTML version deleted]]

Michael Dewey
http://www.aghmed.fsnet.co.uk

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

Hn:l-7cXa	 bfDyf