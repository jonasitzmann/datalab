From beginners-return-92451-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 23:58:15 2007
Return-Path: <beginners-return-92451-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F3wEL9029316
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 23:58:14 -0400
Received: (qmail 28302 invoked by uid 514); 15 Jun 2007 03:58:09 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28293 invoked from network); 15 Jun 2007 03:58:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 03:58:09 -0000
Received: (qmail 13675 invoked by uid 225); 15 Jun 2007 03:58:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13671 invoked by alias); 15 Jun 2007 03:58:08 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web57102.mail.re3.yahoo.com (HELO web57102.mail.re3.yahoo.com) (216.252.111.115)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 14 Jun 2007 20:58:02 -0700
Received: (qmail 58769 invoked by uid 60001); 15 Jun 2007 03:57:58 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=OThAA2EeQQ03OmoNj8gzksb5ciu0k/YCqRKxI6BcWEkfpd/X/KTFtZbNh+FQnWitk6nVQ+z/4Ild0curn4chlXMpL9HchMaOswnL5JERIQ5tQ3LKZ1copFFUtYXmnZr9GI3mJqKwCTAAUTqnecqIc816oWj2+7ETzy8S0E51W/Q=;
X-YMail-OSG: cR3IPdkVM1kMvJz9pwMLFYcum7MM6.PJNg82CIn2q0C1_D8z62Ddq6SsnSb9r.bbToHZcPW7I1Rmpmz7adD5.V_YuLFxsvuIapUh
Received: from [122.169.143.12] by web57102.mail.re3.yahoo.com via HTTP; Thu, 14 Jun 2007 20:57:58 PDT
Date: Thu, 14 Jun 2007 20:57:58 -0700 (PDT)
From: Prabu Ayyappan <prabu.ayyappan@yahoo.com>
Subject: Re: Polyline
To: Geetha <geethanw@iis.u-tokyo.ac.jp>, beginners@perl.org
In-Reply-To: <000601c7aef9$f4a60840$b19f529d@xpst600>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-642126139-1181879878=:57626"
Content-Transfer-Encoding: 8bit
Message-ID: <73843.57626.qm@web57102.mail.re3.yahoo.com>

--0-642126139-1181879878=:57626
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi,
 
 The GD module may not be installed properly.
 
 if you are using active perl then did you install the module via ppm:
 C:\> ppm
 ppm> install GD
 
 
 if you didn't use activestate, then using cygwin.
 perl -MCPAN -e 'install GD"
 
 
 if you are get installed the module in some other path then if you want to use that
 path then you can very well use the following
 use lib "my/path/to/modules";
 use GD;

 
 Hope this help.
 
 Regards,
 Pr@bu


Geetha <geethanw@iis.u-tokyo.ac.jp> wrote: Dear all,

 

I installed GD::Graph module. I followed following method.

 

cpan> install GD::Graph

 

Then I got the following messages:


CPAN: Storable loaded ok
Going to read /root/.cpan/Metadata
  Database was generated on ..
GD::Graph is up to date.

But when I tried using this module, it returned some error messages:

Can't locate GD.pm in @INC <@INC contains: c: /perl/site/lib .>  
BEGIN failed--compilation aborted at  ..( file name and path)
Compilation failed in require at -e line 1.
BEGIN failed--compilation aborted at -e line 1.

Is there something wrong in this module? How can I solve this problem?


Best wishes,

 

Geetha



       
---------------------------------
Moody friends. Drama queens. Your life? Nope! - their life, your story.
 Play Sims Stories at Yahoo! Games. 
--0-642126139-1181879878=:57626--

                

-  yAs