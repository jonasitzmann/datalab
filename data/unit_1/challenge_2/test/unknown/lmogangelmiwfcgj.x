From sugar-bounces@lists.laptop.org  Thu Jun 21 17:21:40 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LLLdL9029464
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 17:21:39 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id DB42058BC7CC;
	Thu, 21 Jun 2007 17:20:53 -0400 (EDT)
Received: from mail.squeakland.org (mail.squeakland.org [208.49.99.250])
	by mail.laptop.org (Postfix) with ESMTP id 0CCE158BC7CC
	for <sugar@lists.laptop.org>; Thu, 21 Jun 2007 17:20:52 -0400 (EDT)
Received: from AlansR5.squeakland.org (squeakalpha.org [208.49.99.251])
	by mail.squeakland.org (8.12.8/8.11.6) with ESMTP id l5LKAioo004530;
	Thu, 21 Jun 2007 13:11:01 -0700
Message-Id: <7.0.1.0.2.20070621140810.06e89350@squeakland.org>
X-Mailer: QUALCOMM Windows Eudora Version 7.0.1.0
Date: Thu, 21 Jun 2007 14:18:51 -0700
To: "Eben Eliason" <eben.eliason@gmail.com>,
   "Bert Freudenberg" <bert@freudenbergs.de>
From: Alan Kay <alan.kay@squeakland.org>
In-Reply-To: <948b197c0706211334q118d86d3qd1e3871145998be7@mail.gmail.co
 m>
References: <467ACD12.7090709@comcast.net>
	<948b197c0706211301n7ffe22c1s9978418b09b49f4e@mail.gmail.com>
	<D830154C-5848-4AFC-975F-69FA0B5A7AAD@freudenbergs.de>
	<948b197c0706211334q118d86d3qd1e3871145998be7@mail.gmail.com>
Mime-Version: 1.0
Cc: Rebecca Gettys <rebecca.gettys@comcast.net>, sugar@lists.laptop.org
Subject: Re: [sugar] Rebe
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
Content-Type: multipart/mixed; boundary="===============7565389710549163741=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

--===============7565389710549163741==
Content-Type: multipart/alternative;
	boundary="=====================_10267343==.ALT"

--=====================_10267343==.ALT
Content-Type: text/plain; charset="us-ascii"; format=flowed

Well, objects need some machinery behind them. The machinery could be 
Squeak, or it could be Python, or JS, or ...

As I've mentioned in the past, on the OLPC, one of the ways that 
integration could have been done (and still could be done) would be 
to use something like X windows without frames to allow compositing 
of graphical front-ends of media objects.

A composited collection would be what Etoys calls a "project", etc. 
 From this point of view everything is like a widget but could be 
made from different stuff,

 From the object perspective all the graphical properties of the 
objects/"windows" are the same, but the back-end drivers for the 
phenomena could be rather different. This is "windows without 
windows", which is kind of what the OLPC really needs.

Also, since Squeak allows plugins, all of this could be done in 
Squeak, but I don't think that is the point here. I would rather see 
a richer better architecture using the chosen paradigm (e.g. Python) 
than do any "language wars".

But I will just gently say again that "Sugar can and should be a lot 
more integrated in its approach to dealing with many different kinds 
of media objects. They really need to be combined freely and not be 
bound to applications but should all be able to populate any 
"document" or "project".) Etoys uses one way to do this.

Cheers,

Alan

At 01:34 PM 6/21/2007, Eben Eliason wrote:
>I think the biggest point to be made here is an argument for a 
>"document" or "object" of sorts.  Etoys definitely seems to have 
>most of the types of interaction and media embedding solutions I 
>believe Rebecca and I both want, but (as far as I know, though I 
>admittedly don't know that much) it does so in an all encompassing 
>environment.  What we really need is a lightweight format that lets 
>one pass around these "scratchpads" or "collages" as objects, so the 
>teacher can create a file, pass it out as homework, etc.  I could be 
>very wrong in my assumptions, though, so please correct me where I 
>am.  I see lots of potential for Etoys, and I'd like to better 
>understand how it integrates with Sugar now, and how we can push it 
>in the most effective direction.
>
>- Eben
>
>On 6/21/07, Bert Freudenberg 
><<mailto:bert@freudenbergs.de>bert@freudenbergs.de> wrote:
>Indeed, "scratchpad" describes Etoys pretty precisely ;)
>
>You can draw, write (even with multi-column text layout flowing
>around abjects), and of course calculate.
>
>It's not just "type anywhere and a curve pops up", although in fact
>such an extension exists (but not included in the OLPC Etoys
>version): called MathMorphs and MorphicWrappers done by the
>Argentinian Squeak community a couple years ago:
>          http://www.dm.uba.ar/MathMorphs/
>
>and updated to work in recent Squeak releases
>
>         <http://wiki.squeak.org/squeak>http://wiki.squeak.org/squeak/5855
>
>If there is enough interest in this (and I agree it's a great
>environment for exploring Math) we might try to find someone porting
>it to the OLPC version. Or maybe it just works if installed, I
>haven't tried (unfortunately our plates are still full with lower-
>level stuff).
>
>
>- Bert -
>
>On Jun 21, 2007, at 22:01 , Eben Eliason wrote:
>
> > Rebecca -
> >
> > This sounds similar to some of my ideas for "Collage"...allowing
> > combinations of text, drawing, image, and other media formats in a
> > freeform canvas.  The response there seemed that Etoys was, in many
> > ways, already providing such a thing.  I think this is a really
> > interesting area though, and the potential to be able to send
> > multimedia documents around, specifically in an educational
> > environment, is huge. Do you have more thoughts on specifically how
> > this could be distinguished from Etoys?
> >
> > Additionally, there is the Sophie project, but I'm not that
> > familiar with it or how far along they've come with the project on
> > the XO.
> >
> > - Eben
> >
> >
> > On 6/21/07, Rebecca Gettys 
> <<mailto:rebecca.gettys@comcast.net>rebecca.gettys@comcast.net > wrote:
> > Hello all,
> > I had an idea while playing witha green machine...this may be a little
> > late, I don't know. What if ther was some sort of "scratchpad"
> > activity,
> > not draw, or write,or calculator but a kind fusion of all three.
> > mathimatical equasions could be typed out and then they could solve
> > with
> > typing and or drawing for their work, and they could write guides and
> > picture books and such with this activity as well. Is this in
> > possible/in the plans/something similar is being made???
> > ~Rebecca Gettys
> >
>
>
>
>
>
>_______________________________________________
>Sugar mailing list
>Sugar@lists.laptop.org
>http://lists.laptop.org/listinfo/sugar

--=====================_10267343==.ALT
Content-Type: text/html; charset="us-ascii"

<html>
<body>
Well, objects need some machinery behind them. The machinery could be
Squeak, or it could be Python, or JS, or ...<br><br>
As I've mentioned in the past, on the OLPC, one of the ways that
integration could have been done (and still could be done) would be to
use something like X windows without frames to allow compositing of
graphical front-ends of media objects. <br><br>
A composited collection would be what Etoys calls a &quot;project&quot;,
etc. From this point of view everything is like a widget but could be
made from different stuff,<br><br>
 From the object perspective all the graphical properties of the
objects/&quot;windows&quot; are the same, but the back-end drivers for
the phenomena could be rather different. This is &quot;windows without
windows&quot;, which is kind of what the OLPC really needs.<br><br>
Also, since Squeak allows plugins, all of this could be done in Squeak,
but I don't think that is the point here. I would rather see a richer
better architecture using the chosen paradigm (e.g. Python) than do any
&quot;language wars&quot;.<br><br>
But I will just gently say again that &quot;Sugar can and should be a lot
more integrated in its approach to dealing with many different kinds of
media objects. They really need to be combined freely and not be bound to
applications but should all be able to populate any &quot;document&quot;
or &quot;project&quot;.) Etoys uses one way to do this.<br><br>
Cheers,<br><br>
Alan<br><br>
At 01:34 PM 6/21/2007, Eben Eliason wrote:<br>
<blockquote type=cite class=cite cite="">I think the biggest point to be
made here is an argument for a &quot;document&quot; or &quot;object&quot;
of sorts.&nbsp; Etoys definitely seems to have most of the types of
interaction and media embedding solutions I believe Rebecca and I both
want, but (as far as I know, though I admittedly don't know that much) it
does so in an all encompassing environment.&nbsp; What we really need is
a lightweight format that lets one pass around these
&quot;scratchpads&quot; or &quot;collages&quot; as objects, so the
teacher can create a file, pass it out as homework, etc.&nbsp; I could be
very wrong in my assumptions, though, so please correct me where I
am.&nbsp; I see lots of potential for Etoys, and I'd like to better
understand how it integrates with Sugar now, and how we can push it in
the most effective direction. <br>
<br>
- Eben<br><br>
On 6/21/07, <b>Bert Freudenberg</b>
&lt;<a href="mailto:bert@freudenbergs.de">bert@freudenbergs.de</a>&gt;
wrote:<br>

<dl>
<dd>Indeed, &quot;scratchpad&quot; describes Etoys pretty precisely
;)<br><br>

<dd>You can draw, write (even with multi-column text layout flowing<br>

<dd>around abjects), and of course calculate.<br><br>

<dd>It's not just &quot;type anywhere and a curve pops up&quot;, although
in fact <br>

<dd>such an extension exists (but not included in the OLPC Etoys<br>

<dd>version): called MathMorphs and MorphicWrappers done by the<br>

<dd>Argentinian Squeak community a couple years ago:<br>

<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.dm.uba.ar/MathMorphs/" eudora="autourl">
</a><a href="http://www.dm.uba.ar/MathMorphs/" eudora="autourl">
http://www.dm.uba.ar/MathMorphs/</a><br><br>

<dd>and updated to work in recent Squeak releases<br><br>

<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://wiki.squeak.org/squeak">http://wiki.squeak.org/squeak</a>
/5855<br><br>

<dd>If there is enough interest in this (and I agree it's a great <br>

<dd>environment for exploring Math) we might try to find someone
porting<br>

<dd>it to the OLPC version. Or maybe it just works if installed, I<br>

<dd>haven't tried (unfortunately our plates are still full with
lower-<br>

<dd>level stuff). <br><br>
<br>

<dd>- Bert -<br><br>

<dd>On Jun 21, 2007, at 22:01 , Eben Eliason wrote:<br><br>

<dd>&gt; Rebecca -<br>

<dd>&gt;<br>

<dd>&gt; This sounds similar to some of my ideas for
&quot;Collage&quot;...allowing<br>

<dd>&gt; combinations of text, drawing, image, and other media formats in
a <br>

<dd>&gt; freeform canvas.&nbsp; The response there seemed that Etoys was,
in many<br>

<dd>&gt; ways, already providing such a thing.&nbsp; I think this is a
really<br>

<dd>&gt; interesting area though, and the potential to be able to
send<br>

<dd>&gt; multimedia documents around, specifically in an educational<br>

<dd>&gt; environment, is huge. Do you have more thoughts on specifically
how<br>

<dd>&gt; this could be distinguished from Etoys?<br>

<dd>&gt;<br>

<dd>&gt; Additionally, there is the Sophie project, but I'm not that
<br>

<dd>&gt; familiar with it or how far along they've come with the project
on<br>

<dd>&gt; the XO.<br>

<dd>&gt;<br>

<dd>&gt; - Eben<br>

<dd>&gt;<br>

<dd>&gt;<br>

<dd>&gt; On 6/21/07, Rebecca Gettys
&lt;<a href="mailto:rebecca.gettys@comcast.net">
rebecca.gettys@comcast.net </a>&gt; wrote:<br>

<dd>&gt; Hello all,<br>

<dd>&gt; I had an idea while playing witha green machine...this may be a
little<br>

<dd>&gt; late, I don't know. What if ther was some sort of
&quot;scratchpad&quot;<br>

<dd>&gt; activity,<br>

<dd>&gt; not draw, or write,or calculator but a kind fusion of all three.
<br>

<dd>&gt; mathimatical equasions could be typed out and then they could
solve<br>

<dd>&gt; with<br>

<dd>&gt; typing and or drawing for their work, and they could write
guides and<br>

<dd>&gt; picture books and such with this activity as well. Is this in
<br>

<dd>&gt; possible/in the plans/something similar is being made???<br>

<dd>&gt; ~Rebecca Gettys<br>

<dd>&gt;<br><br>
<br><br>
<br>

</dl><br>
_______________________________________________<br>
Sugar mailing list<br>
Sugar@lists.laptop.org<br>
<a href="http://lists.laptop.org/listinfo/sugar" eudora="autourl">
http://lists.laptop.org/listinfo/sugar</a></blockquote></body>
</html>

--=====================_10267343==.ALT--


--===============7565389710549163741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============7565389710549163741==--

    

Voc
pfh/ e12h