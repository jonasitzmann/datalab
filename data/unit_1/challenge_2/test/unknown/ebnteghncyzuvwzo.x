From perl6-all-return-81896-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 10:48:58 2007
Return-Path: <perl6-all-return-81896-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BEmuL9015226
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 10:48:57 -0400
Received: (qmail 19154 invoked by uid 514); 11 Jun 2007 14:48:54 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19149 invoked from network); 11 Jun 2007 14:48:54 -0000
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
Message-ID: <466D5BE5.5050505@rblasch.org>
Date: Mon, 11 Jun 2007 16:27:49 +0200
From: Ron Blaschke <ron@rblasch.org>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070326 Thunderbird/2.0.0.0 Mnenhy/0.7.5.666
MIME-Version: 1.0
To: jerry gay <jerry.gay@gmail.com>
CC: Paul Cochrane <paultcochrane@gmail.com>, chromatic <chromatic@wgz.org>,
   perl6-internals@perl.org
Subject: Re: [perl #41569] t/distro/file_metadata.t fails on win32
References: <45F07EB8.3070107@rblasch.org>	 <CB5546FE-F0EA-4CD4-94D9-68D734DD46EF@coleda.com>	 <45F15A6B.3020104@rblasch.org> <200703091244.31943.chromatic@wgz.org>	 <8e8ee0d40706110643u1f720b6bs965dd2b343b728f4@mail.gmail.com> <1d9a3f400706110717p470b2fbehbed62d1fff0ab321@mail.gmail.com>
In-Reply-To: <1d9a3f400706110717p470b2fbehbed62d1fff0ab321@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

jerry gay wrote:
> On 6/11/07, Paul Cochrane <paultcochrane@gmail.com> wrote:
>> On 09/03/07, chromatic <chromatic@wgz.org> wrote:
>> > On Friday 09 March 2007 05:00, Ron Blaschke wrote:
>> >
>> > > Attached patch replaces the backslashes with slashes on Windows.
>> >
>> > Would using File::Spec be less fragile?
>>
>> I've attached a patch which uses File::Spec instead of replacing one
>> set of slashes with another.  Comments welcome!  :-)
>>
> good idea.
> 
> instead of breaking up the path and reconstructing it separately
> (since the individual components of the path aren't used anywhere
> else,) how about using 'canonpath' to clean up the path in one step.
> something like:
> 
>                if ( $result =~ m{(.*) - (.*)} ) {
>                    my $file = canonpath $1;
>                    my $attribute = $2;
> 
>                    # and add to the results hash
>                    $results{$file} = $attribute;
>                }

I may be missing something here, but I think the problem was that the
file name sets in MANIFEST and those reported by svn must match up, but
didn't because of the file separator.  MANIFEST uses forward slashes,
File::Spec those of the current platform, which probably brings you back
to square one.

If you decide for File::Spec you should also canonicalize
@manifest_files, I guess.

Ron

  

7H1
 M