From perl6-all-return-81874-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 13:38:44 2007
Return-Path: <perl6-all-return-81874-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l57HcghB005047
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 13:38:43 -0400
Received: (qmail 17026 invoked by uid 514); 7 Jun 2007 17:38:36 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17021 invoked from network); 7 Jun 2007 17:38:35 -0000
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
From: Klaas-Jan Stol (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 07 Jun 2007 07:51:53 -0700
Subject: [perl #43155] [PATCH] typename is a c++ kw; replace in datatypes.c,h 
In-Reply-To: <7b0e52b40706070751m310c014dha342e8200b87d95f@mail.gmail.com>
References: <RT-Ticket-43155@perl.org> <7b0e52b40706070751m310c014dha342e8200b87d95f@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1668-1181227913-1158.43155-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43155
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: parrotcode@gmail.com
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1181227913-1668-67"
Resent-Message-Id: <20070607145154.08BD02AFD7@x3.develooper.com>
Resent-Date: Thu,  7 Jun 2007 07:51:54 -0700 (PDT)
Resent-From: rt-parrotcode=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_PASS

------------=_1181227913-1668-67
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Klaas-Jan Stol 
# Please include the string:  [perl #43155]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43155 >


hi,

"typename" is a c++ keyword, this patch respells the word in datatypes.c,h
as "type_name".

best,
kjs

------------=_1181227913-1668-67
Content-Type: application/octet-stream; name="typename_is_cpp_kw.patch"
Content-Disposition: inline; filename="typename_is_cpp_kw.patch"
Content-Transfer-Encoding: base64
RT-Attachment: 43155/262262/114639

SW5kZXg6IGluY2x1ZGUvcGFycm90L2RhdGF0eXBlcy5oDQo9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQotLS0gaW5jbHVkZS9wYXJyb3QvZGF0YXR5cGVzLmgJ
KHJldmlzaW9uIDE4ODYwKQ0KKysrIGluY2x1ZGUvcGFycm90L2RhdGF0eXBl
cy5oCSh3b3JraW5nIGNvcHkpDQpAQCAtMTI5LDcgKzEyOSw3IEBADQogLyog
SEVBREVSSVpFUiBCRUdJTjogc3JjL2RhdGF0eXBlcy5jICovCiAKIFBBUlJP
VF9BUEkgSU5UVkFMIFBhcnJvdF9nZXRfZGF0YXR5cGVfZW51bSggSW50ZXJw
ICppbnRlcnAsCi0gICAgY29uc3QgU1RSSU5HICp0eXBlbmFtZSAvKk5OKi8g
KQorICAgIGNvbnN0IFNUUklORyAqdHlwZV9uYW1lIC8qTk4qLyApCiAgICAg
ICAgIF9fYXR0cmlidXRlX19ub25udWxsX18oMik7CiAKIFBBUlJPVF9BUEkg
U1RSSU5HICogUGFycm90X2dldF9kYXRhdHlwZV9uYW1lKCBJbnRlcnAgKmlu
dGVycCwgSU5UVkFMIHR5cGUgKTsKSW5kZXg6IHNyYy9kYXRhdHlwZXMuYw0K
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KLS0tIHNyYy9kYXRhdHlwZXMuYwko
cmV2aXNpb24gMTg4NjApDQorKysgc3JjL2RhdGF0eXBlcy5jCSh3b3JraW5n
IGNvcHkpDQpAQCAtMjQsMTUgKzI0LDE1IEBADQogLyoKIAogRlVOQ0RPQzog
UGFycm90X2dldF9kYXRhdHlwZV9lbnVtCi1SZXR1cm4gZGF0YXR5cGUgQzxl
bnVtPiBmb3IgQzxTVFJJTkcqPiB0eXBlbmFtZS4KK1JldHVybiBkYXRhdHlw
ZSBDPGVudW0+IGZvciBDPFNUUklORyo+IHR5cGVfbmFtZS4KIAogKi8KIAog
UEFSUk9UX0FQSQogSU5UVkFMCi1QYXJyb3RfZ2V0X2RhdGF0eXBlX2VudW0o
SW50ZXJwICppbnRlcnAsIGNvbnN0IFNUUklORyAqIGNvbnN0IHR5cGVuYW1l
IC8qTk4qLykKK1BhcnJvdF9nZXRfZGF0YXR5cGVfZW51bShJbnRlcnAgKmlu
dGVycCwgY29uc3QgU1RSSU5HICogY29uc3QgdHlwZV9uYW1lIC8qTk4qLykK
IHsKLSAgICBjaGFyICogY29uc3QgdHlwZSA9IHN0cmluZ190b19jc3RyaW5n
KGludGVycCwgdHlwZW5hbWUpOworICAgIGNoYXIgKiBjb25zdCB0eXBlID0g
c3RyaW5nX3RvX2NzdHJpbmcoaW50ZXJwLCB0eXBlX25hbWUpOwogICAgIGlu
dCBpOwogCiAgICAgZm9yIChpID0gZW51bV9maXJzdF90eXBlOyBpIDwgZW51
bV9sYXN0X3R5cGU7IGkrKykgewo=

------------=_1181227913-1668-67--

             

t4vIct