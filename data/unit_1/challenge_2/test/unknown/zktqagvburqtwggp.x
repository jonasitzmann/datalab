From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 15:55:50 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JJtmL9000819
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 15:55:49 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JJsAvU004234;
	Tue, 19 Jun 2007 21:54:33 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from sccrmhc15.comcast.net (sccrmhc15.comcast.net [204.127.200.85])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JJrwPB004166
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 21:53:58 +0200
Received: from [192.168.0.91]
	(74-94-87-209-minnesota.hfc.comcastbusiness.net?[74.94.87.209])
	by comcast.net (sccrmhc15) with SMTP
	id <20070619195357015007rbrke>; Tue, 19 Jun 2007 19:53:57 +0000
From: Marc Schwartz <marc_schwartz@comcast.net>
To: Bill Hunsicker <BHunsicker@rfmd.com>
In-Reply-To: <3EA9CDD20D8E694F92C01B7BA7FC5AC809F8A82E@mail.internal.rfmd.com>
References: <3EA9CDD20D8E694F92C01B7BA7FC5AC809F8A82E@mail.internal.rfmd.com>
Date: Tue, 19 Jun 2007 14:53:56 -0500
Message-Id: <1182282836.3690.53.camel@Bellerophon.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 (2.10.2-2.fc7) 
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Multiple plot jpeg file
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: marc_schwartz@comcast.net
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



On Tue, 2007-06-19 at 15:39 -0400, Bill Hunsicker wrote:
> R-Help,
> 
> I am executing a R script and would like to put multiple plots into a
> single file. For some reason the contents of plotfile.jpg always seem to
> contain the last plot and not all plots.
> 
> If I do same thing with pdf, a multiple plot file is created.
> 
> Can you help me?
> 
> Regards,
> Bill

There is no notion of a 'page' in bitmapped devices as there is with PDF
or PS devices. Thus, each time you call plot(...) with a bitmapped
device, the previous output is lost.

If you want multiple plots in a bitmapped device, you would need to use
layout() or par(mfrow/mfcol) to define multiple plot regions within the
overall bitmapped output.

For example:

jpeg("test.jpg", 400, 400)

# Set for 2 rows, 1 col
par(mfrow = c(2, 1))

# Set the margins to make room
par(mar = c(1, 4, 4, 2))

# Draw a barplot
barplot(1:5)

# Set the margins to make room
par(mar = c(5, 4, 1, 2))

# Do a scatterplot
plot(1:10)

# Close the device
dev.off()


Adjust other pars as required.

See ?par and ?layout

HTH,

Marc Schwartz

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

fma#m