From beginners-return-93017-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 00:54:54 2007
Return-Path: <beginners-return-93017-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l644sqL9005821
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 00:54:53 -0400
Received: (qmail 22569 invoked by uid 514); 4 Jul 2007 04:54:43 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22555 invoked from network); 4 Jul 2007 04:54:43 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 04:54:43 -0000
Received: (qmail 22934 invoked by uid 225); 4 Jul 2007 04:54:42 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22918 invoked by alias); 4 Jul 2007 04:54:40 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web57102.mail.re3.yahoo.com (HELO web57102.mail.re3.yahoo.com) (216.252.111.115)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 03 Jul 2007 21:54:35 -0700
Received: (qmail 76609 invoked by uid 60001); 4 Jul 2007 04:54:31 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=nw97fG0hS/envd9o9wNFY/PhH4q8WEj8XRdVa20gxUY0F8fWHeX1IeGeVJVuuM7GonoskfZ1F5plwpSOaugrYvAmZ8bKz3e88esICiXgzajxnr9u1t1G6fdcLkYadNvCSRieHg717qMUwaTgNdT8CkUY1aZQWZi9b9mXxHzsblM=;
X-YMail-OSG: jgc3ExQVM1lAJuqqthwxw3Iq0qXHDmJN7ByPPFDuuJxnge0Hq2RR4awsF6TB02Wr8QUAkZKvcFHoQVrujMBtsCsyR_kuIHz_.gxH
Received: from [203.99.208.99] by web57102.mail.re3.yahoo.com via HTTP; Tue, 03 Jul 2007 21:54:30 PDT
Date: Tue, 3 Jul 2007 21:54:30 -0700 (PDT)
From: Prabu Ayyappan <prabu.ayyappan@yahoo.com>
Subject: Re: formatting a string
To: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>,
   "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCCD@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-53984573-1183524870=:76130"
Content-Transfer-Encoding: 8bit
Message-ID: <986673.76130.qm@web57102.mail.re3.yahoo.com>

--0-53984573-1183524870=:76130
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

A quick solution....May be you can enhance it more as you like..
   
  @discarr = ('/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/AN-DC (Win2003 Ent x64).vmx','/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/Disc 1.vmdk','/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent  x64)/Disc 2.vmdk');
  $replace = "REPLACESTRING";
  foreach $disc(@discarr){
  print "Before $disc \n";
  $disc =~ s/\/vmfs\/volumes\/(.*?)\//\/vmfs\/volumes\/$replace\//gi;
  print "After $disc \n";
}
   
  Hope this helps.
   
  Thanks,
  Prabu.M.A
"Joseph L. Casale" <JCasale@ActiveNetwerx.com> wrote:
  I have an array with the following data in it:

/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/AN-DC (Win2003 Ent x64).vmx
/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/Disc 1.vmdk
/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/Disc 2.vmdk

I always deal with indices' 1 through to the end in the function in question, so it's easy to get the second indices (First disc) and so on. I need to manipulate the path though now, I am wanting to search for *all* the text following the third "/" and before the fourth "/" and replace it with a string variable. So far, this is seeming to be way over my current capacity :)

Can anyone point me to the topic/method I should use so I may read up on build this myself?

Thanks!
jlc




 
---------------------------------
The fish are biting.
 Get more visitors on your site using Yahoo! Search Marketing.
--0-53984573-1183524870=:76130--

        

0F" eM0pmi