From beginners-return-92880-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 05:08:37 2007
Return-Path: <beginners-return-92880-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5T98bL9023397
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 05:08:37 -0400
Received: (qmail 1727 invoked by uid 514); 29 Jun 2007 09:08:30 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 1718 invoked from network); 29 Jun 2007 09:08:30 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 09:08:30 -0000
Received: (qmail 30938 invoked by uid 225); 29 Jun 2007 09:08:29 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30926 invoked by alias); 29 Jun 2007 09:08:28 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tlloreti@gmail.com designates 64.233.162.236 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.236)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 02:08:24 -0700
Received: by nz-out-0506.google.com with SMTP id v1so79660nzb
        for <beginners@perl.org>; Fri, 29 Jun 2007 02:08:20 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
        b=mpeNXXtC9M+F2qHwtbZVerxWWtO+Ckz3JHIf5ekDFnbTpz7QvuPusv/9sfErr60hI+U3Sa3RD0Xr9q8moVvFeNcsAnlPaOyZgCjeHA8k+aGvcOfbmaMXgPwW91VcjdqRObgOdCjuNafORI9D2tMw3nHSx6pTnRjbVSDlwBbI7/Q=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type;
        b=D605Vv+PQ+dWWxEpyy2QCGARQGoDqjbV6+1lZ5xUt+2G81K540AMQB8QM2aZXhn3ObxEp6RDUrt/1WboiOu29iMMzwNET8EqOwLaRObDAojtjJYCR9/feprFTLNj/lGPAeR1TTeTGmU0DBVih4b1sOz3+npl3H9GTic3YVqDQjo=
Received: by 10.114.15.1 with SMTP id 1mr2446877wao.1183108100215;
        Fri, 29 Jun 2007 02:08:20 -0700 (PDT)
Received: by 10.114.110.6 with HTTP; Fri, 29 Jun 2007 02:08:19 -0700 (PDT)
Message-ID: <2f6912940706290208h207bd105hd3a5e8018a072fc8@mail.gmail.com>
Date: Fri, 29 Jun 2007 11:08:19 +0200
From: "Tatiana Lloret Iglesias" <tlloreti@gmail.com>
To: "Perl Beginners" <beginners@perl.org>
Subject: exit code
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_55573_15396995.1183108099738"

------=_Part_55573_15396995.1183108099738
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all,

when I execute my perl script in my local machine and I get to a controlled
error situation i've got as exit value 777

if(!$test){
    $failed_times =$failed_times +1;

    if($failed_times ==3)
    {
     exit(777);
    }
    sleep 15;
   }# if $test

but when i execute the same script with the same controlled error situation
I've got as exit value 9 which seems a generic error code

Any idea ?

Thanks!
T

------=_Part_55573_15396995.1183108099738--

      

 ZcMysc ild