From beginners-return-92855-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 09:48:54 2007
Return-Path: <beginners-return-92855-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SDmrL9011324
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:48:53 -0400
Received: (qmail 13571 invoked by uid 514); 28 Jun 2007 13:48:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13562 invoked from network); 28 Jun 2007 13:48:45 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 13:48:45 -0000
Received: (qmail 15175 invoked by uid 225); 28 Jun 2007 13:48:44 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15157 invoked by alias); 28 Jun 2007 13:48:42 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web53209.mail.re2.yahoo.com (HELO web53209.mail.re2.yahoo.com) (206.190.49.79)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 28 Jun 2007 06:48:34 -0700
Received: (qmail 93601 invoked by uid 60001); 28 Jun 2007 13:48:26 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:MIME-Version:Content-Type:Message-ID;
  b=OJBDcw9uD4dHP0Jn/8oGmXgbkjZ/6FWGEgRibvurWecTQrruyb7ZPdiSfKHK8ARSLQNF8pzIjiSOCy1nk81mYSmU5OZTf6wBlytvl1DGJP/9yyBU8rjzb08XW76SATLvo8nB374EH9vh8Adf880u5ZfArYiWGwje9ee6Ff8za70=;
X-YMail-OSG: fDeyvvMVM1mZi4xnvKn_jdLx47DeMa9BBfdGZf64SFwtzGu3vc6tBfebH.a0PLjcIng94QMTScnmq4ll8sHS5AiyQj0iHxT_cRDX
Received: from [217.140.104.20] by web53209.mail.re2.yahoo.com via HTTP; Thu, 28 Jun 2007 06:48:25 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Thu, 28 Jun 2007 06:48:25 -0700 (PDT)
From: alok nath <aloknathlight@yahoo.com>
Subject: Re: parsing a line
To: Chas Owens <chas.owens@gmail.com>
Cc: beginners@perl.org
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-727823427-1183038505=:87377"
Message-ID: <952759.87377.qm@web53209.mail.re2.yahoo.com>

--0-727823427-1183038505=:87377
Content-Type: text/plain; charset=ascii

Hi,
    So I tried something like this .It works !

if( $_ =~ m/ID\s=\s"(.*?)"\sDirAbsolute/){
    print " Test ID is $1 \n" ;
   }else{
    print " FAILED to locate Test ID \n" ;
   }

  May be its crude way.

Thanks
Alok.
----- Original Message ----
From: Chas Owens <chas.owens@gmail.com>
To: alok nath <aloknathlight@yahoo.com>
Cc: beginners@perl.org
Sent: Thursday, June 28, 2007 6:38:09 PM
Subject: Re: parsing a line


On 6/28/07, alok nath <aloknathlight@yahoo.com> wrote:
> Hi,
>  I am parsing a file which has lines like this.
>  <Test Description = "Test 1" ID = "ID A1" DirAbsolute = "C:/perl"/>
>  Got stuck up while trying to extract values of fields called
>  Description, ID ?

What have you tried?


       
____________________________________________________________________________________Ready for the edge of your seat? 
Check out tonight's top picks on Yahoo! TV. 
http://tv.yahoo.com/
--0-727823427-1183038505=:87377--

              

oeE
J