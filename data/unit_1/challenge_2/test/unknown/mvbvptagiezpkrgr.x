From beginners-return-92837-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 04:47:48 2007
Return-Path: <beginners-return-92837-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5S8llL9008058
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 04:47:47 -0400
Received: (qmail 17729 invoked by uid 514); 28 Jun 2007 08:47:40 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 17720 invoked from network); 28 Jun 2007 08:47:39 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 08:47:39 -0000
Received: (qmail 8567 invoked by uid 225); 28 Jun 2007 08:47:38 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8475 invoked by alias); 28 Jun 2007 08:47:31 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web57113.mail.re3.yahoo.com (HELO web57113.mail.re3.yahoo.com) (216.252.111.126)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 28 Jun 2007 01:47:22 -0700
Received: (qmail 71456 invoked by uid 60001); 28 Jun 2007 08:47:16 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=sbGD+DqMljq1eCwItEzqVvwoprfiCxhzVeBsFVQB7SOuk9oG3Ai0o/LKNmI64f9Kh+zYBjFn4NonpfIULDa51SwmyVwgRG+lOU4whApDVCVLgBtC+GOfti8mCy1ZUjle+0Sf2eSm4SWEXpqoTSdwIVeXcfbuZ0GnMoQ3WGpWiMU=;
X-YMail-OSG: 8gM7_EgVM1kK64Q5qvpKocjx8dc_pea4T0GcgE9S26swqIwHn.3fh6V6pv1C0KNOuc7PzGjiEjpZgPgNxa7plMZtLWXcgpkYmw9Dg4Ul6gwbpUAv6DvMmpjPmdhwpY7r
Received: from [203.99.208.99] by web57113.mail.re3.yahoo.com via HTTP; Thu, 28 Jun 2007 01:47:16 PDT
Date: Thu, 28 Jun 2007 01:47:16 -0700 (PDT)
From: Prabu Ayyappan <prabu.ayyappan@yahoo.com>
Subject: Re: printing content of found file
To: Amichai Teumim <amichai@teumim.com>, beginners@perl.org
In-Reply-To: <848c3f360706280111o51d55df4idf647e079b27a87a@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-512515765-1183020436=:71095"
Content-Transfer-Encoding: 8bit
Message-ID: <902572.71095.qm@web57113.mail.re3.yahoo.com>

--0-512515765-1183020436=:71095
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi,
   
  Hope you can find your solution from the following two approaches
   
  Approach I
  #!/usr/bin/perl
  while (<*>) {
 if ($_ =~ /note/){
   open(FH, "$_");
   @fcontent = <FH>;
   print @fcontent;
   close(FH);
 }
}

   
  APPROACH II
   
  opendir(CURRENT,".");
@list = readdir(CURRENT);
closedir(CURRENT);
  foreach $item (@list){
   if($item =~ /note/){
 open(FILE,"$item");
 @file = <FILE>;
 print @file;
 close(FILE);
 }
}
   
  Thanks,
Prabu.M.A
  
@teumim.com> wrote:
  I'm trying to do the following:

I want to search for a specific file/s in my current dir and when it finds
it, print its contents. So I did the following:

#!/usr/bin/perl

opendir(CURRENT,".");
@list = readdir(CURRENT);
closedir(CURRENT);

foreach $item (@list){
if($item =~ /notes/){


open(FILE,"@item");
@file = ;
while(){ print };
close(FILE);

print "@file\n";
}
}

I keep getting the following error:

In string, @item now must be written as \@item at ./obj14-2.pl line 11, near
"@item"
Execution of ./obj14-2.pl aborted due to compilation errors.

So I changed the script:

#!/usr/bin/perl

opendir(CURRENT,".");
@list = readdir(CURRENT);
closedir(CURRENT);

foreach $item (@list){
if($item =~ /messages/){


open(FILE,"\@item"); #NOTE THE \
@file = ;
while(){ print };
close(FILE);

print "@file\n";
}
}

I don't get any output. The file for sure exists.

Any ideas on what I'm doing wrong?

Amichai


       
---------------------------------
Moody friends. Drama queens. Your life? Nope! - their life, your story.
 Play Sims Stories at Yahoo! Games. 
--0-512515765-1183020436=:71095--

    

kt7_kZa