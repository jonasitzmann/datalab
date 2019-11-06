From perl6-all-return-81901-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 11:34:47 2007
Return-Path: <perl6-all-return-81901-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BFYjL9015687
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 11:34:46 -0400
Received: (qmail 14461 invoked by uid 514); 11 Jun 2007 15:34:43 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14454 invoked from network); 11 Jun 2007 15:34:43 -0000
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
Message-ID: <466D6B47.40206@rblasch.org>
Date: Mon, 11 Jun 2007 17:33:27 +0200
From: Ron Blaschke <ron@rblasch.org>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070326 Thunderbird/2.0.0.0 Mnenhy/0.7.5.666
MIME-Version: 1.0
To: Paul Cochrane <paultcochrane@gmail.com>
CC: jerry gay <jerry.gay@gmail.com>, chromatic <chromatic@wgz.org>,
   perl6-internals@perl.org
Subject: Re: [perl #41569] t/distro/file_metadata.t fails on win32
References: <45F07EB8.3070107@rblasch.org>	 <CB5546FE-F0EA-4CD4-94D9-68D734DD46EF@coleda.com>	 <45F15A6B.3020104@rblasch.org> <200703091244.31943.chromatic@wgz.org>	 <8e8ee0d40706110643u1f720b6bs965dd2b343b728f4@mail.gmail.com>	 <1d9a3f400706110717p470b2fbehbed62d1fff0ab321@mail.gmail.com>	 <466D5BE5.5050505@rblasch.org> <8e8ee0d40706110754r16c12619s62ee2b7e415ed512@mail.gmail.com>
In-Reply-To: <8e8ee0d40706110754r16c12619s62ee2b7e415ed512@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Paul Cochrane wrote:
> On 11/06/07, Ron Blaschke <ron@rblasch.org> wrote:
>> jerry gay wrote:
>> > On 6/11/07, Paul Cochrane <paultcochrane@gmail.com> wrote:
>> >> On 09/03/07, chromatic <chromatic@wgz.org> wrote:
>> >> > On Friday 09 March 2007 05:00, Ron Blaschke wrote:
>> >> >
>> >> > > Attached patch replaces the backslashes with slashes on Windows.
>> >> >
>> >> > Would using File::Spec be less fragile?
>> >>
>> >> I've attached a patch which uses File::Spec instead of replacing one
>> >> set of slashes with another.  Comments welcome!  :-)
>> >>
>> > good idea.
>> >
>> > instead of breaking up the path and reconstructing it separately
>> > (since the individual components of the path aren't used anywhere
>> > else,) how about using 'canonpath' to clean up the path in one step.
>> > something like:
>> >
>> >                if ( $result =~ m{(.*) - (.*)} ) {
>> >                    my $file = canonpath $1;
>> >                    my $attribute = $2;
>> >
>> >                    # and add to the results hash
>> >                    $results{$file} = $attribute;
>> >                }
>>
>> I may be missing something here, but I think the problem was that the
>> file name sets in MANIFEST and those reported by svn must match up, but
>> didn't because of the file separator.  MANIFEST uses forward slashes,
>> File::Spec those of the current platform, which probably brings you back
>> to square one.
> 
> But if we convert what MANIFEST provides (i.e. Unix directory
> separators) into whatever the current platform needs (i.e. what
> canonpath() does) then it should agree with whatever svn spits out.
> Or am I missing something?

No, that's exactly what I think needs to be done.  In the patch
canonpath is used with the result of the svn execution only.  That's not
enough.  @manifest_files would need to be changed too, otherwise it
contains the file names with forward slashes from MANIFEST.  There's
also a regex $lf_files_regexp that seems to filter files, and the part
that uses it would need to be aware of the changed separator, too.

> Essentially my patch is just a less fragile version of the patch you
> submitted to get this test to work on Windows.  (at least, I don't
> think I'm changing the functionality that much).

I simple changed the backward slashes to forward slashes, thus forward
slashes everywhere.  But canonpath does on Win32:

$ perl -MFile::Spec::Functions=canonpath
    -e "print canonpath 'some\file.t'"
some\file.t

$ perl -MFile::Spec::Functions=canonpath
    -e "print canonpath 'some/file.t'"
some\file.t


Here are the test results with the patch applied on Win32:

$ prove t\distro\file_metadata.t
<many lines snipped>...
#  svn ps svn:eol-style 'LF' examples/shootout/takfp.pir.output;
#  svn ps svn:eol-style 'LF' t/compilers/pge/p5regex/re_tests;
#  svn ps svn:eol-style 'LF' t/library/perlhist.txt;
#  svn ps svn:eol-style 'LF' t/op/sprintf_tests;
# '
#     expected: ''
# Looks like you failed 4 tests of 4.
t\distro\file_metadata....dubious
        Test returned status 4 (wstat 1024, 0x400)
DIED. FAILED tests 1-4
        Failed 4/4 tests, 0.00% okay
Failed Test              Stat Wstat Total Fail  Failed  List of Failed
-------------------------------------------------------------------------------
t\distro\file_metadata.t    4  1024     4    4 100.00%  1-4
Failed 1/1 test scripts, 0.00% okay. 4/4 subtests failed, 0.00% okay.

Ron

      

#GsUg9m�Bsfo 