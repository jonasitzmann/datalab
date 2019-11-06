From sugar-bounces@lists.laptop.org  Mon Jun 11 18:09:35 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BM9YL9019338
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 18:09:34 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id E6B1758BC7C4;
	Mon, 11 Jun 2007 18:09:09 -0400 (EDT)
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.182])
	by mail.laptop.org (Postfix) with ESMTP id 4715B58BC7C4
	for <sugar@lists.laptop.org>; Mon, 11 Jun 2007 18:09:08 -0400 (EDT)
Received: by wa-out-1112.google.com with SMTP id k22so2252008waf
	for <sugar@lists.laptop.org>; Mon, 11 Jun 2007 15:09:31 -0700 (PDT)
Received: by 10.114.173.15 with SMTP id v15mr5972151wae.1181599771891;
	Mon, 11 Jun 2007 15:09:31 -0700 (PDT)
Received: by 10.114.202.6 with HTTP; Mon, 11 Jun 2007 15:09:31 -0700 (PDT)
Message-ID: <a80d16920706111509g2557f876u40a756a23281d797@mail.gmail.com>
Date: Mon, 11 Jun 2007 17:09:31 -0500
From: "Rafael Enrique Ortiz Guerrero" <dirakx@gmail.com>
To: "Simon McVittie" <simon.mcvittie@collabora.co.uk>
In-Reply-To: <20070611210257.GA19842@celebrin.pseudorandom.co.uk>
MIME-Version: 1.0
References: <10f88f6d0706111349r20fa5e41j73fb9c7cd493dcdc@mail.gmail.com>
	<20070611210257.GA19842@celebrin.pseudorandom.co.uk>
Cc: sugar@lists.laptop.org
Subject: Re: [sugar] Data Transport between nodes
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
Content-Type: multipart/mixed; boundary="===============3375547907040846860=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

--===============3375547907040846860==
Content-Type: multipart/alternative; 
	boundary="----=_Part_51354_25696617.1181599771857"

------=_Part_51354_25696617.1181599771857
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi:

The code for the hello mesh is in

http://dev.laptop.org/git?p=3Dprojects/hellomesh;a=3Dsummary

On 6/11/07, Simon McVittie <simon.mcvittie@collabora.co.uk> wrote:
>
> On Mon, 11 Jun 2007 at 16:49:31 -0400, Nolambar von L=F3meanor wrote:
> > I need to send some simple data, specifically a name from an election,
> the
> > list of choices and some others between nodes. This need to be secure
> and
> > reliable (we plan to add GPG support or some kind of digital signatures=
)
> and
> > I'm wondering if this should be done with telepathy (tubes) or can be
> done
> > with xml-rpc or maybe some other ("easier") alternative.
>
> You should use the "distributed D-Bus" mode of Telepathy Tubes; this will
> allow it to work in any environment where chat works, in a transparent
> way. My colleague Morgan Collett (morgs on irc.freenode.net #sugar) is
> working
> on a Tubes "hello world" example which you'll be able to use as a
> reference,
> and on improved client-side API so Tubes are easier to use.
>
> We plan to make integrity transparent - communication with the server is
> currently cleartext but will be SSL/TLS later, while communication
> across the mesh network is currently cleartext but will later be
> authenticated and possibly signed. The signing will be done
> with the "owner key" (a DSA keypair) which is generated when you first
> use a new OLPC.
>
> If you want to provide integrity guarantees before we officially support
> this, you could generate your own signatures at the application level
> and send them along with your messages - binary blobs (in the form of byt=
e
> arrays, signature 'ay') are fully supported by D-Bus, and hence by Tubes.
>
> Regards,
>         Simon
> --
> Simon McVittie, Collabora Ltd.: http://www.collabora.co.uk/
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.6 (GNU/Linux)
> Comment: OpenPGP key: http://www.pseudorandom.co.uk/2003/contact/ or
> pgp.net
>
> iD8DBQFGbbiAWSc8zVUw7HYRAq96AJ9+0NheXiOgN5TSZyhbfGkGTd3V4QCgrhPG
> FzkSvzMCm76ktEM2MTu7gXY=3D
> =3DYPtO
> -----END PGP SIGNATURE-----
>
> _______________________________________________
> Sugar mailing list
> Sugar@lists.laptop.org
> http://lists.laptop.org/listinfo/sugar
>
>


--=20
Rafael Enrique Ortiz Guerrero
OLPC Colombia
http://wiki.laptop.org/go/OLPC_Colombia

------=_Part_51354_25696617.1181599771857
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi:<br><br>The code for the hello mesh is in <br><br><a href=3D"http://dev.=
laptop.org/git?p=3Dprojects/hellomesh;a=3Dsummary">http://dev.laptop.org/gi=
t?p=3Dprojects/hellomesh;a=3Dsummary</a><br><br><div><span class=3D"gmail_q=
uote">On 6/11/07,=20
<b class=3D"gmail_sendername">Simon McVittie</b> &lt;<a href=3D"mailto:simo=
n.mcvittie@collabora.co.uk">simon.mcvittie@collabora.co.uk</a>&gt; wrote:</=
span><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(=
204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
On Mon, 11 Jun 2007 at 16:49:31 -0400, Nolambar von L=F3meanor wrote:<br>&g=
t; I need to send some simple data, specifically a name from an election, t=
he<br>&gt; list of choices and some others between nodes. This need to be s=
ecure and
<br>&gt; reliable (we plan to add GPG support or some kind of digital signa=
tures) and<br>&gt; I&#39;m wondering if this should be done with telepathy =
(tubes) or can be done<br>&gt; with xml-rpc or maybe some other (&quot;easi=
er&quot;) alternative.
<br><br>You should use the &quot;distributed D-Bus&quot; mode of Telepathy =
Tubes; this will<br>allow it to work in any environment where chat works, i=
n a transparent<br>way. My colleague Morgan Collett (morgs on <a href=3D"ht=
tp://irc.freenode.net">
irc.freenode.net</a> #sugar) is working<br>on a Tubes &quot;hello world&quo=
t; example which you&#39;ll be able to use as a reference,<br>and on improv=
ed client-side API so Tubes are easier to use.<br><br>We plan to make integ=
rity transparent - communication with the server is
<br>currently cleartext but will be SSL/TLS later, while communication<br>a=
cross the mesh network is currently cleartext but will later be<br>authenti=
cated and possibly signed. The signing will be done<br>with the &quot;owner=
 key&quot; (a DSA keypair) which is generated when you first
<br>use a new OLPC.<br><br>If you want to provide integrity guarantees befo=
re we officially support<br>this, you could generate your own signatures at=
 the application level<br>and send them along with your messages - binary b=
lobs (in the form of byte
<br>arrays, signature &#39;ay&#39;) are fully supported by D-Bus, and hence=
 by Tubes.<br><br>Regards,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;Simon<br>--<br>Simon McVittie, Collabora Ltd.: <a href=3D"http://www.col=
labora.co.uk/">http://www.collabora.co.uk/
</a><br><br>-----BEGIN PGP SIGNATURE-----<br>Version: GnuPG v1.4.6 (GNU/Lin=
ux)<br>Comment: OpenPGP key: <a href=3D"http://www.pseudorandom.co.uk/2003/=
contact/">http://www.pseudorandom.co.uk/2003/contact/</a> or <a href=3D"htt=
p://pgp.net">
pgp.net</a><br><br>iD8DBQFGbbiAWSc8zVUw7HYRAq96AJ9+0NheXiOgN5TSZyhbfGkGTd3V=
4QCgrhPG<br>FzkSvzMCm76ktEM2MTu7gXY=3D<br>=3DYPtO<br>-----END PGP SIGNATURE=
-----<br><br>_______________________________________________<br>Sugar maili=
ng list
<br><a href=3D"mailto:Sugar@lists.laptop.org">Sugar@lists.laptop.org</a><br=
><a href=3D"http://lists.laptop.org/listinfo/sugar">http://lists.laptop.org=
/listinfo/sugar</a><br><br></blockquote></div><br><br clear=3D"all"><br>-- =
<br>
Rafael Enrique Ortiz Guerrero <br>OLPC Colombia<br><a href=3D"http://wiki.l=
aptop.org/go/OLPC_Colombia">http://wiki.laptop.org/go/OLPC_Colombia</a><br>=
<br>

------=_Part_51354_25696617.1181599771857--

--===============3375547907040846860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============3375547907040846860==--



Ml 1FeNr7