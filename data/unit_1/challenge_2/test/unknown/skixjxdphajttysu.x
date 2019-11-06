From beginners-return-93030-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 09:15:07 2007
Return-Path: <beginners-return-93030-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64DF6L9010888
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 09:15:06 -0400
Received: (qmail 8877 invoked by uid 514); 4 Jul 2007 13:14:57 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8868 invoked from network); 4 Jul 2007 13:14:56 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 13:14:56 -0000
Received: (qmail 8168 invoked by uid 225); 4 Jul 2007 13:14:56 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8162 invoked by alias); 4 Jul 2007 13:14:55 -0000
X-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from an-out-0708.google.com (HELO an-out-0708.google.com) (209.85.132.246)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 06:14:53 -0700
Received: by an-out-0708.google.com with SMTP id c25so425537ana
        for <beginners@perl.org>; Wed, 04 Jul 2007 06:14:47 -0700 (PDT)
Received: by 10.100.142.12 with SMTP id p12mr4816450and.1183554887790;
        Wed, 04 Jul 2007 06:14:47 -0700 (PDT)
Received: by 10.100.120.1 with HTTP; Wed, 4 Jul 2007 06:14:47 -0700 (PDT)
Message-ID: <848c3f360707040614wa002412g58c1fbaa841a5626@mail.gmail.com>
Date: Wed, 4 Jul 2007 16:14:47 +0300
From: "Amichai Teumim" <amichai@teumim.com>
To: beginners@perl.org
Subject: query about code
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_99812_27691912.1183554887754"

------=_Part_99812_27691912.1183554887754
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Can someone explain to me what this script really does? I mean I see that it
lists dir within dir. But what is the code doing? For example all the blue
highlighted stuff, what is it doing?

#!/usr/bin/perl

$startdir = "/lib";

$level = 0;

list_dirs($startdir,$level);

sub list_dirs(){
  my $dir  = shift (@_);
  my $lev = shift (@_);


  opendir(TOP,$dir);
  my @files = readdir(TOP);
  closedir(TOP);

  shift(@files);
  shift(@files);

  foreach $file (@files){
    if(-d "$dir/$file"){
        spaces($lev);
        print "$file\n";
        list_dirs("$dir/$file",$lev+1);
    }
  }

}

sub spaces(){
  my($num) = shift(@_);
  for($i=0;$i<$num;$i++){
    print " ";
  }
}

------=_Part_99812_27691912.1183554887754--

 

roUEcso