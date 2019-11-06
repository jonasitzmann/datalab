From perl6-all-return-81718-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 14:05:17 2007
Return-Path: <perl6-all-return-81718-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51I5GhB013017
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 14:05:16 -0400
Received: (qmail 2492 invoked by uid 514); 1 Jun 2007 18:05:10 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2487 invoked from network); 1 Jun 2007 18:05:09 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: softfail (x1.develooper.com: transitioning domain of chromatic@wgz.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: parrot-porters@perl.org
Subject: Better GCC Visibility
Date: Fri, 1 Jun 2007 11:02:17 -0700
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_p8FYGHaJMTFItHK"
Message-Id: <200706011102.17889.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.4 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

--Boundary-00=_p8FYGHaJMTFItHK
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I think this patch fixes the visibility problem with Linux and GCC versions 
before 4.0.  I think it also enables symbol hiding on other platforms with 
GCC.

-- c


--Boundary-00=_p8FYGHaJMTFItHK
Content-Type: text/x-diff;
  charset="us-ascii";
  name="symbol_hiding_fix.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="symbol_hiding_fix.patch"

=== config/auto/gcc.pm
==================================================================
--- config/auto/gcc.pm	(revision 3726)
+++ config/auto/gcc.pm	(local)
@@ -132,6 +132,7 @@
             # We shouldn't be using __packed__, but I doubt -Wpacked will harm
             # us -Wpadded may prove interesting, or even noisy.
             # -Wunreachable-code might be useful in a non debugging version
+            4.0 => "-fvisibility=hidden",
         );
         my @cage_opt_and_vers = (
             0 =>
@@ -265,6 +266,9 @@
         HAS_aligned_funcptr => 1
     );
 
+    $conf->data->set( sym_export => '__attribute__ ((visibility("default")))' )
+        if $gccversion > 4.0;
+
     $conf->data->set( HAS_aligned_funcptr => 0 )
         if $^O eq 'hpux';
 
=== config/init/hints/linux.pm
==================================================================
--- config/init/hints/linux.pm	(revision 3726)
+++ config/init/hints/linux.pm	(local)
@@ -52,9 +52,6 @@
         }
     }
     else {
-        # hide non-exported symbols
-        $cflags .= ' -fvisibility=hidden';
-
         if ( $ld_share_flags !~ /-fPIC/ ) {
             $ld_share_flags .= ' -fPIC';
         }
@@ -90,7 +87,6 @@
         libparrot_shared       => 'libparrot$(SHARE_EXT).$(SOVERSION)',
         libparrot_shared_alias => 'libparrot$(SHARE_EXT)',
         libparrot_soname       => '-Wl,-soname=libparrot$(SHARE_EXT).$(SOVERSION)',
-        sym_export             => '__attribute__ ((visibility("default")))',
     );
 
     if ( ( split( '-', $Config{archname} ) )[0] eq 'ia64' ) {

--Boundary-00=_p8FYGHaJMTFItHK--



q3gp ed