From beginners-return-92844-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 06:18:14 2007
Return-Path: <beginners-return-92844-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SAIDL9009001
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 06:18:14 -0400
Received: (qmail 28513 invoked by uid 514); 28 Jun 2007 10:18:05 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28471 invoked from network); 28 Jun 2007 10:18:05 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 10:18:05 -0000
Received: (qmail 24686 invoked by uid 225); 28 Jun 2007 10:18:04 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24663 invoked by alias); 28 Jun 2007 10:18:02 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from an-out-0708.google.com (HELO an-out-0708.google.com) (209.85.132.249)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 03:17:57 -0700
Received: by an-out-0708.google.com with SMTP id c25so92840ana
        for <beginners@perl.org>; Thu, 28 Jun 2007 03:17:52 -0700 (PDT)
Received: by 10.100.134.2 with SMTP id h2mr1036344and.1183025871903;
        Thu, 28 Jun 2007 03:17:51 -0700 (PDT)
Received: by 10.100.120.1 with HTTP; Thu, 28 Jun 2007 03:17:51 -0700 (PDT)
Message-ID: <848c3f360706280317u61424994r2a9d447d51ae7659@mail.gmail.com>
Date: Thu, 28 Jun 2007 13:17:51 +0300
From: "Amichai Teumim" <amichai@teumim.com>
To: beginners@perl.org
Subject: don't understand working script
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_31579_4969491.1183025871863"

------=_Part_31579_4969491.1183025871863
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I have this script, If you run it you can see how it nicely idents the
directories. I don't understand everything in this script. Please see my
comments.

#!/usr/bin/perl

$startdir = "/lib";

$level = 0;    #WHAT DOES THIS DO?

list_dirs($startdir,$level); #WHAT DOES THIS DO?

sub list_dirs(){
  my $dir  = shift (@_);  #WHAT DOES THIS DO?
  my $lev = shift (@_);   #WHAT DOES THIS DO?


  opendir(TOP,$dir);
  my @files = readdir(TOP);
  closedir(TOP);

  shift(@files);
  shift(@files);

  foreach $file (@files){
    if(-d "$dir/$file"){
        spaces($lev);   #WHAT DOES THIS DO?
        print "$file\n";
        list_dirs("$dir/$file",$lev+1); #WHAT DOES THIS DO?
    }
  }

}

#WHAT DOES THIS WHOLE SECTION DO?


sub spaces(){
my($num) = shift(@_);
for($i=0;$i<$num;$i++){
print " ";
}

}


Thanks

Amichai

------=_Part_31579_4969491.1183025871863--

   

w	Tq//mrb