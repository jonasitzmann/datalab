From perl6-all-return-81975-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 19:23:08 2007
Return-Path: <perl6-all-return-81975-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ENN7L9027568
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 19:23:07 -0400
Received: (qmail 21317 invoked by uid 514); 14 Jun 2007 23:23:05 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21311 invoked from network); 14 Jun 2007 23:23:05 -0000
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
From: Jurosz Michal (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 14 Jun 2007 14:42:31 -0700
Subject: [perl #43218] Memory leaks (compreg, invokecc) 
In-Reply-To: <4671B5CD.1010308@ro.vutbr.cz>
References: <RT-Ticket-43218@perl.org> <4671B5CD.1010308@ro.vutbr.cz>
Message-ID: <rt-3.6.HEAD-7948-1181857351-1464.43218-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43218
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jurosz@ro.vutbr.cz
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1181857352-7948-30"
Resent-Message-Id: <20070614214232.A7AAC2B006@x3.develooper.com>
Resent-Date: Thu, 14 Jun 2007 14:42:32 -0700 (PDT)
Resent-From: rt-jurosz=ro.vutbr.cz@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1181857352-7948-30
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Jurosz Michal 
# Please include the string:  [perl #43218]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43218 >


Attached test use compreg P1, "PASM" and invokecc it 100,000 times.
On win32 (mingw32) it consumes 70MB of RAM with r18834 (107 MB of RAM
with r11704).

Similar tests can be found here:
http://pr.perl6.cz/mj41/down/Parrot/tests-bugs-etc/02-probably%20memory%20leaks/

-- 
S pozdravem Michal Jurosz



------------=_1181857352-7948-30
Content-Type: text/plain; charset="ascii"; name="bad-int-t2.pasm"
Content-Disposition: inline; filename="bad-int-t2.pasm"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43218/263155/114982

    set S28, ""
    concat S28, ".pcc_sub :anon _indi:\n"
    concat S28, "  get_params \"(0,0,0)\", I0, I1, I2\n"
    concat S28, "  set I3, 23\n"
    concat S28, "  set_returns \"(0)\", I3\n"
    concat S28, "  returncc\n"

    compreg P1, "PASM"
    set I20, 0

NEXT:
    set_args "(0)",S28
    get_results "(0)", P0
    invokecc P1

    needs_destroy P0
    sweep 0
    
    inc I20
    lt I20, 100000, NEXT
    
#    sleep 10

end


------------=_1181857352-7948-30
Content-Type: application/pgp-signature; name="signature.asc"
Content-Disposition: inline; filename="signature.asc"
Content-Transfer-Encoding: base64
RT-Attachment: 43218/263155/114983

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KVmVyc2lvbjogR251UEcg
djEuNC4xIChNaW5nVzMyKQpDb21tZW50OiBVc2luZyBHbnVQRyB3aXRoIE1v
emlsbGEgLSBodHRwOi8vZW5pZ21haWwubW96ZGV2Lm9yZwoKaUQ4REJRRkdj
YlhZbjREdjRUaVBYVHNSQWtndEFKMGJIcm1ZRDF6SXpkTDl2c3BHUTIwdTBK
ZW43Z0NmWkFQUQpqQzlkU2dGL2d5UHU2RHZ1NWZTbmF6TT0KPUE4Q3cKLS0t
LS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tCg==

------------=_1181857352-7948-30--

                   

6d=esi
f1X