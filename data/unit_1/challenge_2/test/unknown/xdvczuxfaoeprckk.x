From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 03:39:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l647dTL9007382
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 03:39:30 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647cPbh011102;
	Wed, 4 Jul 2007 09:38:35 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l647cErx011016
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 09:38:15 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I5zRG-0005oo-5m
	for r-help@stat.math.ethz.ch; Wed, 04 Jul 2007 00:38:14 -0700
Message-ID: <11426235.post@talk.nabble.com>
Date: Wed, 4 Jul 2007 00:38:14 -0700 (PDT)
From: Grimbough <msmith@ebi.ac.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <20070629072923.172990@gmx.net>
MIME-Version: 1.0
X-Nabble-From: msmith@ebi.ac.uk
References: <1183099152.5873.5.camel@zhurx-desktop>
	<20070629072923.172990@gmx.net>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l647cErx011016
Subject: Re: [R] How to install R 2.5 with Synaptic in Ubuntu?
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l647dTL9007382


Hi,I can't get this approach to work.  When I first added the repsitory line to/etc/apt/sources.list synaptic complained that it was a malformed line.  Ifixed thisby adding "main" to end of the entry making it:
 deb http://my.favorite.cran.mirror/bin/linux/ubuntu feisty main
However after this it still complains that it can't find "packages.gz"
It appears to be looking in http://my.favorite.cran.mirror/bin/linux/ubuntu/distsfeistywhich isn't the directory structure of the cran repository, but I can see anyway to modify this behaviour.  Every other Ubuntu repositoyI have looked at contains the dists directory.
Any suggestions for modifying this behaviour are gratefully recieved.Many thanks
Mike Smith

&quot;Stefan Große&quot; wrote:> >>I'm using Ubuntu dapper, which only have R of Version 2.2.1.> >>Would anybody tell me how to install the latest version of R with > > > from the CRAN Ubuntu readme- works for synaptic as well:> > * UBUNTU> > R packages for Ubuntu on i386 are available. The plans are to support at> least the latest Ubuntu release and the latest LTS release. Currently> (April 2007), these are Feisty Fawn (7.04) and Dapper Drake (6.06),> respectively. Since Feisty was released very shortly before R 2.5.0,> binary packages *for this release of R* are also available for Edgy> Eft (6.10).> > To obtain the latest R packages, add an entry like> >   deb http://my.favorite.cran.mirror/bin/linux/ubuntu feisty/> > or> >   deb http://my.favorite.cran.mirror/bin/linux/ubuntu edgy/> > or> >   deb http://my.favorite.cran.mirror/bin/linux/ubuntu dapper/> > in your /etc/apt/sources.list file. See > http://cran.r-project.org/mirrors.html> for the list of CRAN mirrors. To install the complete R system, use> >   sudo apt-get update>   sudo apt-get install r-base> > Users who need to compile packages should also install the r-base-dev> package:> >   sudo apt-get install r-base-dev> > The R packages for Ubuntu should otherwise behave like the Debian ones.> For> more information, see the README file in> >   http://cran.R-project.org/bin/linux/debian/> > * SECURE APT> > The Ubuntu archives on CRAN are signed with the key of "Vincent Goulet> <vincent.goulet@act.ulaval.ca>" with key ID E2A11821. You can fetch> this with> >   gpg --keyserver subkeys.pgp.net --recv-key E2A11821> > and then you feed the key to apt-key with> >   gpg -a --export E2A11821 | sudo apt-key add -> > Some people have reported difficulties using this approach. The issue> was usually related to a firewall blocking port 11371. An alternative> approach is to search for the key at http://keyserver.noreply.org/ and> copy the key to a plain text file, say key.txt. Then, feed the key to> apt-key with> >   sudo apt-key add key.txt> > > * ACKNOWLEDGEMENT> > The Debian R packages are maintained by Dirk Eddelbuettel and Spie Bates.> The Ubuntu packages are compiled for i386 by Vincent Goulet.> > > 	[[alternative HTML version deleted]]> > ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide> http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.> > 
-- View this message in context: http://www.nabble.com/How-to-install-R-2.5-with-Synaptic-in-Ubuntu--tf3998481.html#a11426235Sent from the R help mailing list archive at Nabble.com.
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

  

fSVim	saef5iZh
0