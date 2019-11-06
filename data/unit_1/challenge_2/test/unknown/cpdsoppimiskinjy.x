From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jul  5 22:16:56 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l662GtL9001800
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 22:16:56 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id BB4061638AD
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  6 Jul 2007 02:16:50 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 53BBB162AE0;
	Fri,  6 Jul 2007 02:15:41 +0000 (GMT)
From: Andrew Bartlett <abartlet@samba.org>
To: tridge@samba.org
In-Reply-To: <18060.17498.28240.531581@samba.org>
References: <18060.17498.28240.531581@samba.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="=-ZccIZcAPuxnK4AL4Hjzb"
Date: Fri, 06 Jul 2007 12:15:39 +1000
Message-Id: <1183688139.3595.12.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 (2.10.2-2.fc7) 
Cc: simo@samba.org, samba-technical@samba.org
Subject: Re: samdb and the session info
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--=-ZccIZcAPuxnK4AL4Hjzb
Content-Type: multipart/mixed; boundary="=-0KhqGBKuhnpcbmM5X4XA"


--=-0KhqGBKuhnpcbmM5X4XA
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2007-07-05 at 11:07 +1000, tridge@samba.org wrote:
> Andrew and Simo,
>=20
> I've been looking into memory usage in Samba4. When we first got the
> single process model I had measured memory usage of about 15k-20k per
> connection (as seen with vmstat and BASE-BENCH-HOLDCON).
>=20
> A test on the current code shows 312k per connection. Approximately
> 90% of this is due to samdb_connect().
>=20
> By making a small (hackish) patch to samdb_connect() to use a shared
> ldb with talloc_reference(), I found that memory usage dropped to 26k
> per connection, which is not too much bloat over what we had before
> considering the new features. It also halved the time it takes to
> establish 1000 connections, and I expect it will greatly speed up many
> other operations (as much more memory will be in level 1 cache).

Perhaps this patch would work?  We keep the current session_info
semantics, but share the rest.

Andrew Bartlett

--=20
Andrew Bartlett                                http://samba.org/~abartlet/
Authentication Developer, Samba Team           http://samba.org
Samba Developer, Red Hat Inc.                  http://redhat.com


--=-0KhqGBKuhnpcbmM5X4XA
Content-Disposition: attachment; filename=global-ldb.patch
Content-Transfer-Encoding: base64
Content-Type: text/x-patch; name=global-ldb.patch; charset=utf-8

SW5kZXg6IGxpYi9kYl93cmFwLmMNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCi0tLSBsaWIvZGJfd3JhcC5jCShyZXZp
c2lvbiAyMzczMCkNCisrKyBsaWIvZGJfd3JhcC5jCSh3b3JraW5nIGNvcHkpDQpAQCAtNjcsNyAr
NjcsNyBAQA0KIH0NCiANCiAvKiBjaGVjayBmb3IgbWVtb3J5IGxlYWtzIG9uIHRoZSBsZGIgY29u
dGV4dCAqLw0KLXN0YXRpYyBpbnQgbGRiX3dyYXBfZGVzdHJ1Y3RvcihzdHJ1Y3QgbGRiX2NvbnRl
eHQgKmxkYikNCitpbnQgbGRiX3dyYXBfZGVzdHJ1Y3RvcihzdHJ1Y3QgbGRiX2NvbnRleHQgKmxk
YikNCiB7DQogCXNpemVfdCAqc3RhcnR1cF9ibG9ja3MgPSAoc2l6ZV90ICopbGRiX2dldF9vcGFx
dWUobGRiLCAic3RhcnR1cF9ibG9ja3MiKTsNCiAJaWYgKHN0YXJ0dXBfYmxvY2tzICYmDQpAQCAt
MTI4LDEwICsxMjgsNiBAQA0KIAkJcmV0dXJuIE5VTEw7DQogCX0NCiAJDQotCWlmIChzdHJjbXAo
bHBfc2FtX3VybCgpLCB1cmwpID09IDApIHsNCi0JCWRzZGJfc2V0X2dsb2JhbF9zY2hlbWEobGRi
KTsNCi0JfQ0KLQ0KIAlyZXQgPSBsZGJfcmVnaXN0ZXJfc2FtYmFfaGFuZGxlcnMobGRiKTsNCiAJ
aWYgKHJldCA9PSAtMSkgew0KIAkJdGFsbG9jX2ZyZWUobGRiKTsNCkluZGV4OiBkc2RiL3NjaGVt
YS9zY2hlbWFfaW5pdC5jDQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09DQotLS0gZHNkYi9zY2hlbWEvc2NoZW1hX2luaXQu
YwkocmV2aXNpb24gMjM3MzApDQorKysgZHNkYi9zY2hlbWEvc2NoZW1hX2luaXQuYwkod29ya2lu
ZyBjb3B5KQ0KQEAgLTEwMTAsMjIgKzEwMTAsNiBAQA0KIAlyZXR1cm4gTERCX1NVQ0NFU1M7DQog
fQ0KIA0KLXN0YXRpYyBzdHJ1Y3QgZHNkYl9zY2hlbWEgKmdsb2JhbF9zY2hlbWE7DQotDQotaW50
IGRzZGJfc2V0X2dsb2JhbF9zY2hlbWEoc3RydWN0IGxkYl9jb250ZXh0ICpsZGIpDQotew0KLQlp
bnQgcmV0Ow0KLQlpZiAoIWdsb2JhbF9zY2hlbWEpIHsNCi0JCXJldHVybiBMREJfU1VDQ0VTUzsN
Ci0JfQ0KLQlyZXQgPSBsZGJfc2V0X29wYXF1ZShsZGIsICJkc2RiX3NjaGVtYSIsIGdsb2JhbF9z
Y2hlbWEpOw0KLQlpZiAocmV0ICE9IExEQl9TVUNDRVNTKSB7DQotCQlyZXR1cm4gcmV0Ow0KLQl9
DQotDQotCXJldHVybiBMREJfU1VDQ0VTUzsNCi19DQotDQogY29uc3Qgc3RydWN0IGRzZGJfc2No
ZW1hICpkc2RiX2dldF9zY2hlbWEoc3RydWN0IGxkYl9jb250ZXh0ICpsZGIpDQogew0KIAljb25z
dCB2b2lkICpwOw0KQEAgLTEwNDUsMjggKzEwMjksNiBAQA0KIAlyZXR1cm4gc2NoZW1hOw0KIH0N
CiANCi12b2lkIGRzZGJfbWFrZV9zY2hlbWFfZ2xvYmFsKHN0cnVjdCBsZGJfY29udGV4dCAqbGRi
KQ0KLXsNCi0JY29uc3Qgdm9pZCAqcDsNCi0JY29uc3Qgc3RydWN0IGRzZGJfc2NoZW1hICpzY2hl
bWE7DQotDQotCS8qIHNlZSBpZiB3ZSBoYXZlIGEgY2FjaGVkIGNvcHkgKi8NCi0JcCA9IGxkYl9n
ZXRfb3BhcXVlKGxkYiwgImRzZGJfc2NoZW1hIik7DQotCWlmICghcCkgew0KLQkJcmV0dXJuOw0K
LQl9DQotDQotCXNjaGVtYSA9IHRhbGxvY19nZXRfdHlwZShwLCBzdHJ1Y3QgZHNkYl9zY2hlbWEp
Ow0KLQlpZiAoIXNjaGVtYSkgew0KLQkJcmV0dXJuOw0KLQl9DQotDQotCXRhbGxvY19zdGVhbCh0
YWxsb2NfYXV0b2ZyZWVfY29udGV4dCgpLCBzY2hlbWEpOw0KLQlnbG9iYWxfc2NoZW1hID0gc2No
ZW1hOw0KLQ0KLQlkc2RiX3NldF9nbG9iYWxfc2NoZW1hKGxkYik7DQotfQ0KLQ0KIFdFUlJPUiBk
c2RiX2F0dGFjaF9zY2hlbWFfZnJvbV9sZGlmX2ZpbGUoc3RydWN0IGxkYl9jb250ZXh0ICpsZGIs
IGNvbnN0IGNoYXIgKnBmLCBjb25zdCBjaGFyICpkZikNCiB7DQogCXN0cnVjdCBsZGJfbGRpZiAq
bGRpZjsNCkluZGV4OiBkc2RiL3NhbWRiL3NhbWRiLmMNCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCi0tLSBkc2RiL3Nh
bWRiL3NhbWRiLmMJKHJldmlzaW9uIDIzNzMwKQ0KKysrIGRzZGIvc2FtZGIvc2FtZGIuYwkod29y
a2luZyBjb3B5KQ0KQEAgLTI3LDYgKzI3LDcgQEANCiAjaW5jbHVkZSAibGlicnBjL2dlbl9uZHIv
bmRyX21pc2MuaCINCiAjaW5jbHVkZSAibGlicnBjL2dlbl9uZHIvbmRyX3NlY3VyaXR5LmgiDQog
I2luY2x1ZGUgImxpYi9sZGIvaW5jbHVkZS9sZGIuaCINCisjaW5jbHVkZSAibGliL2xkYi9pbmNs
dWRlL2xkYl9wcml2YXRlLmgiDQogI2luY2x1ZGUgImxpYi9sZGIvaW5jbHVkZS9sZGJfZXJyb3Jz
LmgiDQogI2luY2x1ZGUgImxpYmNsaS9zZWN1cml0eS9zZWN1cml0eS5oIg0KICNpbmNsdWRlICJs
aWJjbGkvYXV0aC9saWJjbGlfYXV0aC5oIg0KQEAgLTM3LDYgKzM4LDggQEANCiAjaW5jbHVkZSAi
ZHNkYi9zYW1kYi9zYW1kYi5oIg0KICNpbmNsdWRlICJkc2RiL2NvbW1vbi9mbGFncy5oIg0KIA0K
K3N0cnVjdCBsZGJfY29udGV4dCAqc2FtZGJfZ2xvYmFsX2NvbnRleHQ7DQorDQogLyoNCiAgIGNv
bm5lY3QgdG8gdGhlIFNBTSBkYXRhYmFzZQ0KICAgcmV0dXJuIGFuIG9wYXF1ZSBjb250ZXh0IHBv
aW50ZXIgb24gc3VjY2Vzcywgb3IgTlVMTCBvbiBmYWlsdXJlDQpAQCAtNDUsMTIgKzQ4LDUyIEBA
DQogCQkJCSAgc3RydWN0IGF1dGhfc2Vzc2lvbl9pbmZvICpzZXNzaW9uX2luZm8pDQogew0KIAlz
dHJ1Y3QgbGRiX2NvbnRleHQgKmxkYjsNCisJc3RydWN0IGxkYl9vcGFxdWUgKm87DQorDQorCWlm
IChzYW1kYl9nbG9iYWxfY29udGV4dCkgew0KKwkJc2l6ZV90ICpzdGFydHVwX2Jsb2NrczsNCisJ
CWxkYiA9IHRhbGxvYyhtZW1fY3R4LCBzdHJ1Y3QgbGRiX2NvbnRleHQpOw0KKwkJKmxkYiA9ICpz
YW1kYl9nbG9iYWxfY29udGV4dDsNCisJCWlmICghdGFsbG9jX3JlZmVyZW5jZShsZGIsIHNhbWRi
X2dsb2JhbF9jb250ZXh0KSkgew0KKwkJCXRhbGxvY19mcmVlKGxkYik7DQorCQkJcmV0dXJuIE5V
TEw7DQorCQl9DQorDQorCQlsZGItPm9wYXF1ZSA9IE5VTEw7DQorCQkNCisJCS8qIENyZWF0ZSBh
IG5ldyBvcGFxdWUgbGlzdCwgc2VwZXJhdGUgc28gd2UgY2FuIGFkZCB0bw0KKwkJICogaXQgd2l0
aG91dCBjaGFuZ2luZyB0aGUgbWFzdGVyICovDQorCQlmb3IgKG89c2FtZGJfZ2xvYmFsX2NvbnRl
eHQtPm9wYXF1ZTsgbzsgbz1vLT5uZXh0KSB7DQorCQkJaW50IHJldCA9IGxkYl9zZXRfb3BhcXVl
KGxkYiwgby0+bmFtZSwgby0+dmFsdWUpOw0KKwkJCWlmIChyZXQgIT0gTERCX1NVQ0NFU1MpIHsN
CisJCQkJcmV0dXJuIE5VTEw7DQorCQkJfQ0KKwkJfQ0KKw0KKwkJaWYgKGxkYl9zZXRfb3BhcXVl
KGxkYiwgInNlc3Npb25JbmZvIiwgc2Vzc2lvbl9pbmZvKSkgew0KKwkJCXRhbGxvY19mcmVlKGxk
Yik7DQorCQkJcmV0dXJuIE5VTEw7DQorCQl9DQorDQorCQlzdGFydHVwX2Jsb2NrcyA9IHRhbGxv
YyhsZGIsIHNpemVfdCk7DQorCQkqc3RhcnR1cF9ibG9ja3MgPSB0YWxsb2NfdG90YWxfYmxvY2tz
KGxkYik7DQorCQlsZGJfc2V0X29wYXF1ZShsZGIsICJzdGFydHVwX2Jsb2NrcyIsIHN0YXJ0dXBf
YmxvY2tzKTsNCisJCQ0KKwkJdGFsbG9jX3NldF9kZXN0cnVjdG9yKGxkYiwgbGRiX3dyYXBfZGVz
dHJ1Y3Rvcik7DQorDQorCX0NCisNCiAJbGRiID0gbGRiX3dyYXBfY29ubmVjdChtZW1fY3R4LCBs
cF9zYW1fdXJsKCksIHNlc3Npb25faW5mbywNCiAJCQkgICAgICAgTlVMTCwgMCwgTlVMTCk7DQog
CWlmICghbGRiKSB7DQogCQlyZXR1cm4gTlVMTDsNCiAJfQ0KLQlkc2RiX21ha2Vfc2NoZW1hX2ds
b2JhbChsZGIpOw0KKwlzYW1kYl9nbG9iYWxfY29udGV4dCA9IHRhbGxvY19zdGVhbCh0YWxsb2Nf
YXV0b2ZyZWVfY29udGV4dCgpLCBsZGIpOw0KKwlpZiAoIXRhbGxvY19yZWZlcmVuY2UobWVtX2N0
eCwgc2FtZGJfZ2xvYmFsX2NvbnRleHQpKSB7DQorCQl0YWxsb2NfZnJlZShsZGIpOw0KKwkJc2Ft
ZGJfZ2xvYmFsX2NvbnRleHQgPSBOVUxMOw0KKwkJcmV0dXJuIE5VTEw7DQorCX0NCiAJcmV0dXJu
IGxkYjsNCiB9DQogDQo=


--=-0KhqGBKuhnpcbmM5X4XA--

--=-ZccIZcAPuxnK4AL4Hjzb
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQBGjaXKz4A8Wyi0NrsRAnBtAKCA3uWr5jCu7YiroDoycD7p9pkZ3ACcCQTF
PvG5H+jrNIaSColsUv08Kvc=
=hv/D
-----END PGP SIGNATURE-----

--=-ZccIZcAPuxnK4AL4Hjzb--

 

00Uf/6texurt