From sugar-bounces@lists.laptop.org  Tue Jun  5 12:22:13 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55GMDhB011070
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 12:22:13 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 1E74D58BC7E4;
	Tue,  5 Jun 2007 12:21:55 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id CFFB158BC7F9; Tue,  5 Jun 2007 12:21:53 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id CD30558BC7E4
	for <sugar@laptop.org>; Tue,  5 Jun 2007 12:21:53 -0400 (EDT)
X-ASG-Debug-ID: 1181060524-311d00050000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: void.printf.net[217.147.94.159]
X-Barracuda-Start-Time: 1181060524
X-Barracuda-Encrypted: AES256-SHA
X-ASG-Whitelist: Sender
Received: from void.printf.net (void.printf.net [217.147.94.159])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by spam.laptop.org (Spam Firewall) with ESMTP id 1303E13384
	for <sugar@laptop.org>; Tue,  5 Jun 2007 12:22:05 -0400 (EDT)
Received: from pullcord.laptop.org ([18.85.46.20])
	by void.printf.net with esmtp (Exim 4.50) id 1HvbnH-0007Ho-Bo
	for sugar@laptop.org; Tue, 05 Jun 2007 17:22:03 +0100
To: sugar@laptop.org
X-ASG-Orig-Subj: Re: Tinderbox results, 20070605-0145.
References: <86vee3ey9k.fsf@pullcord.laptop.org>
From: Chris Ball <cjb@laptop.org>
Date: Tue, 05 Jun 2007 12:30:30 -0400
In-Reply-To: <86vee3ey9k.fsf@pullcord.laptop.org> (Sugar Tinderbox's message
	of "Tue\, 05 Jun 2007 02\:00\:39 -0400")
Message-ID: <86odjufjo9.fsf@pullcord.laptop.org>
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/23.0.51 (gnu/linux)
MIME-Version: 1.0
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
Subject: Re: [sugar] Tinderbox results, 20070605-0145.
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

Hi,

   > All modules built successfully:
   > http://dev.laptop.org/sugar-tinder/20070605-0145/

   > The following activities failed to run:
   > http://dev.laptop.org/sugar-tinder/20070605-0145/activities.html

Some follow-up points here:

* These mails aren't being sent automatically at the moment, because I
  don't know how often everyone will want to see them.  The tinderbox
  script generates the mail message, and my plan for now is to send it
  out manually when something changes in the results.

* Do we want these messages to go to sugar@, or is that too spammy?
  We can create another list if needed.

* Could we have the logs/*.log files contain only one copy of the
  Python tracebacks?  That would make these mails easier to follow.

* I guess it would be easy to keep a dictionary of "activity name 
  => maintainer e-mail address", and then CC: the maintainers of
  broken activities on these mails.  Good idea?

Let me know if you have any other ideas about features for this.  
Thanks,

- Chris.
-- 
Chris Ball   <cjb@laptop.org>
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

  

n/nt