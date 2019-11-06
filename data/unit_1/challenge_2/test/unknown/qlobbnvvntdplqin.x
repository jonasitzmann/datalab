From perl6-all-return-82092-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 08:46:33 2007
Return-Path: <perl6-all-return-82092-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JCkWL9029499
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:46:32 -0400
Received: (qmail 21411 invoked by uid 514); 19 Jun 2007 12:46:29 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21405 invoked from network); 19 Jun 2007 12:46:29 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: James Keenan (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Tue, 19 Jun 2007 05:45:42 -0700
Subject: [perl #43251] [PATCH] Rename tools/dev/mk_manifests.pl 
In-Reply-To: <3F64FEED-9A50-46C4-AA81-945C86CA2926@verizon.net>
References: <RT-Ticket-43251@perl.org> <3F64FEED-9A50-46C4-AA81-945C86CA2926@verizon.net>
Message-ID: <rt-3.6.HEAD-1276-1182257142-693.43251-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43251
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1182257142-1276-2"
Resent-Message-Id: <20070619124543.323142AFFB@x3.develooper.com>
Resent-Date: Tue, 19 Jun 2007 05:45:43 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1182257142-1276-2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43251]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43251 >


According to its documentation, mk_manifests.pl "...generates a set  
of F<MANIFEST.*> files that give the final
locations in the file system for all the installable files listed in  
F<MANIFEST> and F<MANIFEST.generated>."

The name of this program is close to that of tools/dev/ 
mk_manifest_and_skip.pl -- confusingly close, IMHO.

The patch attached changes the name to be more self-documenting:   
mk_rpm_manifests.pl.

Please review.  Thank you very much.
kid51


------------=_1182257142-1276-2
Content-Type: text/plain; charset="ascii"; name="mk_manifests.pl.patch.txt"
Content-Disposition: inline; filename="mk_manifests.pl.patch.txt"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43251/263682/115338

Index: tools/dev/mk_manifests.pl
===================================================================
--- tools/dev/mk_manifests.pl	(revision 19126)
+++ tools/dev/mk_manifests.pl	(working copy)
@@ -1,131 +0,0 @@
-#! perl
-################################################################################
-# Copyright (C) 2001-2003, The Perl Foundation.
-# $Id: mk_manifests.pl 14650 2006-09-18 19:20:45Z bernhard $
-################################################################################
-
-=head1 TITLE
-
-tools/dev/mk_manifests.pl - Generate MANIFEST.* files for building RPMs
-
-=head1 SYNOPSIS
-
-    % perl tools/dev/mk_manifests.pl [options]
-
-=head1 DESCRIPTION
-
-This file generates a set of F<MANIFEST.*> files that give the final
-locations in the file system for all the installable files listed in
-F<MANIFEST> and F<MANIFEST.generated>.
-
-It does NOT generate the F<MANIFEST> file that F<Configure.pl> checks
-and the manifest checks use.
-
-=head2 Options
-
-=over 4
-
-=item C<buildprefix>
-
-The build prefix. Defaults to ''.
-
-=item C<prefix>
-
-The install prefix. Defaults to '/usr'.
-
-=item C<exec_prefix>
-
-The exec prefix. Defaults to '/usr'.
-
-=item C<bindir>
-
-The executables directory. Defaults to '/usr/bin'.
-
-=item C<libdir>
-
-The library directory. Defaults to '/usr/lib'.
-
-=item C<includedir>
-
-The header directory. Defaults to '/usr/include'.
-
-=back
-
-=head1 SEE ALSO
-
-F<install_files.pl>
-
-=cut
-
-################################################################################
-
-use strict;
-use warnings;
-
-my %options = (
-    prefix      => '/usr',
-    exec_prefix => '/usr',
-    bindir      => '/usr/bin',
-    libdir      => '/usr/lib',
-    includedir  => '/usr/include',
-);
-
-my $manifest;
-foreach (@ARGV) {
-    if (/^--([^=]+)=(.*)/) {
-        $options{$1} = $2;
-    }
-    else {
-        $manifest = $_;
-    }
-}
-
-my %FILES;    # { package => file }
-@ARGV = ($manifest);
-while (<>) {
-    chomp;
-    my ( $file, $meta, $dest ) = split( /\s+/, $_ );
-    $dest ||= $file;
-    my $generated = $meta =~ s/^\*//;
-    my ($package) = $meta =~ /^\[(.*?)\]/;
-    $meta =~ s/^\[(.*?)\]//;
-    next if $package eq "";
-    my %meta;
-    @meta{ split( /,/, $meta ) } = ();
-    $meta{$_} = 1 for ( keys %meta );    # Laziness
-
-    my $entry;
-
-    if ( $meta{doc} ) {
-        $entry = "%doc $dest";
-    }
-    elsif ( $meta{lib} ) {
-        $entry = "$options{libdir}/$dest";
-    }
-    elsif ( $meta{bin} ) {
-        $entry = "$options{bindir}/$dest";
-    }
-    elsif ( $meta{include} ) {
-        $entry = "$options{includedir}/$dest";
-    }
-    else {
-        $entry = "$options{prefix}/$dest";
-    }
-
-    push @{ $FILES{$package} }, $entry;
-}
-
-while ( my ( $package, $files ) = each %FILES ) {
-    my $manifest = "MANIFEST.$package";
-    open( my $MANIFEST, ">", "$manifest" ) or die "create $manifest: $!";
-    print $MANIFEST "$_\n" foreach (@$files);
-    close $MANIFEST;
-    print "Wrote $manifest\n";
-}
-
-# Local Variables:
-#   mode: cperl
-#   cperl-indent-level: 4
-#   fill-column: 100
-# End:
-# vim: expandtab shiftwidth=4:
Index: tools/dev/mk_rpm_manifests.pl
===================================================================
--- tools/dev/mk_rpm_manifests.pl	(revision 19126)
+++ tools/dev/mk_rpm_manifests.pl	(working copy)
@@ -1,16 +1,16 @@
 #! perl
 ################################################################################
 # Copyright (C) 2001-2003, The Perl Foundation.
-# $Id: mk_manifests.pl 14650 2006-09-18 19:20:45Z bernhard $
+# $Id: mk_rpm_manifests.pl 14650 2006-09-18 19:20:45Z bernhard $
 ################################################################################
 
 =head1 TITLE
 
-tools/dev/mk_manifests.pl - Generate MANIFEST.* files for building RPMs
+tools/dev/mk_rpm_manifests.pl - Generate MANIFEST.* files for building RPMs
 
 =head1 SYNOPSIS
 
-    % perl tools/dev/mk_manifests.pl [options]
+    % perl tools/dev/mk_rpm_manifests.pl [options]
 
 =head1 DESCRIPTION
 
Index: MANIFEST
===================================================================
--- MANIFEST	(revision 19126)
+++ MANIFEST	(working copy)
@@ -1,7 +1,7 @@
 # ex: set ro:
 # $Id$
 #
-# generated by tools/dev/mk_manifest_and_skip.pl Mon Jun 18 21:58:59 2007 UT
+# generated by tools/dev/mk_manifest_and_skip.pl Tue Jun 19 12:35:33 2007 UT
 #
 # See tools/dev/install_files.pl for documentation on the
 # format of this file.
@@ -13,7 +13,7 @@
 Configure.pl                                                []
 DEPRECATED.pod                                              []
 DEVELOPING                                                  []
-LICENSE                                                     [main]doc
+LICENSE                                                     []
 MANIFEST                                                    []
 MANIFEST.SKIP                                               []
 MANIFEST.generated                                          []
@@ -3162,6 +3162,7 @@
 tools/dev/mk_manifest_and_skip.pl                           [devel]
 tools/dev/mk_manifests.pl                                   [devel]
 tools/dev/mk_native_pbc                                     [devel]
+tools/dev/mk_rpm_manifests.pl                               [devel]
 tools/dev/nm.pl                                             [devel]
 tools/dev/ops_not_tested.pl                                 [devel]
 tools/dev/ops_renum.mak                                     [devel]
Index: MANIFEST.SKIP
===================================================================
--- MANIFEST.SKIP	(revision 19126)
+++ MANIFEST.SKIP	(working copy)
@@ -1,6 +1,6 @@
 # ex: set ro:
 # $Id$
-# generated by tools/dev/mk_manifest_and_skip.pl Mon Jun 18 19:55:28 2007 UT
+# generated by tools/dev/mk_manifest_and_skip.pl Tue Jun 19 12:35:33 2007 UT
 #
 # This file should contain a transcript of the svn:ignore properties
 # of the directories in the Parrot subversion repository. (Needed for

------------=_1182257142-1276-2--

                 

)_ fDlXj5