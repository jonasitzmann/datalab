From beginners-return-92593-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 13:07:40 2007
Return-Path: <beginners-return-92593-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KH7eL9012704
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 13:07:40 -0400
Received: (qmail 15238 invoked by uid 514); 20 Jun 2007 17:07:31 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15229 invoked from network); 20 Jun 2007 17:07:31 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 17:07:31 -0000
Received: (qmail 10067 invoked by uid 225); 20 Jun 2007 17:07:31 -0000
Delivered-To: beginners@perl.org
Received: (qmail 10055 invoked by alias); 20 Jun 2007 17:07:30 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web57104.mail.re3.yahoo.com (HELO web57104.mail.re3.yahoo.com) (216.252.111.117)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 20 Jun 2007 10:07:21 -0700
Received: (qmail 48080 invoked by uid 60001); 20 Jun 2007 17:07:17 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=tmjlS+FYIdKTiCSB0TqUPcw0EkH/ry7RUf6bBym4kLmNP1u/7Tnl6vCWigQ4N2S6InBMfxk2f34XHFmzs5G8a6MkH4ggSiYzKAykeRb1cHSAOpavfeNicqn5SkQxb57/7J1JQpe46p/YkeUi0CVHF3rzR7VOr9MSfknov8paRzI=;
X-YMail-OSG: xEKdAqoVM1ndpLlZK.TwLbGv...ogMHiO3OJ3HxSBfNFTq8mlUZgyKiCWFUAi0avGWqtZjKymd2ZxSN4YOM7wZMIUetCbEy2vXAr14wkv3oz1fTK7zHDLh9jH1WE1IEl
Received: from [203.99.208.99] by web57104.mail.re3.yahoo.com via HTTP; Wed, 20 Jun 2007 10:07:17 PDT
Date: Wed, 20 Jun 2007 10:07:17 -0700 (PDT)
From: Prabu Ayyappan <prabu.ayyappan@yahoo.com>
Subject: Re: Problems with arrays
To: "gerlenkamp@googlemail.com" <gerlenkamp@googlemail.com>,
   beginners@perl.org
In-Reply-To: <1182340431.973336.297860@n2g2000hse.googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-1780867739-1182359237=:48048"
Content-Transfer-Encoding: 8bit
Message-ID: <530950.48048.qm@web57104.mail.re3.yahoo.com>

--0-1780867739-1182359237=:48048
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi,
   
  Hope this is what you are expecting.
   
  #!/usr/bin/perl -w
  ($old_header,$old_atoms,$old_bonds) = mol2_read('prabu');
print "@{$old_header} \n @{$old_atoms} \n @{$old_bonds}";
sub mol2_read {
    @mol2_header = ('prabu1','prabu12');
    @mol2_atoms = ('prabu2');
    @mol2_bonds = ('prabu3');
    return (\@mol2_header,\@mol2_atoms,\@mol2_bonds);
}
  
Pr@bu
"gerlenkamp@googlemail.com" <gerlenkamp@googlemail.com> wrote:
  Hi everybody,

I got a problem with handling sub-routines and arrays.

Here is an example of the code:

#!/usr/bin/perl -w

(@old_header,@old_atoms,@old_bonds) = mol2_read($opts{m});

sub mol2_read {
return (\@mol2_header,\@mol2_atoms,\@mol2_bonds);
}

Ok, now the problem:
If I want to print the elements of the arrays @old_header, @old_atoms
and @old_bonds i see, that all arrays, that come from the sub
mol2_read are stored in only one array; in @old_header.

I want to know, how it would be possible to store every @mol-array in
the right @old-array?

Thanks for your help

Best regards

German


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/






 
---------------------------------
Food fight? Enjoy some healthy debate
in the Yahoo! Answers Food & Drink Q&A.
--0-1780867739-1182359237=:48048--

             

.ty>Cj  il>v-t 