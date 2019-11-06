From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jul  2 18:26:15 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62MQFL9019772
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 18:26:15 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 9DB242E333; Mon,  2 Jul 2007 22:26:34 +0000 (UTC)
Old-Return-Path: <aj@azure.humbug.org.au>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,FORGED_RCVD_HELO,
	LDOSUBSCRIBER autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from azure.erisian.com.au (azure.humbug.org.au [66.179.181.62])
	by murphy.debian.org (Postfix) with ESMTP id C1B932E22F
	for <debian-legal@lists.debian.org>; Mon,  2 Jul 2007 22:26:29 +0000 (UTC)
Received: from mail by azure.erisian.com.au with local-bsmtp (Exim 4.63 #1 (Debian))
	id 1I5ULN-0001cN-DM
	for <debian-legal@lists.debian.org>; Tue, 03 Jul 2007 08:26:05 +1000
Received: from aj by calamine.erisian.com.au with local (Exim 4.67 #1 (Debian))
	id 1I5ULF-0001Ag-RG
	for <debian-legal@lists.debian.org>; Mon, 02 Jul 2007 18:25:57 -0400
Date: Mon, 2 Jul 2007 18:25:57 -0400
From: Anthony Towns <aj@azure.humbug.org.au>
To: debian-legal@lists.debian.org
Subject: Re: Final text of GPL v3
Message-ID: <20070702222557.GA4418@azure.humbug.org.au>
Mail-Followup-To: debian-legal@lists.debian.org
References: <20070630004759.47295a6f.frx@firenze.linux.it>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
In-Reply-To: <20070630004759.47295a6f.frx@firenze.linux.it>
Organisation: Lacking
X-PGP: http://azure.humbug.org.au/~aj/aj_key.asc
X-No-CC: Don't Cc me to mailing list posts unless you really have to
Mail-Copies-To: nobody
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <avda7C.A.y-H.auXiGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36867
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Mon,  2 Jul 2007 22:26:34 +0000 (UTC)


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 30, 2007 at 12:47:59AM +0200, Francesco Poli wrote:
> 		    GNU GENERAL PUBLIC LICENSE
> 		       Version 3, 29 June 2007

>   1. Source Code.
>=20
>   The "System Libraries" of an executable work include anything, other
> than the work as a whole, that (a) is included in the normal form of
> packaging a Major Component, but which is not part of that Major
> Component, and (b) serves only to enable use of the work with that
> Major Component, or to implement a Standard Interface for which an
> implementation is available to the public in source code form.  A
> "Major Component", in this context, means a major essential component
> (kernel, window system, and so on) of the specific operating system
> (if any) on which the executable work runs, or a compiler used to
> produce the work, or an object code interpreter used to run it.
>=20
>   The "Corresponding Source" for a work in object code form means all
> the source code needed to generate, install, and (for an executable
> work) run the object code and to modify the work, including scripts to
> control those activities.  However, it does not include the work's
> System Libraries, or general-purpose tools or generally available free
> programs which are used unmodified in performing those activities but
> which are not part of the work.  For example, Corresponding Source
> includes interface definition files associated with source files for
> the work, and the source code for shared libraries and dynamically
> linked subprograms that the work is specifically designed to require,
> such as by intimate data communication or control flow between those
> subprograms and other parts of the work.

>   6. Conveying Non-Source Forms.

>   A separable portion of the object code, whose source code is excluded
> from the Corresponding Source as a System Library, need not be
> included in conveying the object code work.

Suppose you want to use some other software that you don't have rights
to distribute under the GPLv3 in your GPLv3 app. If you distribute your app
in binary form, you need to distribute the "corresponding source". You can
exclude the other component if it's:

	(a) it's a System Library

	(b) (1) a general-purpose tool or a generally available free program;
	    (2) used unmodified;
	    (3) not part of the work;
	    (4) not specifically designed to be required by the work, such as by
	        intimate data communication or control flow

The System Library exception only allows you to include interface
definitions to Major Components, afaics, because the exception is
limited to:

	(a1) stuff that's included with a Major Component, namely
         (a1x) a major essential component of the operating system (eg
              kernel, window system); or
         (a1y) a compiler for the language used in the work; or
         (a1z) an interpretor for the bytecode used in the work

	(a2) stuff that's not part of that Major Component

	(a3x) stuff that serves only to enable use of the work with that Major
	     Component; or
	(a3y) stuff that implements a Standard Interface for which an open source
             implementation is publicly available

In particular, both (b3) and (a2) rule out static linking afaics,
because neither exception allows you to exclude the source code to a
module you're actually distributing, and dynamic linking is only allowed
if you exclude the interface definition by (a2) and ignore the library
itself because there isn't any combined/derived work from the library
itself except a transient one created in memory by the end user.

It seems to me, that's taking the view that the only legally justifiable
way of relating copyright licensing with linking is direct incorporation,
either by static linking or inclusion of a header file. That seems a
much more defensible view than the one that, aiui, we'd been using for
GPLv2, which was, aiui: "static linking creates a combined work that's
easily understandable by copyright; dynamic linking achieves the same
end result, so should be treated the same way legally no matter what
the mechanics of the situation are".

In particular, if you have ./foo linked to libbar (where foo.c #includes
bar.h and "bar" is a Major Component), then to be able to distribute
=2E/foo, you need to also distribute foo.c (as the Corresponding Source),
claim an System Library exception for bar.h, and not need to distribute
libbar (or bar.c which you don't even have) because it's _not_ part of
the corresponding source, ie, it's not part of

     "the source code needed to generate, install, and (for an executable
      work) run the object code and to modify the work"

If we take the view that seems to be embodied in the GPLv3 that only
interface definitions count, that in turn means that the only thing you
need in order to link GPL software to a GPL-incompatible library is a GPL
(compatible) header file (and to avoid having intimate data communication
or control flow dependencies that tie the two together too clearly).

Cheers,
aj


--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iD8DBQFGiXt1Oxe8dCpOPqoRAqvMAJ9/LeXcJU6CVmFEBKBpyXvrbZK/+QCfflyz
9+cnzpX82XyIKzN+2AZZKS8=
=+JVz
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

      

40e
Ou 0 6tDie