From beginners-return-92858-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 10:54:20 2007
Return-Path: <beginners-return-92858-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SEsJL9012067
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:54:20 -0400
Received: (qmail 3608 invoked by uid 514); 28 Jun 2007 14:54:12 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3599 invoked from network); 28 Jun 2007 14:54:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 14:54:12 -0000
Received: (qmail 19985 invoked by uid 225); 28 Jun 2007 14:54:12 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19977 invoked by alias); 28 Jun 2007 14:54:11 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from an-out-0708.google.com (HELO an-out-0708.google.com) (209.85.132.241)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 07:54:07 -0700
Received: by an-out-0708.google.com with SMTP id c25so106857ana
        for <beginners@perl.org>; Thu, 28 Jun 2007 07:54:02 -0700 (PDT)
Received: by 10.100.106.5 with SMTP id e5mr1171892anc.1183042441880;
        Thu, 28 Jun 2007 07:54:01 -0700 (PDT)
Received: by 10.100.120.1 with HTTP; Thu, 28 Jun 2007 07:54:01 -0700 (PDT)
Message-ID: <848c3f360706280754h86d4ec4kb423735f3da9a574@mail.gmail.com>
Date: Thu, 28 Jun 2007 17:54:01 +0300
From: "Amichai Teumim" <amichai@teumim.com>
To: beginners@perl.org
Subject: missing curly - brain fried
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_34603_23545713.1183042441819"

------=_Part_34603_23545713.1183042441819
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Where is the open curly missing here?

#!/usr/bin/perl

@array = (5,3,2,1,4);


for ($i=0; $i<$n-1; $i++) {
(  for ($j=0; $j<$n-1-$i; $j++)


if ($array[$j+1] < $array[$j]) {  /* compare the two neighbors
*/
      $tmp = $array[$j];         /* swap $array[j] and $array[j+1]
  */
      $array[$j] = $array[$j+1];
      $array[$j+1] = $tmp;
  }
 }


foreach $elem (@array){
  print "$elem";
}

------=_Part_34603_23545713.1183042441819--



 Wyhl0 2