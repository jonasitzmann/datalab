From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun 24 04:22:41 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5O8MdL9000556
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 04:22:40 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 4CAED2E1B9; Sun, 24 Jun 2007 08:22:19 +0000 (UTC)
Old-Return-Path: <pubmb01@skynet.be>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,FORGED_RCVD_HELO,
	IMPRONONCABLE_2,LDOSUBSCRIBER,MAILTO_TO_SPAM_ADDR autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from mailgate104.isp.belgacom.be (mailrelay104.isp.belgacom.be [195.238.6.85])
	by murphy.debian.org (Postfix) with ESMTP id 522F12E0BD
	for <debian-legal@lists.debian.org>; Sun, 24 Jun 2007 08:22:10 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ah4FAFrFfUZR8t73/2dsb2JhbACBSQ
Received: from 247.222-242-81.adsl-dyn.isp.belgacom.be (HELO pc34ghz.local) ([81.242.222.247])
  by relay.skynet.be with ESMTP; 24 Jun 2007 10:22:23 +0200
From: Bruno Costacurta <pubmb01@skynet.be>
To: debian-legal@lists.debian.org
Subject: Re: Copyright verification needed
Date: Sun, 24 Jun 2007 10:22:10 +0200
User-Agent: KMail/1.9.5
References: <200706232226.09686.pubmb01@skynet.be> <1007a32a0706231630s1f0f2ebx36d86fba1bf742cf@mail.gmail.com>
In-Reply-To: <1007a32a0706231630s1f0f2ebx36d86fba1bf742cf@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <200706241022.10970.pubmb01@skynet.be>
Content-Type: multipart/signed;
  boundary="nextPart1367591.DEpGmpVrRJ";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <HBTLwC.A._lE.7mifGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36716
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun, 24 Jun 2007 08:22:19 +0000 (UTC)

--nextPart1367591.DEpGmpVrRJ
Content-Type: multipart/mixed;
  boundary="Boundary-01=_ymifGkA5mEsP+uH"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

--Boundary-01=_ymifGkA5mEsP+uH
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Sunday 24 June 2007 01:30, ajdlinux@gmail.com wrote:
> On 6/24/07, Bruno Costacurta <pubmb01@skynet.be> wrote:
> > Hello,
> >
> > I'm preparing an ITP (Intend To Package) as a newbie regarding Debian
> > packaging. About the source (for the ITP) I'm not the developer and
> > simply reproduced the copyright I found with source code.
> > Could you please check the attached copyright file and its respect to
> > Debian rules about license / copyright ?
> > The template of the file was created by dh_make tools and I manually
> > completed
> > needed fields.
>
> It appears to be a standard 3-clause BSD license, which is fine,
> however it also claims to link with OpenSSL and some stuff from
> Trolltech.
>
> OpenSSL is fine, however it is GPL incompatible, so if this software
> is a library, you have to be careful.
>
> The stuff from Trolltech is another matter though - they use the GPL
> and the QPL I believe. If you use it under the GPL, then it can't link
> to OpenSSL, and I believe the QPL is widely considered non-free.
>
> --
> Andrew Donnellan <><
> ajdlinuxATgmailDOTcom (primary)    ajdlinuxATexemailDOTcomDOTau (secure)
>      http://andrewdonnellan.com    http://ajdlinux.wordpress.com
>          ajdlinux@jabber.org.au    hkp://subkeys.pgp.net 0x5D4C0C58
>             http://linux.org.au    http://debian.org
>         Spammers only =3D=3D=3D ajdspambucket@exemail.com.au =3D=3D=3D

Many thanks for your attention.
I checked more closely the licenses related to OpenSSl and Trolltech
which I found within related Debian packages I install to build my own pack=
age=20
(please find both licenses attached).
My personal feeling is that they looks fine.

Maybe I should simply complete my first copyright file by adding licenses f=
rom=20
OpenSSL and Trolltech (I repeat: both present in their respective Debian=20
packages) ?
I suppose I can rely on the fact that because such licenses are already=20
present in other debian packages I can build my own with same licenses.=20
Correct ?

Many thanks for confirmation / correction.

Bye,
Bruno
=2D-

PGP key ID: 0x2e604d51
Key : http://www.costacurta.org/keys/bruno_costacurta_pgp_key.html
Key fingerprint =3D 713F 7956 9441 7DEF 58ED  1951 7E07 569B 2E60 4D51
=2D-

--Boundary-01=_ymifGkA5mEsP+uH
Content-Type: text/x-objcsrc;
  charset="iso-8859-1";
  name="copyright_Trolltech"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="copyright_Trolltech"

This package was debianized by Christoph Martin martin@uni-mainz.de on
=46ri, 22 Nov 1996 21:29:51 +0100.

Copyright (c) 1998-2004 The OpenSSL Project
Copyright (c) 1995-1998 Eric A. Young, Tim J. Hudson

The upstream sources were obtained from http://www.openssl.org/


  LICENSE ISSUES
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

  The OpenSSL toolkit stays under a dual license, i.e. both the conditions =
of
  the OpenSSL License and the original SSLeay license apply to the toolkit.
  See below for the actual license texts. Actually both licenses are BSD-st=
yle
  Open Source licenses. In case of any license issues related to OpenSSL
  please contact openssl-core@openssl.org.

  OpenSSL License
  ---------------

/* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 * Copyright (c) 1998-2004 The OpenSSL Project.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.=20
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. All advertising materials mentioning features or use of this
 *    software must display the following acknowledgment:
 *    "This product includes software developed by the OpenSSL Project
 *    for use in the OpenSSL Toolkit. (http://www.openssl.org/)"
 *
 * 4. The names "OpenSSL Toolkit" and "OpenSSL Project" must not be used to
 *    endorse or promote products derived from this software without
 *    prior written permission. For written permission, please contact
 *    openssl-core@openssl.org.
 *
 * 5. Products derived from this software may not be called "OpenSSL"
 *    nor may "OpenSSL" appear in their names without prior written
 *    permission of the OpenSSL Project.
 *
 * 6. Redistributions of any form whatsoever must retain the following
 *    acknowledgment:
 *    "This product includes software developed by the OpenSSL Project
 *    for use in the OpenSSL Toolkit (http://www.openssl.org/)"
 *
 * THIS SOFTWARE IS PROVIDED BY THE OpenSSL PROJECT ``AS IS'' AND ANY
 * EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE OpenSSL PROJECT OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 *
 * This product includes cryptographic software written by Eric Young
 * (eay@cryptsoft.com).  This product includes software written by Tim
 * Hudson (tjh@cryptsoft.com).
 *
 */

 Original SSLeay License
 -----------------------

/* Copyright (C) 1995-1998 Eric Young (eay@cryptsoft.com)
 * All rights reserved.
 *
 * This package is an SSL implementation written
 * by Eric Young (eay@cryptsoft.com).
 * The implementation was written so as to conform with Netscapes SSL.
 *=20
 * This library is free for commercial and non-commercial use as long as
 * the following conditions are aheared to.  The following conditions
 * apply to all code found in this distribution, be it the RC4, RSA,
 * lhash, DES, etc., code; not just the SSL code.  The SSL documentation
 * included with this distribution is covered by the same copyright terms
 * except that the holder is Tim Hudson (tjh@cryptsoft.com).
 *=20
 * Copyright remains Eric Young's, and as such any Copyright notices in
 * the code are not to be removed.
 * If this package is used in a product, Eric Young should be given attribu=
tion
 * as the author of the parts of the library used.
 * This can be in the form of a textual message at program startup or
 * in documentation (online or textual) provided with the package.
 *=20
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *    "This product includes cryptographic software written by
 *     Eric Young (eay@cryptsoft.com)"
 *    The word 'cryptographic' can be left out if the rouines from the libr=
ary
 *    being used are not cryptographic related :-).
 * 4. If you include any Windows specific code (or a derivative thereof) fr=
om=20
 *    the apps directory (application code) you must include an acknowledge=
ment:
 *    "This product includes software written by Tim Hudson (tjh@cryptsoft.=
com)"
 *=20
 * THIS SOFTWARE IS PROVIDED BY ERIC YOUNG ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPO=
SE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTI=
AL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRI=
CT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *=20
 * The licence and distribution terms for any publically available version =
or
 * derivative of this code cannot be changed.  i.e. this code cannot simply=
 be
 * copied and put under another distribution licence
 * [including the GNU Public Licence.]
 */


--Boundary-01=_ymifGkA5mEsP+uH
Content-Type: text/plain;
  charset="iso-8859-1";
  name="copyright_OpenSLL"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="copyright_OpenSLL"

This package was debianized by Brian Nelson <pyro@debian.org> on Sun, 10
Apr 2005 21:23:49 -0700.

It was downloaded from ftp://ftp.trolltech.com/qt/source

Upstream Author: Trolltech AS

Copyright (C) 1994-2004 Trolltech AS.

    This package is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License version 2 as
    published by the Free Software Foundation.

    This package is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this package; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
    02110-1301, USA.

On Debian systems, the complete text of the GNU General Public License
can be found in `/usr/share/common-licenses/GPL'.

--Boundary-01=_ymifGkA5mEsP+uH--

--nextPart1367591.DEpGmpVrRJ
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQBGfimyfgdWmy5gTVERAl7zAJwJETsD3I9fUG3h1VqNLdOktqz/hgCeO6WX
r1G9HIYwq4Nshg1H3wh93Io=
=Ibvn
-----END PGP SIGNATURE-----

--nextPart1367591.DEpGmpVrRJ--


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

 

zAc0r reoh< g