From perl6-all-return-82554-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 13:22:41 2007
Return-Path: <perl6-all-return-82554-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l65HMeL9029090
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 13:22:40 -0400
Received: (qmail 21205 invoked by uid 514); 5 Jul 2007 17:22:35 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21200 invoked from network); 5 Jul 2007 17:22:34 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: moderator for perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: "brian d foy" (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 05 Jul 2007 09:20:21 -0700
Subject: [perl #43567] [PATCH] Parrot::Configure::Data: Check for Sortkeys instead of Data::Dumper version 
In-Reply-To: <2715accf0707050919t15047276n7a459098bb6e2407@mail.gmail.com>
References: <RT-Ticket-43567@perl.org> <2715accf0707050919t15047276n7a459098bb6e2407@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-25329-1183652422-59.43567-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43567
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: brian.d.foy@gmail.com
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183652422-25329-31"
Resent-Message-Id: <20070705162022.C94D72AFE1@x3.develooper.com>
Resent-Date: Thu,  5 Jul 2007 09:20:22 -0700 (PDT)
Resent-From: rt-brian.d.foy=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183652422-25329-31
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  "brian d foy" 
# Please include the string:  [perl #43567]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43567 >


The PAUSE indexer is confused by Parrot::Configure::Data because it
sees a line that has $Data::Dumper::VERSION in it. ExtUtils::Makemaker
has the same problem, because PAUSE and Makemaker look for
/([\$*])(([\w\:\']*)\bVERSION)\b.*\=/ in the source.

In the two places I saw $Data::Dumper::VERSION, Parrot really just
wants to know if Data::Dumper has Sortkeys(). Just check directly with
can(). As far as I can tell, no new test failures happen from this
change on my machine.

Once you fixup this problem, I can make some more clean-ups for the
parrot distro in PAUSE and finish moving all the distro modules to the
PARROTRE user. :)

-- 
brian d foy <brian.d.foy@gmail.com>
http://www.pair.com/~comdog/

------------=_1183652422-25329-31
Content-Type: application/octet-stream;
 name="data-dumper-sortkeys-patch.patch"
Content-Disposition: inline; filename="data-dumper-sortkeys-patch.patch"
Content-Transfer-Encoding: base64
RT-Attachment: 43567/268085/117329

SW5kZXg6IGxpYi9QYXJyb3QvQ29uZmlndXJlL0RhdGEucG0KPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQotLS0gbGliL1BhcnJvdC9Db25maWd1cmUvRGF0YS5w
bSAgICAgICAgKHJldmlzaW9uIDE5NjExKQorKysgbGliL1BhcnJvdC9Db25m
aWd1cmUvRGF0YS5wbSAgICAgICAgKHdvcmtpbmcgY29weSkKQEAgLTIyNywx
NSArMjI3LDcgQEAKICMgRGF0YTo6RHVtcGVyIHN1cHBvcnRzIFNvcnRrZXlz
IHNpbmNlIDIuMTIKICMgb2xkZXIgdmVyc2lvbnMgd2lsbCB3b3JrIGJ1dCBv
YnZpb3VzbHkgbm90IHNvcnRlZAogewotICAgIG15ICRkZF92ZXJzaW9uOwot
ICAgIGlmICggJERhdGE6OkR1bXBlcjo6VkVSU0lPTiA9fiAvKFtcZC5dKykv
ICkgewotICAgICAgICAkZGRfdmVyc2lvbiA9ICQxOwotICAgIH0KLSAgICBl
bHNlIHsKLSAgICAgICAgJGRkX3ZlcnNpb24gPSAkRGF0YTo6RHVtcGVyOjpW
RVJTSU9OOwotICAgIH0KLQotICAgIGlmICggJGRkX3ZlcnNpb24gPj0gMi4x
MiApIHsKKyAgICBpZiAoIGRlZmluZWQgZXZhbCB7IERhdGE6OkR1bXBlci0+
Y2FuKCdTb3J0a2V5cycpIH0gKSB7CiAgICAgICAgICpkdW1wID0gc3ViIHsK
ICAgICAgICAgICAgIG15ICRzZWxmID0gc2hpZnQ7CiAgICAgICAgICAgICBE
YXRhOjpEdW1wZXItPm5ldyggWyAkc2VsZi0+e2N9IF0sIFsnKlBDb25maWcn
XSApLT5Tb3J0a2V5cygxKS0+RHVtcCgpOwpAQCAtMjYyLDE1ICsyNTQsOCBA
QAogIyBEYXRhOjpEdW1wZXIgc3VwcG9ydHMgU29ydGtleXMgc2luY2UgMi4x
MgogIyBvbGRlciB2ZXJzaW9ucyB3aWxsIHdvcmsgYnV0IG9idmlvdXNseSBu
b3Qgc29ydGVkCiB7Ci0gICAgbXkgJGRkX3ZlcnNpb247Ci0gICAgaWYgKCAk
RGF0YTo6RHVtcGVyOjpWRVJTSU9OID1+IC8oW1xkLl0rKS8gKSB7Ci0gICAg
ICAgICRkZF92ZXJzaW9uID0gJDE7Ci0gICAgfQotICAgIGVsc2UgewotICAg
ICAgICAkZGRfdmVyc2lvbiA9ICREYXRhOjpEdW1wZXI6OlZFUlNJT047Ci0g
ICAgfQogCi0gICAgaWYgKCAkZGRfdmVyc2lvbiA+PSAyLjEyICkgeworICAg
IGlmICggZGVmaW5lZCBldmFsIHsgRGF0YTo6RHVtcGVyLT5jYW4oICdTb3J0
a2V5cycgKSB9ICkgewogICAgICAgICAqZHVtcF90ZW1wID0gc3ViIHsKICAg
ICAgICAgICAgIG15ICRzZWxmID0gc2hpZnQ7CiAgICAgICAgICAgICBEYXRh
OjpEdW1wZXItPm5ldyggWyAkc2VsZi0+e2NfdGVtcH0gXSwgWycqUENvbmZp
Z19UZW1wJ10gKS0+U29ydGtleXMoMSktPkR1bXAoKTs=

------------=_1183652422-25329-31--

             

r6N-,berPdQc_p  