From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 13:52:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LHqYL9027191
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 13:52:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LHpGsY021590;
	Thu, 21 Jun 2007 19:51:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from premail.unibw-hamburg.de (mailcluster-2.unibw-hamburg.de
	[139.11.5.102])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LHp4Bx021517
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 19:51:05 +0200
Received: from rzav3.unibw-hamburg.de ([139.11.12.53])
	by premail.unibw-hamburg.de with smtp (Exim 4.66)
	(envelope-from <detlef.steuer@hsu-hamburg.de>)
	id 1I1Qmn-0005Xk-3u; Thu, 21 Jun 2007 19:49:37 +0200
Received: from premail.unibw-hamburg.de ([139.11.5.103])
	by rzav3.unibw-hamburg.de (SMSSMTP 4.1.12.43) with SMTP id
	M2007062119493608937 ; Thu, 21 Jun 2007 19:49:36 +0200
Received: from e176080090.adsl.alicedsl.de ([85.176.80.90] helo=linux.site)
	by premail.unibw-hamburg.de with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.66) (envelope-from <detlef.steuer@hsu-hamburg.de>)
	id 1I1Qmm-00064x-O0; Thu, 21 Jun 2007 19:49:36 +0200
Date: Thu, 21 Jun 2007 19:49:34 +0200
From: Detlef Steuer <detlef.steuer@hsu-hamburg.de>
To: r-help@stat.math.ethz.ch
Message-ID: <20070621194934.7731ef04@linux.site>
In-Reply-To: <61B482B74D6EE443B90356E080476E34DEE559@exc2.cruciform.wibr.ucl.ac.uk>
References: <61B482B74D6EE443B90356E080476E34DEE559@exc2.cruciform.wibr.ucl.ac.uk>
X-Mailer: Sylpheed-Claws 2.1.0 (GTK+ 2.8.3; i686-suse-linux-gnu)
Mime-Version: 1.0
X-HSU-Virusscan: Routed to first Viruswall
X-HSU-Virusscan: First Viruswall passed
X-HSU-Virusscan: Routed to second Viruswall (Symantec Mail Security)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] FW: Suse RPM installation problem
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
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5LHqYL9027191

On Thu, 21 Jun 2007 18:01:06 +0100"Stephen Henderson" <s.henderson@ucl.ac.uk> wrote:
> Hello > > I am trying to install the R RPM for Suse 10.0 on an x86_64 PC. However> I am failing a dependency for  "libpng12.so.0" straight away
Hi Stephen,

if you add 
http://software.opensuse.org/download/home:/dsteuer/SUSE_Linux_10.0/
as installation source, dependencies should get resolved automatically.
HthDetlef
> > > >     PC5-140:/home/rmgzshd # rpm -i R-base-2.5.0-2.1.x86_64.rpm>     error: Failed dependencies:>     libpng12.so.0(PNG12_0)(64bit) is needed by R-base-2.5.0-2.1.x86_64> > I do seem to have this file> >     PC5-140:/home/rmgzshd # whereis libpng12.so.0>     libpng12.so: /usr/lib/libpng12.so.0 /usr/local/lib/libpng12.so > > but presuming that it is not the 64bit version mentioned I went looking> for a 64 bit version but could not find it through google.> > However reading the Installation manual I noted that libpng is mention> in the context of a source build. I therefore downloaded "libpng-1.2.18"> (v-1.2.8 or later is specified in the manual) and succesfully compiled> this. This did not however help with my problem.> > Any suggestions?> > Thanks> Stephen Henderson>  > > **********************************************************************> This email and any files transmitted with it are confidentia...{{dropped}}> > ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.

-- "Keinen Gedanken zweimal denken, außer er ist schön." Unbekannte Quelle
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

     

1afLlv.  g0|