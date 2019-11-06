From r-help-bounces@stat.math.ethz.ch  Wed Jun 13 04:44:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D8ifL9005565
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 04:44:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8i1Yx007289;
	Wed, 13 Jun 2007 10:44:16 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5D8gNkR006271
	for <r-help@stat.math.ethz.ch>; Wed, 13 Jun 2007 10:42:23 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5D8gMRA024822; 
	Wed, 13 Jun 2007 09:42:22 +0100 (BST)
Date: Wed, 13 Jun 2007 09:42:22 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: taivo <taara_isa@hotmail.com>
In-Reply-To: <11083776.post@talk.nabble.com>
Message-ID: <Pine.LNX.4.64.0706130940130.21818@gannet.stats.ox.ac.uk>
References: <11083776.post@talk.nabble.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="27464147-19761128-1181724142=:21818"
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Trouble making JRI.jar with Ubuntu and Java6
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
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--27464147-19761128-1181724142=:21818
Content-Type: TEXT/PLAIN; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT

You have a version mismatch.  You haven't told us your version of JRI, but 
it is not recent enough for R 2.5.0.

Also, you told us you are using java-6-sun-1.6.0.00, but the commands you 
show indicate otherwise.

On Tue, 12 Jun 2007, taivo wrote:

>
> Hi,
>
> Forum newb here, looking for some help. Have been trying to install an
> R-Java interface to make R calls from Java. JRI's configure script runs
> fine, but when it comes to make, I get the "error: too few arguments to
> function 'R_ParseVector'"
>
> Java runs fine. R runs fine. But I can't get this .jar file created.
> <grumble>
>
> Any help would be appreciated immensely,
>
> Taivo
> Ubuntu FeistyFawn, java-6-sun-1.6.0.00, R 2.5
>
> p.s. Here's the screen output:
>
> make -C src JRI.jar
> make[1]: Entering directory `/home/taivo/coop_summer2007/r/JRI/src'
> gcc -std=gnu99 -c -o Rengine.o Rengine.c -g -Iinclude  -DRIF_HAS_CSTACK
> -DRIF_HAS_RSIGHAND -g -O2
> -I/usr/lib/jvm/java-1.5.0-sun-1.5.0.11/jre/../include
> -I/usr/lib/jvm/java-1.5.0-sun-1.5.0.11/jre/../include/linux -fPIC
> -I/usr/lib/jvm/java-1.5.0-sun-1.5.0.11/jre/../include
> -I/usr/lib/jvm/java-1.5.0-sun-1.5.0.11/jre/../include/linux
> -I/usr/share/R/include -I/usr/share/R/include -I/usr/share/R/include
> Rengine.c: In function ��Java_org_rosuda_JRI_Rengine_rniParse��:
> Rengine.c:92: error: too few arguments to function ��R_ParseVector��
> make[1]: *** [Rengine.o] Error 1
> make[1]: Leaving directory `/home/taivo/coop_summer2007/r/JRI/src'
> make: *** [src/JRI.jar] Error 2
>
>

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595
--27464147-19761128-1181724142=:21818
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--27464147-19761128-1181724142=:21818--

                  

4o0Welc