From sugar-bounces@lists.laptop.org  Sun Jun  3 11:43:49 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53FhmhB017089
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 11:43:48 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 6C1D858BC7BE;
	Sun,  3 Jun 2007 11:43:35 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id E77E458BC7C8; Sun,  3 Jun 2007 11:43:33 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id E346758BC7BE
	for <sugar@laptop.org>; Sun,  3 Jun 2007 11:43:33 -0400 (EDT)
X-ASG-Debug-ID: 1180885411-063800090000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mail.squeakland.org[208.49.99.250]
X-Barracuda-Start-Time: 1180885411
Received: from mail.squeakland.org (mail.squeakland.org [208.49.99.250])
	by spam.laptop.org (Spam Firewall) with ESMTP
	id 611CF1266F; Sun,  3 Jun 2007 11:43:31 -0400 (EDT)
Received: from AlansR5.squeakland.org (dsl253-105-034.lax1.dsl.speakeasy.net
	[66.253.105.34])
	by mail.squeakland.org (8.12.8/8.11.6) with ESMTP id l53EXqoo020627;
	Sun, 3 Jun 2007 07:34:09 -0700
Message-Id: <7.0.1.0.2.20070603083935.06b104d8@squeakland.org>
Message-Id: <7.0.1.0.2.20070603063920.06b25980@squeakland.org>
X-Mailer: QUALCOMM Windows Eudora Version 7.0.1.0
Date: Sun, 03 Jun 2007 08:40:53 -0700
To: "Samuel Klein" <meta.sj@gmail.com>,
   "Eben Eliason" <eben.eliason@gmail.com>
From: Alan Kay <alan.kay@squeakland.org>
X-ASG-Orig-Subj: Doc now posted (was Re: [sugar] Spreadsheets/ Slideshows)
Mime-Version: 1.0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -1.08
X-Barracuda-Spam-Status: No, SCORE=-1.08 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=HTML_10_20,
	HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.18851
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
	0.94 HTML_10_20             BODY: Message is 10% to 20% HTML
Cc: Rebecca Gettys <rebecca.gettys@comcast.net>, devel@lists.laptop.org,
   etoys <etoys@laptop.org>, Sugar Mail List <sugar@laptop.org>
Subject: [sugar] Doc now posted (was Re:  Spreadsheets/ Slideshows)
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
Content-Type: multipart/mixed; boundary="===============3434759816499902759=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

--===============3434759816499902759==
Content-Type: multipart/alternative;
	boundary="=====================_179011000==.ALT"

--=====================_179011000==.ALT
Content-Type: text/plain; charset="us-ascii"; format=flowed

Hi SJ --

Yes, you may certainly make the document public. I will try to add 
the remaining "50 pages" sometime in late June and early July, but I 
tried to make the existing 50 pages stand on its own.

The document is now linked from the etoys page in the wiki (Thanks to 
Walter for doing this):

See http://wiki.laptop.org/go/Etoys
and http://www.laptop.org/OLPCEtoys.pdf

P.S. I still think that what I've been advocating since early last 
year -- an OLPC version of something like Etoys/Scratch/Logo that is 
deeply integrated with OLPC media -- is a really good idea. There is 
nothing sacred about Etoys. It only has two main things going for it 
(a) it has been tested with many thousands of children around the 
world over the last 10 years, and (b) its range of applications for 
children's authoring using "math and media".

The weakness of Etoys is that it is primarily aimed at 4-5-6 graders 
(and does well with this age group). It has been used successfully in 
Japan with 6 and 7 year olds despite the UI not being the best fit 
for them. And it has been used with older children as well (they need 
a few more features from the underlying Squeak and a somewhat 
different UI -- some of which we are doing this summer).

OTOH, the presentation facilities are pretty useful -- especially for 
dynamic presentations of actual work. I've been using them 
exclusively for all my talks since about 1998.

But quite a bit could be done better on all fronts. For the OLPC XO, 
especially wrt to integration both across and down (so that there is 
a "Model T" version of all the media in children's script, and all 
media objects can be mixed).

Since Python was chosen as the underlying programmatic representation 
for the XO, I tried to convince the Python community last year to 
take a shot at making an Etoys-like environment, but as far as I can 
tell there have been no takers. I think Ivan has some interest in 
this as well. So I agree with the nature of Eben's desires.

The key word is integration, and, as you well know, this is a lot 
harder - both in design and integration - to pull off gracefully than 
it it seems at first glance. I would be very happy to see an 
environment that is as comprehensive as (or more ideally, much better 
than) Etoys -- especially if it can be placed at a more fundamental 
level than as a separate Activity. (That was actually my original 
hope for Sugar.)

Cheers,

Alan


At 12:24 PM 6/2/2007, Samuel Klein wrote:
>Eben, this might be a great opportunity to spend some time with the
>etoys team working out how you could realize what you have in mind
>with existing tools.  As Alan notes, it is designed to do very much
>what you are writing about -- as well as  doing some excellent sugar &
>1200x900 emulation ;-)
>
>I'd like to spend a day this coming week working through Alan's
>50-of-100 notes, and the use cases you have in mind.  (Alan, can we
>make the document public?)
>
>As for presentations and slides, Etoys remains for the time being our
>supported method for importing .ppt -- Rebecca, have you tried this?
>Were you asking for something more specific?
>
>SJ
>
>ps - That might also be a good opportunity to think about what a
>generic bundle looks like.
>
>On 6/2/07, Alan Kay <alan.kay@squeakland.org> wrote:
>>You might want to check out what Etoys actually does and is. (Hint:
>>it covers your desiderata beIow pretty well.)
>>
>>I suggest perusing the document that I made up for the OLPC countries
>>meeting a few weeks ago. Nia Lewis will probably have a copy.
>>
>>Cheers,
>>
>>Alan
>>
>>At 07:50 AM 6/2/2007, Eben Eliason wrote:
>> >Ever since this project began, I've had this idea in my head regarding
>> >what a "slideshow" might mean on the OLPC machine.  I'd really like to
>> >see an activity called "Collage" which is something like a modern
>> >descendent of Hypercard.  It should take the idea of embedding media
>> >further, of course allowing images, sounds, video and text, but
>> >perhaps also supporting live logo turtles, live editable text boxes
>> >and other interactive forms.  Ideally, there would be an interface
>> >which made it pluggable so that any activity could embed its formats
>> >and provide hooks for interacting with it.
>> >
>> >Bringing it all together, it should support a basic logo-like
>> >scripting language.  This could allow simple actions like "next page",
>> >but could also be allowed to pull text from the live text boxes via
>> >some identifiers, animate the embedded objects, track some basic mouse
>> >and keyboard events, and interact with hooks provided by the plugins.
>> >
>> >A child could create a single page, or a simple slideshow, but by
>> >taking full advantage of the nature of the scripting which pulls
>> >things together, they can create non-linear books, interactive
>> >animations, science reports with embedded interactive experiments,
>> >games, and more.
>> >
>> >As fun as this would be for kids, I also see this as being a fantastic
>> >format for teachers to create lesson plans in:  provide some
>> >instructions with text and images, embed a video about the topic,
>> >script up a little physics simulation that the kids can experiment
>> >with, embed an abiword table widget which automatically records the
>> >results of the experiment, and place some questions with textboxes at
>> >the end so the kids can answer them and then turn in their "lab."
>> >Heck, you could even automatically check the answers when they are
>> >done, or interactively assist them when they answer incorrectly,
>> >nudging them along or referencing the results table again.
>> >
>> >- Eben
>> >
>> >
>> >On 6/2/07, Rebecca Gettys <rebecca.gettys@comcast.net> wrote:
>> > > Hi All,
>> > > I think that sideshows CAN be very sueful in the class room, and they
>> > > have actually taught be to pay attention to detail. You need notes to do
>> > > anything really, and they do have their applications with other
>> > > students. Just a thought.
>> > > ~Rebecca
>> > > _______________________________________________
>> > > Devel mailing list
>> > > Devel@lists.laptop.org
>> > > http://lists.laptop.org/listinfo/devel
>> > >
>> >_______________________________________________
>> >Sugar mailing list
>> >Sugar@lists.laptop.org
>> >http://lists.laptop.org/listinfo/sugar
>>
>>_______________________________________________
>>Sugar mailing list
>>Sugar@lists.laptop.org
>>http://lists.laptop.org/listinfo/sugar

--=====================_179011000==.ALT
Content-Type: text/html; charset="us-ascii"

<html>
<body>
Hi SJ --<br><br>
Yes, you may certainly make the document public. I will try to add the
remaining &quot;50 pages&quot; sometime in late June and early July, but
I tried to make the existing 50 pages stand on its own. <br><br>
The document is now linked from the etoys page in the wiki (Thanks to
Walter for doing this):<br><br>
See
<a href="http://wiki.laptop.org/go/Etoys" eudora="autourl">
http://wiki.laptop.org/go/Etoys<br>
</a>and
<a href="http://www.laptop.org/OLPCEtoys.pdf" eudora="autourl">
http://www.laptop.org/OLPCEtoys.pdf<br><br>
</a>P.S. I still think that what I've been advocating since early last
year -- an OLPC version of something like Etoys/Scratch/Logo that is
deeply integrated with OLPC media -- is a really good idea. There is
nothing sacred about Etoys. It only has two main things going for it (a)
it has been tested with many thousands of children around the world over
the last 10 years, and (b) its range of applications for children's
authoring using &quot;math and media&quot;.<br><br>
The weakness of Etoys is that it is primarily aimed at 4-5-6 graders (and
does well with this age group). It has been used successfully in Japan
with 6 and 7 year olds despite the UI not being the best fit for them.
And it has been used with older children as well (they need a few more
features from the underlying Squeak and a somewhat different UI -- some
of which we are doing this summer).<br><br>
OTOH, the presentation facilities are pretty useful -- especially for
dynamic presentations of actual work. I've been using them exclusively
for all my talks since about 1998.<br><br>
But quite a bit could be done better on all fronts. For the OLPC XO,
especially wrt to integration both across and down (so that there is a
&quot;Model T&quot; version of all the media in children's script, and
all media objects can be mixed).<br><br>
Since Python was chosen as the underlying programmatic representation for
the XO, I tried to convince the Python community last year to take a shot
at making an Etoys-like environment, but as far as I can tell there have
been no takers. I think Ivan has some interest in this as well. So I
agree with the <i>nature </i>of Eben's desires. <br><br>
The key word is integration, and, as you well know, this is a lot harder
- both in design and integration - to pull off gracefully than it it
seems at first glance. I would be very happy to see an environment that
is as comprehensive as (or more ideally, much better than) Etoys --
especially if it can be placed at a more fundamental level than as a
separate Activity. (That was actually my original hope for
Sugar.)<br><br>
Cheers,<br><br>
Alan<br><br>
<br>
At 12:24 PM 6/2/2007, Samuel Klein wrote:<br>
<blockquote type=cite class=cite cite="">Eben, this might be a great
opportunity to spend some time with the<br>
etoys team working out how you could realize what you have in mind<br>
with existing tools.&nbsp; As Alan notes, it is designed to do very
much<br>
what you are writing about -- as well as&nbsp; doing some excellent sugar
&amp;<br>
1200x900 emulation ;-)<br><br>
I'd like to spend a day this coming week working through Alan's<br>
50-of-100 notes, and the use cases you have in mind.&nbsp; (Alan, can
we<br>
make the document public?)<br><br>
As for presentations and slides, Etoys remains for the time being
our<br>
supported method for importing .ppt -- Rebecca, have you tried this?<br>
Were you asking for something more specific?<br><br>
SJ<br><br>
ps - That might also be a good opportunity to think about what a<br>
generic bundle looks like.<br><br>
On 6/2/07, Alan Kay &lt;alan.kay@squeakland.org&gt; wrote:<br>
<blockquote type=cite class=cite cite="">You might want to check out what
Etoys actually does and is. (Hint:<br>
it covers your desiderata beIow pretty well.)<br><br>
I suggest perusing the document that I made up for the OLPC
countries<br>
meeting a few weeks ago. Nia Lewis will probably have a copy.<br><br>
Cheers,<br><br>
Alan<br><br>
At 07:50 AM 6/2/2007, Eben Eliason wrote:<br>
&gt;Ever since this project began, I've had this idea in my head
regarding<br>
&gt;what a &quot;slideshow&quot; might mean on the OLPC machine.&nbsp;
I'd really like to<br>
&gt;see an activity called &quot;Collage&quot; which is something like a
modern<br>
&gt;descendent of Hypercard.&nbsp; It should take the idea of embedding
media<br>
&gt;further, of course allowing images, sounds, video and text, but<br>
&gt;perhaps also supporting live logo turtles, live editable text
boxes<br>
&gt;and other interactive forms.&nbsp; Ideally, there would be an
interface<br>
&gt;which made it pluggable so that any activity could embed its
formats<br>
&gt;and provide hooks for interacting with it.<br>
&gt;<br>
&gt;Bringing it all together, it should support a basic logo-like<br>
&gt;scripting language.&nbsp; This could allow simple actions like
&quot;next page&quot;,<br>
&gt;but could also be allowed to pull text from the live text boxes
via<br>
&gt;some identifiers, animate the embedded objects, track some basic
mouse<br>
&gt;and keyboard events, and interact with hooks provided by the
plugins.<br>
&gt;<br>
&gt;A child could create a single page, or a simple slideshow, but
by<br>
&gt;taking full advantage of the nature of the scripting which pulls<br>
&gt;things together, they can create non-linear books, interactive<br>
&gt;animations, science reports with embedded interactive
experiments,<br>
&gt;games, and more.<br>
&gt;<br>
&gt;As fun as this would be for kids, I also see this as being a
fantastic<br>
&gt;format for teachers to create lesson plans in:&nbsp; provide
some<br>
&gt;instructions with text and images, embed a video about the
topic,<br>
&gt;script up a little physics simulation that the kids can
experiment<br>
&gt;with, embed an abiword table widget which automatically records
the<br>
&gt;results of the experiment, and place some questions with textboxes
at<br>
&gt;the end so the kids can answer them and then turn in their
&quot;lab.&quot;<br>
&gt;Heck, you could even automatically check the answers when they
are<br>
&gt;done, or interactively assist them when they answer incorrectly,<br>
&gt;nudging them along or referencing the results table again.<br>
&gt;<br>
&gt;- Eben<br>
&gt;<br>
&gt;<br>
&gt;On 6/2/07, Rebecca Gettys &lt;rebecca.gettys@comcast.net&gt;
wrote:<br>
&gt; &gt; Hi All,<br>
&gt; &gt; I think that sideshows CAN be very sueful in the class room,
and they<br>
&gt; &gt; have actually taught be to pay attention to detail. You need
notes to do<br>
&gt; &gt; anything really, and they do have their applications with
other<br>
&gt; &gt; students. Just a thought.<br>
&gt; &gt; ~Rebecca<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Devel mailing list<br>
&gt; &gt; Devel@lists.laptop.org<br>
&gt; &gt;
<a href="http://lists.laptop.org/listinfo/devel" eudora="autourl">
http://lists.laptop.org/listinfo/devel</a><br>
&gt; &gt;<br>
&gt;_______________________________________________<br>
&gt;Sugar mailing list<br>
&gt;Sugar@lists.laptop.org<br>
&gt;<a href="http://lists.laptop.org/listinfo/sugar" eudora="autourl">
http://lists.laptop.org/listinfo/sugar</a><br><br>
_______________________________________________<br>
Sugar mailing list<br>
Sugar@lists.laptop.org<br>
<a href="http://lists.laptop.org/listinfo/sugar" eudora="autourl">
http://lists.laptop.org/listinfo/sugar</a></blockquote></blockquote>
</body>
</html>

--=====================_179011000==.ALT--


--===============3434759816499902759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============3434759816499902759==--

 

jFyQ