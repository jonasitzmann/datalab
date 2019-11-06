From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 18:27:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FMR6L9007342
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 18:27:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FMN0oG025584;
	Sat, 16 Jun 2007 00:23:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mailhost.auckland.ac.nz (curly.its.auckland.ac.nz
	[130.216.12.33])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FKffrV013425
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 22:41:42 +0200
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id 66BAE9C3B8;
	Sat, 16 Jun 2007 08:41:38 +1200 (NZST)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Received: from mailhost.auckland.ac.nz ([127.0.0.1])
	by localhost (curly.its.auckland.ac.nz [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id O1E-31oHbrXc; Sat, 16 Jun 2007 08:41:38 +1200 (NZST)
Received: from stat10.stat.auckland.ac.nz (stat10.stat.auckland.ac.nz
	[130.216.50.10])
	by mailhost.auckland.ac.nz (Postfix) with ESMTP id F2CB99C371;
	Sat, 16 Jun 2007 08:41:36 +1200 (NZST)
Received: from [127.0.0.1] (uoa173566.stat.auckland.ac.nz [130.216.51.44])
	by stat10.stat.auckland.ac.nz (Postfix) with ESMTP
	id DC46636E4A6; Sat, 16 Jun 2007 08:41:36 +1200 (NZST)
Message-ID: <4672F980.7020505@stat.auckland.ac.nz>
Date: Sat, 16 Jun 2007 08:41:36 +1200
From: Paul Murrell <p.murrell@auckland.ac.nz>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: ted.harding@manchester.ac.uk
References: <XFMail.070615191851.Ted.Harding@manchester.ac.uk>
In-Reply-To: <XFMail.070615191851.Ted.Harding@manchester.ac.uk>
Cc: r-help@stat.math.ethz.ch, "\(Ted Harding\)" <efh@nessie.mcc.ac.uk>
Subject: Re: [R] [OT] 'gv' and fractional points
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

Hi

If I understand correctly, this is something that the 'grImport' package
might be very useful for.  You can import the PostScript image into R,
which means that you can draw the image, but you also have the locations
of everything that is drawn as numeric values so you should be able
(probably after a bit of transformation) to extract the values to very
good accuracy.  If you can provide me with an example file, I'd be happy
to play around and see if I could get this to work.

Paul


(Ted Harding) wrote:
> On 15-Jun-07 16:29:53, Ted Harding wrote:
>> [...]
>> However, as a follow-up, I've since found that one can (somewhat
>> tediously) do what I was asking with the GIMP.
> 
> As well as the awkwardness of doing it the GIMP way, I've
> discovered another disadvantage.
> 
> I'd previously tried it on a rather small image (175x70 points,
> = 2.43x0.97 inches).
> 
> I then tried it on a full A4 page. Even at a GIMP "Scale"
> factor of 300, this leads to a 50MB temporary file being
> created. At 1000, this would rise to some 550MB, as I found
> out after this attempt filled up the limited spare space
> I have on the disk drive in question ...
> 
> No doubt "Scale"=300 (as opposed to the default of 100) may be
> ample for most purposes, but the overhead is still unpleasant!
> 
> Hence I'm once again hankering after something which will display
> a PS file as efficiently as 'gv', but will report the cursor
> position in fractions of a point!
> 
> Best wishes to all,
> Ted.
> 
> --------------------------------------------------------------------
> E-Mail: (Ted Harding) <Ted.Harding@manchester.ac.uk>
> Fax-to-email: +44 (0)870 094 0861
> Date: 15-Jun-07                                       Time: 19:18:48
> ------------------------------ XFMail ------------------------------
> 
> --------------------------------------------------------------------
> E-Mail: (Ted Harding) <ted.harding@nessie.mcc.ac.uk>
> Fax-to-email: +44 (0)870 094 0861
> Date: 15-Jun-07                                       Time: 20:33:19
> ------------------------------ XFMail ------------------------------
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

-- 
Dr Paul Murrell
Department of Statistics
The University of Auckland
Private Bag 92019
Auckland
New Zealand
64 9 3737599 x85392
paul@stat.auckland.ac.nz
http://www.stat.auckland.ac.nz/~paul/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                 

eQCE4u 0td