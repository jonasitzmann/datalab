From perl6-all-return-81754-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 18:23:46 2007
Return-Path: <perl6-all-return-81754-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52MNkhB028661
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 18:23:46 -0400
Received: (qmail 20147 invoked by uid 514); 2 Jun 2007 22:23:39 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20142 invoked from network); 2 Jun 2007 22:23:39 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of dataweaver@gmail.com designates 64.233.162.239 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=ZYkA+cca/w8Z/s7O6xggZC2xLn6gIIfh1Cvf17u2rifubjolqQ1Drc5I4IXlYuLRuCbkhNlEPeRIv8vSj7ZwcBJV/4dGBhjJ0c/dcHH7s5ua9hOtq099WS17pGiiMwrjJdyJQgHUlDJlMfoYaoQ/7R+IjYqtCJmvFKY1bYCyvCU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=odSuRVFvwwVhLbHcoC2zuQrttSU79jvVG3NnZwzP58T5r5YRKFSef864jpJK5MCW1b/ckQi9VntqHkNfusL1/qWZMmQ4XWC6mIhPGe/aKCd0V0QQ96ckCfJjshgSG51dDdbZ7ZHwsVsa2YE+s3d+ABOhMe9AZqFZJNLQktczWGE=
Message-ID: <ef30550b0706021517m281093c3qcf1e12d99debc8b7@mail.gmail.com>
Date: Sat, 2 Jun 2007 15:17:16 -0700
From: "Jonathan Lang" <dataweaver@gmail.com>
To: p6l <perl6-language@perl.org>
Subject: 'x' vs. 'xx'
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Is there any reason why we can't simply define '$a x $n' as being
shorthand for 'cat($a xx $n)'?  In what way does the former differ
from the latter, other than the use of a Whatever in place of $n?

-- 
Jonathan "Dataweaver" Lang

             

;=LL
vNIt"�Tl