From sugar-bounces@lists.laptop.org  Sat Jun  2 15:24:31 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52JOThB027199
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 15:24:30 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id D388058BC7F9;
	Sat,  2 Jun 2007 15:24:11 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id ED14958BC7D4; Sat,  2 Jun 2007 15:24:10 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id EB41258BC7C4
	for <sugar@laptop.org>; Sat,  2 Jun 2007 15:24:10 -0400 (EDT)
X-ASG-Debug-ID: 1180812255-4c8a00000000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: py-out-1112.google.com[64.233.166.176]
X-Barracuda-Start-Time: 1180812255
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.176])
	by spam.laptop.org (Spam Firewall) with ESMTP id 72A3B12571
	for <sugar@laptop.org>; Sat,  2 Jun 2007 15:24:15 -0400 (EDT)
Received: by py-out-1112.google.com with SMTP id b50so1621085pyh
	for <sugar@laptop.org>; Sat, 02 Jun 2007 12:24:14 -0700 (PDT)
Received: by 10.35.76.9 with SMTP id d9mr5318448pyl.1180812254577;
	Sat, 02 Jun 2007 12:24:14 -0700 (PDT)
Received: by 10.35.119.15 with HTTP; Sat, 2 Jun 2007 12:24:14 -0700 (PDT)
Message-ID: <5396c0d10706021224r51e151abj5c0d8490d79fcf4c@mail.gmail.com>
Date: Sat, 2 Jun 2007 15:24:14 -0400
From: "Samuel Klein" <meta.sj@gmail.com>
To: "Alan Kay" <alan.kay@squeakland.org>,
   "Eben Eliason" <eben.eliason@gmail.com>
X-ASG-Orig-Subj: Re: [sugar] Spreadsheets/ Slideshows
In-Reply-To: <7.0.1.0.2.20070602080846.06af3178@squeakland.org>
MIME-Version: 1.0
Content-Disposition: inline
References: <mailman.86.1180764139.20668.devel@lists.laptop.org>
	<46617360.9090107@comcast.net>
	<948b197c0706020750n7c0763d9kce3e4a17e84764d0@mail.gmail.com>
	<7.0.1.0.2.20070602080846.06af3178@squeakland.org>
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.18769
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Rebecca Gettys <rebecca.gettys@comcast.net>, devel@lists.laptop.org,
   etoys <etoys@laptop.org>, Sugar Mail List <sugar@laptop.org>
Subject: Re: [sugar] Spreadsheets/ Slideshows
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

Eben, this might be a great opportunity to spend some time with the
etoys team working out how you could realize what you have in mind
with existing tools.  As Alan notes, it is designed to do very much
what you are writing about -- as well as  doing some excellent sugar &
1200x900 emulation ;-)

I'd like to spend a day this coming week working through Alan's
50-of-100 notes, and the use cases you have in mind.  (Alan, can we
make the document public?)

As for presentations and slides, Etoys remains for the time being our
supported method for importing .ppt -- Rebecca, have you tried this?
Were you asking for something more specific?

SJ

ps - That might also be a good opportunity to think about what a
generic bundle looks like.

On 6/2/07, Alan Kay <alan.kay@squeakland.org> wrote:
> You might want to check out what Etoys actually does and is. (Hint:
> it covers your desiderata beIow pretty well.)
>
> I suggest perusing the document that I made up for the OLPC countries
> meeting a few weeks ago. Nia Lewis will probably have a copy.
>
> Cheers,
>
> Alan
>
> At 07:50 AM 6/2/2007, Eben Eliason wrote:
> >Ever since this project began, I've had this idea in my head regarding
> >what a "slideshow" might mean on the OLPC machine.  I'd really like to
> >see an activity called "Collage" which is something like a modern
> >descendent of Hypercard.  It should take the idea of embedding media
> >further, of course allowing images, sounds, video and text, but
> >perhaps also supporting live logo turtles, live editable text boxes
> >and other interactive forms.  Ideally, there would be an interface
> >which made it pluggable so that any activity could embed its formats
> >and provide hooks for interacting with it.
> >
> >Bringing it all together, it should support a basic logo-like
> >scripting language.  This could allow simple actions like "next page",
> >but could also be allowed to pull text from the live text boxes via
> >some identifiers, animate the embedded objects, track some basic mouse
> >and keyboard events, and interact with hooks provided by the plugins.
> >
> >A child could create a single page, or a simple slideshow, but by
> >taking full advantage of the nature of the scripting which pulls
> >things together, they can create non-linear books, interactive
> >animations, science reports with embedded interactive experiments,
> >games, and more.
> >
> >As fun as this would be for kids, I also see this as being a fantastic
> >format for teachers to create lesson plans in:  provide some
> >instructions with text and images, embed a video about the topic,
> >script up a little physics simulation that the kids can experiment
> >with, embed an abiword table widget which automatically records the
> >results of the experiment, and place some questions with textboxes at
> >the end so the kids can answer them and then turn in their "lab."
> >Heck, you could even automatically check the answers when they are
> >done, or interactively assist them when they answer incorrectly,
> >nudging them along or referencing the results table again.
> >
> >- Eben
> >
> >
> >On 6/2/07, Rebecca Gettys <rebecca.gettys@comcast.net> wrote:
> > > Hi All,
> > > I think that sideshows CAN be very sueful in the class room, and they
> > > have actually taught be to pay attention to detail. You need notes to do
> > > anything really, and they do have their applications with other
> > > students. Just a thought.
> > > ~Rebecca
> > > _______________________________________________
> > > Devel mailing list
> > > Devel@lists.laptop.org
> > > http://lists.laptop.org/listinfo/devel
> > >
> >_______________________________________________
> >Sugar mailing list
> >Sugar@lists.laptop.org
> >http://lists.laptop.org/listinfo/sugar
>
> _______________________________________________
> Sugar mailing list
> Sugar@lists.laptop.org
> http://lists.laptop.org/listinfo/sugar
>
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

                   

o_iqn7ptpS"Q e4 