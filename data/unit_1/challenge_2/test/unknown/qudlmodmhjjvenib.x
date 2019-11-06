From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 18:44:35 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RMiYL9000994
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 18:44:35 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RMfSvP028649;
	Thu, 28 Jun 2007 00:41:41 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web32513.mail.mud.yahoo.com (web32513.mail.mud.yahoo.com
	[68.142.207.223])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5RMBjvu018582
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 00:11:45 +0200
Received: (qmail 81953 invoked by uid 60001); 27 Jun 2007 22:11:44 -0000
X-YMail-OSG: I_GBD1IVM1mJBAp7oNDK9RZAdnrNIrf5ppQ6i6w5QO15mdE_qyx3Z19yS4jlxk8ZG9_HZmT6QTfBRS5eMTNA7oSpuTGy5Y04f5GAPKrEHL_qJWj.lMM-
Received: from [141.213.242.27] by web32513.mail.mud.yahoo.com via HTTP;
	Wed, 27 Jun 2007 15:11:44 PDT
Date: Wed, 27 Jun 2007 15:11:44 -0700 (PDT)
From: Luo Weijun <luo_weijun@yahoo.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <776851.76466.qm@web32513.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: bioc-devel@stat.math.ethz.ch
Subject: [R] Loading problem with XML_1.9
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5RMiYL9000994

Hello all,
I have loading problem with XML_1.9 under 64 bit
R2.3.1, which I got from http://R.research.att.com/.
XML_1.9 works fine under 32 bit R2.5.0. I thought that
could be installation problem, and I tried
install.packages or biocLite, every time the package
installed fine, except some warning messages below:
ld64 warning: in /usr/lib/libxml2.dylib, file does not
contain requested architecture
ld64 warning: in /usr/lib/libz.dylib, file does not
contain requested architecture
ld64 warning: in /usr/lib/libiconv.dylib, file does
not contain requested architecture
ld64 warning: in /usr/lib/libz.dylib, file does not
contain requested architecture
ld64 warning: in /usr/lib/libxml2.dylib, file does not
contain requested architecture

Here is the error messages I got, when XML is loaded:
> library(XML)
Error in dyn.load(x, as.logical(local),
as.logical(now)) : 
        unable to load shared library
'/usr/local/lib64/R/library/XML/libs/XML.so':
  dlopen(/usr/local/lib64/R/library/XML/libs/XML.so,
6): Symbol not found: _xmlMemDisplay
  Referenced from:
/usr/local/lib64/R/library/XML/libs/XML.so
  Expected in: flat namespace
Error: .onLoad failed in 'loadNamespace' for 'XML'
Error: package/namespace load failed for 'XML'

I understand that it has been pointed out that
Sys.getenv("PATH") needs to be revised in the file
XML/R/zzz.R, but I can’t even find that file under
XML/R/ directory. Does anybody have any idea what
might be the problem, and how to solve it? Thanks a
lot!
BTW, the reason I need to use R64 is that I have
memory limitation issue with R 32 bit version when I
load some very large XML trees. 

Session information
> sessionInfo()
Version 2.3.1 Patched (2006-06-27 r38447) 
powerpc64-apple-darwin8.7.0 

attached base packages:
[1] "methods"   "stats"     "graphics"  "grDevices"
"utils"     "datasets" 
[7] "base"     

Weijun

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     

oJ0:DS 0
C
 mi