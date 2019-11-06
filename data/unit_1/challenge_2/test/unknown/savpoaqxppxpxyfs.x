From r-help-bounces@stat.math.ethz.ch  Sat Jun 16 00:11:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5G4B8L9009907
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 00:11:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G49V6W005998;
	Sat, 16 Jun 2007 06:09:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from alias3.ihug.co.nz (alias3.ihug.co.nz [203.96.222.13])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5G49Mti005956
	for <r-help@stat.math.ethz.ch>; Sat, 16 Jun 2007 06:09:23 +0200
Received: from ironport3.ihug.co.nz [203.109.254.23] 
	by alias3.ihug.co.nz with esmtp (Exim 3.36 #1 (Debian))
	id 1HzPbF-0001C9-00; Sat, 16 Jun 2007 16:09:21 +1200
Received: from 203-109-144-240.static.bliink.ihug.co.nz (HELO
	localhost.localdomain) ([203.109.144.240])
	by ironport3.ihug.co.nz with ESMTP/TLS/AES256-SHA;
	16 Jun 2007 16:09:21 +1200
X-Ironport-Seen: Yes
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by localhost.localdomain (8.13.8/8.13.8) with ESMTP id l5G49IT3017593; 
	Sat, 16 Jun 2007 16:09:19 +1200
Received: (from pat@localhost)
	by localhost.localdomain (8.13.8/8.13.8/Submit) id l5G49HHG017592;
	Sat, 16 Jun 2007 16:09:17 +1200
X-Authentication-Warning: localhost.localdomain: pat set sender to
	p_connolly@ihug.co.nz using -f
Date: Sat, 16 Jun 2007 16:09:17 +1200
From: Patrick Connolly <p_connolly@ihug.co.nz>
To: Li-Jung Liang <liangl@ucla.edu>
Message-ID: <20070616040917.GT4805@ihug.co.nz>
References: <4672FB97.4040005@ucla.edu>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4672FB97.4040005@ucla.edu>
User-Agent: Mutt/1.4.2.2i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Upgraded FC4 to FC5 - unable to start device X11 in R
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

On Fri, 15-Jun-2007 at 01:50PM -0700, Li-Jung Liang wrote:

|> Hi,
|> 
|> I upgraded my system from FC4 to FC5.  So now I have R version 2.5.0 
|> (2007-04-23).
|> But I ran into a problem with starting device X11 (message below).
|> 
|>  > X11()
|> can't find X11 font
|> Error in X11(display, width, height, pointsize, if (is.null(gamma)) 1 
|> else gamma,  :
|>         unable to start device X11
|> 
|> Any idea?

Check what search() gives you.  Make sure package:grDevices is on that
list.

I ran into that problem myself.  I never figured out how come it used
to be there, but suddenly ceased to be.  The problem didn't appear
until R-2.5.0.  In the USER-VISIBLE CHANGES under 
CHANGES IN R VERSION 2.0.0,
I see this:

    o	Package 'graphics' has been split into 'grDevices' (the graphics
	devices shared between base and grid graphics) and 'graphics'
	(base graphics).  Each of the 'graphics' and 'grid' packages
	load 'grDevices' when they are attached.  Note that
	ps.options() has been moved to grDevices and user hooks may
	need to be updated.

My suspicion is that grDevices did not have to be specifically loaded
if graphics was one of your default packages loaded at startup.  Since
few others seem to have had the same experience, I'd hesitate to call
it a bug.  I've got round the problem by adding grDevices to the list
in my ~/.Rprofile file.

Others might have a better explanation, of course.

HTH


-- 
~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.   
   ___    Patrick Connolly   
 {~._.~}          		 Great minds discuss ideas    
 _( Y )_  	  	        Middle minds discuss events 
(:_~*~_:) 	       		 Small minds discuss people  
 (_)-(_)  	                           ..... Anon
	  
~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

ha=tI