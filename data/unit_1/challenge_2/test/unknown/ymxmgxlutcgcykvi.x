From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 13:31:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LHV8L9026961
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 13:31:09 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LHTgGq014854;
	Thu, 21 Jun 2007 19:29:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_40,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from SXT-SM-1.UCIS.Dal.Ca (SXT-SM-1.UCIS.Dal.Ca [129.173.5.72])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LHTXZX014817
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 19:29:35 +0200
Received: from [129.173.38.222] (GenerationX.Psychology.Dal.Ca
	[129.173.38.222])
	by SXT-SM-1.UCIS.Dal.Ca (8.12.11/8.12.10) with ESMTP id l5LHTWE1016440; 
	Thu, 21 Jun 2007 14:29:32 -0300
In-Reply-To: <7cced4ed0706201302y3df7a375hbcf775b58a0cb2bc@mail.gmail.com>
References: <7cced4ed0706201302y3df7a375hbcf775b58a0cb2bc@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Message-Id: <1FC599EA-EA00-4F66-A202-0A9F94D2855C@DAL.CA>
From: Mike Lawrence <Mike.Lawrence@dal.ca>
Date: Thu, 21 Jun 2007 14:29:31 -0300
To: Jose Borreguero <borreguero@gmail.com>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] how to create cumulative histogram from two independent
	variables?
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


?plot.ecdf

plot.ecdf(rnorm(100),rexp(100))

On 20-Jun-07, at 5:02 PM, Jose Borreguero wrote:

> Hi all,
> I am extremely newbie to R. Can anybody jump-start me with any  
> clues as to
> how do I get a cumulative histogram from two independent variables,
> cumhist(X,Y) ?
> -jose
>
> 	[[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting- 
> guide.html
> and provide commented, minimal, self-contained, reproducible code.

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

            

riwS