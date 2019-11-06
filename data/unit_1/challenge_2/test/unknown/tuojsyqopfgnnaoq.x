From perl6-all-return-82427-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 16:18:00 2007
Return-Path: <perl6-all-return-82427-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SKHvL9015090
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 16:17:57 -0400
Received: (qmail 4285 invoked by uid 514); 28 Jun 2007 20:17:53 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 4278 invoked from network); 28 Jun 2007 20:17:53 -0000
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
Subject: [perl #43325] [TODO] config/init/headers.pm:  Write unit tests 
From: "James Keenan via RT" <parrotbug-followup@parrotcode.org>
Reply-To: parrotbug-followup@parrotcode.org
In-Reply-To: <rt-3.6.HEAD-1276-1182914104-648.43325-15-0@perl.org>
References: <RT-Ticket-43325@perl.org> <E1I1tkq-0000eM-FG@li11-226.members.linode.com> <rt-3.6.HEAD-1276-1182914104-648.43325-15-0@perl.org>
Message-ID: <rt-3.6.HEAD-1276-1183061844-1020.43325-15-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43325
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
Cc: perl6-internals@perl.org
To: "OtherRecipients of perl Ticket #43325": ;
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183061845-1276-104"
Date: Thu, 28 Jun 2007 13:17:25 -0700
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183061845-1276-104
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue Jun 26 20:15:04 2007, jkeen <!-- x --> at verizon.net wrote:
> On Fri Jun 22 18:19:26 2007, jkeen <!-- x --> at verizon.net wrote:
> >
> > "config/init/headers.pm would benefit from an
> > explanation of what 'nongenerated headers' are."
> >
> 
> This module has already achieved 100% coverage of all statements and
> branches during testing,
> so we only need to respond to the request above in order to close the
> ticket.

pmichaud and coke advised on the question above.  Submitting patch for
config/init/headers.pm.  Submitting test 106 for that module. 
Resubmitting 2 tests for 101.  Fixing earlier lack of correction in
MANIFEST.

------------=_1183061845-1276-104
Content-Type: text/plain; charset="ascii"; name="diff.init.headers.patch.txt"
Content-Disposition: inline; filename="diff.init.headers.patch.txt"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43325/265613/116214

Index: MANIFEST
===================================================================
--- MANIFEST	(revision 19404)
+++ MANIFEST	(working copy)
@@ -2830,31 +2830,34 @@
 t/compilers/tge/grammar.t                                   []
 t/compilers/tge/harness                                     []
 t/compilers/tge/parser.t                                    []
-t/configure/01-options.t                                    []
-t/configure/02-messages.t                                   []
-t/configure/03-steplist.t                                   []
-t/configure/04-configure.t                                  []
-t/configure/05-run_one_step.t                               []
-t/configure/06-bad_step.t                                   []
-t/configure/07-verbose_two.t                                []
-t/configure/08-verbose_step_number.t                        []
-t/configure/09-verbose_step_regex.t                         []
-t/configure/10-verbose_step_number_not_called.t             []
-t/configure/11-no_description.t                             []
-t/configure/12-verbose.t                                    []
-t/configure/13-die.t                                        []
-t/configure/14-params.t                                     []
-t/configure/15-no_return.t                                  []
-t/configure/16-no_return_but_result.t                       []
-t/configure/17-revision_no_DEVELOPING.t                     []
-t/configure/18-revision.t                                   []
-t/configure/19-version.t                                    []
-t/configure/20-version.t                                    []
-t/configure/21-version.t                                    []
-t/configure/22-version.t                                    []
-t/configure/23-version.t                                    []
-t/configure/24-version.t                                    []
-t/configure/25-options_test.t                               []
+t/configure/001-options.t                                   []
+t/configure/002-messages.t                                  []
+t/configure/003-steplist.t                                  []
+t/configure/004-configure.t                                 []
+t/configure/005-run_one_step.t                              []
+t/configure/006-bad_step.t                                  []
+t/configure/007-verbose_two.t                               []
+t/configure/008-verbose_step_number.t                       []
+t/configure/009-verbose_step_regex.t                        []
+t/configure/010-verbose_step_number_not_called.t            []
+t/configure/011-no_description.t                            []
+t/configure/012-verbose.t                                   []
+t/configure/013-die.t                                       []
+t/configure/014-params.t                                    []
+t/configure/015-no_return.t                                 []
+t/configure/016-no_return_but_result.t                      []
+t/configure/017-revision_no_DEVELOPING.t                    []
+t/configure/018-revision.t                                  []
+t/configure/019-version.t                                   []
+t/configure/020-version.t                                   []
+t/configure/021-version.t                                   []
+t/configure/022-version.t                                   []
+t/configure/023-version.t                                   []
+t/configure/024-version.t                                   []
+t/configure/025-options_test.t                              []
+t/configure/101-init_manifest.01.t                          []
+t/configure/101-init_manifest.02.t                          []
+t/configure/106-init_headers.t                              []
 t/configure/base.t                                          []
 t/configure/config_steps.t                                  []
 t/configure/data.t                                          []
Index: t/configure/101-init_manifest.01.t
===================================================================
--- t/configure/101-init_manifest.01.t	(revision 0)
+++ t/configure/101-init_manifest.01.t	(revision 0)
@@ -0,0 +1,81 @@
+#! perl
+# Copyright (C) 2007, The Perl Foundation.
+# $Id: 101-init_manifest.01.t 19303 2007-06-25 03:38:10Z jkeenan $
+# 101-init_manifest.01.t
+
+use strict;
+use warnings;
+use Test::More tests =>  7;
+use Carp;
+use Data::Dumper;
+use lib qw( . lib ../lib ../../lib );
+use_ok('config::init::manifest');
+use Parrot::BuildUtil;
+use Parrot::Configure;
+use Parrot::Configure::Options qw( process_options );
+
+=for hints_for_testing See if you can get the program to 'ack' when it
+thinks there are files missing from those listed in the MANIFEST.
+
+=cut
+
+my $pkg = q{init::manifest};
+my $parrot_version = Parrot::BuildUtil::parrot_version();
+my $args = process_options( {
+    argv            => [ q{--nomanicheck} ],
+    script          => $0,
+    parrot_version  => $parrot_version,
+    svnid           => '$Id: 101-init_manifest.01.t 19303 2007-06-25 03:38:10Z jkeenan $',
+} );
+
+my $conf = Parrot::Configure->new;
+$conf->add_steps($pkg);
+$conf->options->set(%{$args});
+
+my $task = $conf->steps->[0];
+my $step_name   = $task->step;
+my @step_params = @{ $task->params };
+
+my $step = $step_name->new();
+ok(defined $step, "$step_name constructor returned defined value");
+isa_ok($step, $step_name);
+ok($step->description(), "$step_name has description");
+my $ret = $step->runstep($conf);
+ok(defined $ret, "$step_name runstep() returned defined value");
+is($ret->result, q{skipped},
+    "Because of --nomanicheck, result is 'skipped'.");
+
+pass("Completed all tests in $0");
+
+################### DOCUMENTATION ###################
+
+=head1 NAME
+
+101-init_manifest.01.t - test config::init::manifest
+
+=head1 SYNOPSIS
+
+    % prove t/configure/101-init_manifest.01.t
+
+=head1 DESCRIPTION
+
+The files in this directory test functionality used by F<Configure.pl>.
+
+The tests in this file test subroutines exported by config::init::manifest.
+
+=head1 AUTHOR
+
+James E Keenan
+
+=head1 SEE ALSO
+
+config::init::manifest, F<Configure.pl>.
+
+=cut
+
+# Local Variables:
+#   mode: cperl
+#   cperl-indent-level: 4
+#   fill-column: 100
+# End:
+# vim: expandtab shiftwidth=4:
Index: t/configure/101-init_manifest.02.t
===================================================================
--- t/configure/101-init_manifest.02.t	(revision 0)
+++ t/configure/101-init_manifest.02.t	(revision 0)
@@ -0,0 +1,100 @@
+#! perl
+# Copyright (C) 2007, The Perl Foundation.
+# $Id: 101-init_manifest.02.t 19274 2007-06-23 00:38:00Z jkeenan $
+# 101-init_manifest.02.t
+
+use strict;
+use warnings;
+use Test::More tests =>  6;
+use Carp;
+use Cwd;
+use Data::Dumper;
+use File::Copy;
+use File::Temp qw(tempdir);
+use lib qw( . lib ../lib ../../lib );
+use_ok('config::init::manifest');
+use Parrot::BuildUtil;
+use Parrot::Configure;
+use Parrot::Configure::Options qw( process_options );
+use Parrot::IO::Capture::Mini;
+
+=for hints_for_testing See if you can get the program to 'ack' when it
+thinks there are files missing from those listed in the MANIFEST.
+
+=cut
+
+my $pkg = q{init::manifest};
+my $parrot_version = Parrot::BuildUtil::parrot_version();
+my $args = process_options( {
+    argv            => [ ],
+    script          => $0,
+    parrot_version  => $parrot_version,
+    svnid           => '$Id: 101-init_manifest.02.t 19274 2007-06-23 00:38:00Z jkeenan $',
+} );
+
+my $conf = Parrot::Configure->new;
+$conf->add_steps($pkg);
+$conf->options->set(%{$args});
+
+my $task = $conf->steps->[0];
+my $step_name   = $task->step;
+my @step_params = @{ $task->params };
+
+my $step = $step_name->new();
+ok(defined $step, "$step_name constructor returned defined value");
+isa_ok($step, $step_name);
+ok($step->description(), "$step_name has description");
+# Lets see if we can trick ExtUtils::Manifest into thinking there are missing
+# files.
+my $cwd = cwd();
+{
+    my $tdir = tempdir();
+    chdir $tdir or croak "Unable to change to tempdir";
+    copy (qq{$cwd/MANIFEST}, qq{$tdir/MANIFEST}) or croak "Unable to copy MANIFEST";
+    {
+        my $tie_err = tie *STDERR, "Parrot::IO::Capture::Mini"
+            or croak "Unable to tie";
+        my $tie_out = tie *STDOUT, "Parrot::IO::Capture::Mini"
+            or croak "Unable to tie";
+        my $ret = $step->runstep($conf);
+        my @lines = $tie_err->READLINE;
+        my @more_lines = $tie_out->READLINE;
+        is($ret, undef, "$step_name runstep returned undef");
+    }
+    chdir $cwd or croak "Unable to change back";
+}
+
+pass("Completed all tests in $0");
+
+################### DOCUMENTATION ###################
+
+=head1 NAME
+
+101-init_manifest.02.t - test config::init::manifest
+
+=head1 SYNOPSIS
+
+    % prove t/configure/101-init_manifest.02.t
+
+=head1 DESCRIPTION
+
+The files in this directory test functionality used by F<Configure.pl>.
+
+The tests in this file test subroutines exported by config::init::manifest.
+
+=head1 AUTHOR
+
+James E Keenan
+
+=head1 SEE ALSO
+
+config::init::manifest, F<Configure.pl>.
+
+=cut
+
+# Local Variables:
+#   mode: cperl
+#   cperl-indent-level: 4
+#   fill-column: 100
+# End:
+# vim: expandtab shiftwidth=4:
Index: t/configure/106-init_headers.t
===================================================================
--- t/configure/106-init_headers.t	(revision 0)
+++ t/configure/106-init_headers.t	(revision 0)
@@ -0,0 +1,50 @@
+#! perl
+# Copyright (C) 2007, The Perl Foundation.
+# $Id: 106-init_headers.t 19411 2007-06-28 20:04:46Z jkeenan $
+# 106-init_headers.t
+
+use strict;
+use warnings;
+use Test::More tests =>  2;
+use Carp;
+use lib qw( . lib ../lib ../../lib );
+use_ok('config::init::headers');
+
+# config/init/headers.pm is completely tested in all statements, branches and
+# conditions by other tests among the configuration tests.  So there is no
+# need to add additional unit tests in this file.
+
+pass("Completed all tests in $0");
+
+################### DOCUMENTATION ###################
+
+=head1 NAME
+
+106-init_headers.t - test config::init::headers
+
+=head1 SYNOPSIS
+
+    % prove t/configure/106-init_headers.t
+
+=head1 DESCRIPTION
+
+The files in this directory test functionality used by F<Configure.pl>.
+
+The tests in this file test subroutines exported by config::init::headers.
+
+=head1 AUTHOR
+
+James E Keenan
+
+=head1 SEE ALSO
+
+config::init::headers, F<Configure.pl>.
+
+=cut
+
+# Local Variables:
+#   mode: cperl
+#   cperl-indent-level: 4
+#   fill-column: 100
+# End:
+# vim: expandtab shiftwidth=4:
Index: config/init/headers.pm
===================================================================
--- config/init/headers.pm	(revision 19404)
+++ config/init/headers.pm	(working copy)
@@ -7,7 +7,8 @@
 
 =head1 DESCRIPTION
 
-Uses C<ExtUtils::Manifest> to determine which headers are nongenerated.
+Uses C<ExtUtils::Manifest> to find the C header files that are 
+distributed with Parrot.
 
 =cut
 
@@ -21,7 +22,7 @@
 use Parrot::Configure::Step;
 use ExtUtils::Manifest qw(maniread);
 
-our $description = 'Determining nongenerated header files';
+our $description = 'Finding header files distributed with Parrot';
 our @args;
 
 sub runstep {

------------=_1183061845-1276-104--

 

5J6orti=<53iaH