From perl6-all-return-82036-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 15:36:14 2007
Return-Path: <perl6-all-return-82036-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HJaDL9009886
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 15:36:13 -0400
Received: (qmail 1240 invoked by uid 514); 17 Jun 2007 19:36:10 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 1235 invoked from network); 17 Jun 2007 19:36:10 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of codermattie@gmail.com designates 64.233.166.182 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:date:from:to:subject:message-id:in-reply-to:references:x-mailer:mime-version:content-type;
        b=W+cPCUQc92dU2npm7r2lahn+QiI5gomwtG6Nkd0vQ+KnvG2FbLTWaxP7dloPPPx8vracBrumMWhQzqGVR8DA6yRiYEAiYFfU9izfcbYvvmWHporNOJgXcNXw10O6TIJjiwdQuNaA/GSHzZdv5GnYbe/nTAT6XiAvI0wBWSvAEbE=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:date:from:to:subject:message-id:in-reply-to:references:x-mailer:mime-version:content-type;
        b=nAUPmvr3vDWllJ4yg3++IpQJ389vw3XT1afOrM61YTw8imYAe8YfqVIUg0I/64s8piDF9oeafTWU6tcA/lBST5cF/mgx63JweJkhvwKC5ow3mH1NpujwioSvvOF9XkAASDvKSFOb90LXSt5nwhDhbcVspuUgRdcBCpUWxxbcqoE=
Date: Sun, 17 Jun 2007 12:35:29 -0700
From: Mike Mattie <codermattie@gmail.com>
To: perl6-internals@perl.org
Subject: Re: Parrot_get_runtime_prefix has a bad interface
Message-ID: <20070617123529.6b30812e@reforged>
In-Reply-To: <6CE946D9-1FE7-4065-B3E3-B8B51C043305@petdance.com>
References: <6CE946D9-1FE7-4065-B3E3-B8B51C043305@petdance.com>
X-Mailer: Claws Mail 2.6.1 (GTK+ 2.10.11; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_l/yOq.o.subbOJp8GnFHuVQ";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

--Sig_l/yOq.o.subbOJp8GnFHuVQ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sun, 17 Jun 2007 01:41:30 -0500
Andy Lester <andy@petdance.com> wrote:

> I cringe at functions where the behavior is dependent on parms
> passed in.  In the case of Parrot_get_runtime_prefix, if you call it
> as Parrot_get_runtime_prefix(&str) then str is populated, or if you
> call Parrot_get_runtime_prefix(NULL) then you get a malloced string.
>=20
> It should be split into Parrot_get_runtime_prefix_string and =20
> Parrot_get_runtime_prefix_cstring.
>=20
> Anything I'm missing?  Dissent?

I have a patch already for it. I pulled it from RT because there was
a mistake in it, but I will re-send a new one today.

> xoxo,
> Andy
>=20
> --
> Andy Lester =3D> andy@petdance.com =3D> www.petdance.com =3D> AIM:petdance
>=20
>=20
>=20
>=20

--Sig_l/yOq.o.subbOJp8GnFHuVQ
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGdY0GdfRchrkBInkRAh8VAKDGz79jQ8xHOYoai/6fmZsNDcvIyACcCe71
Tt7mbt+ht1FRxMFi5nUXjGo=
=ifkS
-----END PGP SIGNATURE-----

--Sig_l/yOq.o.subbOJp8GnFHuVQ--

  

wLNok  sti