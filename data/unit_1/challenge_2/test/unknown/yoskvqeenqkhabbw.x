From beginners-return-93035-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 09:35:40 2007
Return-Path: <beginners-return-93035-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64DZdL9011107
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 09:35:39 -0400
Received: (qmail 22781 invoked by uid 514); 4 Jul 2007 13:35:28 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22772 invoked from network); 4 Jul 2007 13:35:28 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 13:35:28 -0000
Received: (qmail 18818 invoked by uid 225); 4 Jul 2007 13:35:27 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18810 invoked by alias); 4 Jul 2007 13:35:26 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h206.core.ignum.cz (HELO h206.core.ignum.cz) (217.31.49.206)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 06:35:19 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id 30E6A628237
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:34:59 +0200 (CEST)
Received: from kombajn.core.ignum.cz (kombajn.local.ignum.cz [192.168.1.25])
	by hroch.core.ignum.cz (Postfix) with ESMTP id 0EF7962822C
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:34:59 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by kombajn.core.ignum.cz (Postfix) with ESMTP id 0996437BFC1
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:35:11 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: beginners@perl.org
Date: Wed, 04 Jul 2007 15:35:13 +0200
MIME-Version: 1.0
Subject: Re: query about code
Message-ID: <468BBE31.22657.292DDDC6@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <848c3f360707040614wa002412g58c1fbaa841a5626@mail.gmail.com>
References: <848c3f360707040614wa002412g58c1fbaa841a5626@mail.gmail.com>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

From: "Amichai Teumim" <amichai@teumim.com>

> Can someone explain to me what this script really does? I mean I see that it
> lists dir within dir. But what is the code doing? For example all the blue
> highlighted stuff, what is it doing?

There is no highlighting in a plain text email!
 
> #!/usr/bin/perl

missing

	use strict;
	use warnings;

> $startdir = "/lib";
> $level = 0;

Should be

 	my $startdir = "/lib";
	my $level = 0;

> list_dirs($startdir,$level);
> 
> sub list_dirs(){
>   my $dir  = shift (@_);
>   my $lev = shift (@_);

Would be better written  

   my ( $dir, $lev) = @_;
 
>   opendir(TOP,$dir);
>   my @files = readdir(TOP);
>   closedir(TOP);
> 
>   shift(@files);
>   shift(@files);

Here it removes the '.' and '..' "directories" from the list.

>   foreach $file (@files){

    foreach my $file (@files){

Without the "my", you are reusing the global variable $file, that all 
the instances of the list_dirs() subroutine that you call recursively 
to traverse the filesystem share the same variable. In this case it 
doesn't cause a visible error since the recursive call is the last 
thing you do in the loop, but still you should be careful with this! 
Unless you really really need to use a global you should declare all 
your variables with "my". Especially within recursive subroutines.

>     if(-d "$dir/$file"){

"if $dir/$file is a directory"

>         spaces($lev);

prints the $lev spaces. Could be written as

	print ' ' x $lev;

>         print "$file\n";
>         list_dirs("$dir/$file",$lev+1);
>     }
>   }
> 
> }

The script traverses the filesystem, starting in /lib and prints all 
directories and subdirectories and subsubdirectories etc.

Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

 n,tr:xwdLt