From perl6-all-return-81910-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 10:23:07 2007
Return-Path: <perl6-all-return-81910-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CEN6L9027284
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 10:23:06 -0400
Received: (qmail 29634 invoked by uid 514); 12 Jun 2007 14:23:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29629 invoked from network); 12 Jun 2007 14:23:04 -0000
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
Message-ID: <466EABEB.8090003@rblasch.org>
Date: Tue, 12 Jun 2007 16:21:31 +0200
From: Ron Blaschke <ron@rblasch.org>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070326 Thunderbird/2.0.0.0 Mnenhy/0.7.5.666
MIME-Version: 1.0
To: Paul Cochrane <paultcochrane@gmail.com>
CC: jerry gay <jerry.gay@gmail.com>, chromatic <chromatic@wgz.org>,
   perl6-internals@perl.org
Subject: Re: [perl #41569] t/distro/file_metadata.t fails on win32
References: <45F07EB8.3070107@rblasch.org>	 <CB5546FE-F0EA-4CD4-94D9-68D734DD46EF@coleda.com>	 <45F15A6B.3020104@rblasch.org> <200703091244.31943.chromatic@wgz.org>	 <8e8ee0d40706110643u1f720b6bs965dd2b343b728f4@mail.gmail.com>	 <1d9a3f400706110717p470b2fbehbed62d1fff0ab321@mail.gmail.com>	 <466D5BE5.5050505@rblasch.org>	 <8e8ee0d40706110754r16c12619s62ee2b7e415ed512@mail.gmail.com>	 <466D6B47.40206@rblasch.org> <8e8ee0d40706120642w6862ee37xd793bfc6f289f700@mail.gmail.com>
In-Reply-To: <8e8ee0d40706120642w6862ee37xd793bfc6f289f700@mail.gmail.com>
Content-Type: multipart/mixed;
 boundary="------------030304040504010101010707"
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

--------------030304040504010101010707
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Paul Cochrane wrote:
>> > But if we convert what MANIFEST provides (i.e. Unix directory
>> > separators) into whatever the current platform needs (i.e. what
>> > canonpath() does) then it should agree with whatever svn spits out.
>> > Or am I missing something?
>>
>> No, that's exactly what I think needs to be done.  In the patch
>> canonpath is used with the result of the svn execution only.  That's not
>> enough.  @manifest_files would need to be changed too, otherwise it
>> contains the file names with forward slashes from MANIFEST.  There's
>> also a regex $lf_files_regexp that seems to filter files, and the part
>> that uses it would need to be aware of the changed separator, too.
>>
>> > Essentially my patch is just a less fragile version of the patch you
>> > submitted to get this test to work on Windows.  (at least, I don't
>> > think I'm changing the functionality that much).
>>
>> I simple changed the backward slashes to forward slashes, thus forward
>> slashes everywhere.
> 
> Which was what *I* intended to do with my patch, but after staring at
> it long enough, I realised that's not what *it* was saying!  :-)
> Ooops.

Oh, I see.  Sorry I didn't get this right.

> I'd like to avoid converting the entire MANIFEST from Unix to Windows
> directory separators just so that we can have the hash we're
> generating in t/distro/file_metadata.t  has consistent keys;
> converting to explicitly Unix should be enough (and converting the
> whole MANIFEST would make the test even slower than it already is).
> Even more so considering that there is a ticket in RT trying to get
> rid of MANIFEST.  Anyway, attached is another patch, which hopefully
> does the right thing now.  If everyone's happy with the patch, I'll
> apply and commit it to trunk.
> 
> Ron, would it be ok if you could check the patch to see if it works on
> Win32?  Thanks heaps in advance.

There's one piece missing:  You'd need to splitdir/catdir $directories
too, otherwise it's left as-is.

I have attached a modified patch, and prove-ed it works with r18945 on
Win32.

Ron

--------------030304040504010101010707
Content-Type: text/plain;
 name="file_metadata.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="file_metadata.patch"

Index: t/distro/file_metadata.t
===================================================================
--- t/distro/file_metadata.t	(revision 18945)
+++ t/distro/file_metadata.t	(working copy)
@@ -8,7 +8,8 @@
 
 use Test::More;
 use File::Basename qw( fileparse );
-use File::Spec::Functions qw( catfile );
+use File::Spec::Functions qw( catfile splitpath splitdir );
+use File::Spec::Unix;
 use Parrot::Config;
 use Parrot::Revision;
 use ExtUtils::Manifest qw( maniread );
@@ -270,13 +271,22 @@
 
                 # This RE may be a little wonky.
                 if ( $result =~ m{(.*) - (.*)} ) {
-                    my ( $file, $attribute ) = ( $1, $2 );
+                    my ( $full_path, $attribute ) = ( $1, $2 );
 
-                    # file names are reported with backslashes on Windows,
-                    # but we want forward slashes
-                    $file =~ s!\\!/!g if $^O eq 'MSWin32';
+                    # split the path
+                    my ( $volume, $directories, $file ) = 
+                        splitpath $full_path;
+                    my @directories = splitdir $directories;
 
-                    $results{$file} = $attribute;
+                    # put it back together as a unix path (to match MANIFEST)
+                    $full_path = File::Spec::Unix->catpath( 
+                        $volume,
+                        File::Spec::Unix->catdir(@directories), 
+                        $file 
+                    );
+
+                    # store the attribute into the results hash
+                    $results{$full_path} = $attribute;
                 }
             }
 

--------------030304040504010101010707--

         

 EMesWluK