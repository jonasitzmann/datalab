From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 14:37:24 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EIbNL9025187
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 14:37:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EIaC5S020128;
	Thu, 14 Jun 2007 20:36:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from bay0-omc2-s27.bay0.hotmail.com (bay0-omc2-s27.bay0.hotmail.com
	[65.54.246.163])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EIX422019440
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:33:05 +0200
Received: from hotmail.com ([64.4.38.45]) by bay0-omc2-s27.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Thu, 14 Jun 2007 11:33:04 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Thu, 14 Jun 2007 11:33:04 -0700
Message-ID: <BAY116-F3571CED6E53E4FC4AD677A991F0@phx.gbl>
Received: from 64.4.38.200 by by116fd.bay116.hotmail.msn.com with HTTP;
	Thu, 14 Jun 2007 18:33:02 GMT
X-Originating-IP: [81.199.4.10]
X-Originating-Email: [ndoye_p@hotmail.com]
X-Sender: ndoye_p@hotmail.com
In-Reply-To: <1314811283.20070614112554@gmail.com>
From: "Ndoye Souleymane" <ndoye_p@hotmail.com>
To: genomenet@gmail.com
Date: Thu, 14 Jun 2007 18:33:02 +0000
Mime-Version: 1.0
X-OriginalArrivalTime: 14 Jun 2007 18:33:04.0251 (UTC)
	FILETIME=[71F2FCB0:01C7AEB2]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] how to fit y=m*x
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5EIbNL9025187

Hi,

try : ln(y~x)


>From: genomenet@gmail.com
>Reply-To: genomenet@gmail.com
>To: r-help@stat.math.ethz.ch
>Subject: [R] how to fit y=m*x
>Date: Thu, 14 Jun 2007 11:25:54 -0700
>
>Hi There,
>
>I have a set of data (xi,yi).I want to fit them with the equation
>y=mx.
>
>note: in the above equation, there is no intercept.
>
>I don't know how to use common software such as R , matlab, sas, or
>spss to do this kind of regression.
>
>Does anyone know how to do this?
>
>I know it is easy to use least square method to do this by
>programming. But I want to find if there exists some common software
>which can do this.
>
>Thank you very much.
>
>Van
>
>______________________________________________
>R-help@stat.math.ethz.ch mailing list
>https://stat.ethz.ch/mailman/listinfo/r-help
>PLEASE do read the posting guide 
>http://www.R-project.org/posting-guide.html
>and provide commented, minimal, self-contained, reproducible code.

_________________________________________________________________
D�couvrez le Blog heroic Fantaisy d'Eragon!

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

oIa9e-Zvqh1