From beginners-return-92734-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 23:29:41 2007
Return-Path: <beginners-return-92734-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P3TeL9020418
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 23:29:41 -0400
Received: (qmail 25034 invoked by uid 514); 25 Jun 2007 03:29:33 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25025 invoked from network); 25 Jun 2007 03:29:33 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 25 Jun 2007 03:29:33 -0000
Received: (qmail 22457 invoked by uid 225); 25 Jun 2007 03:29:33 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22443 invoked by alias); 25 Jun 2007 03:29:32 -0000
X-Spam-Status: No, hits=1.4 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_BADTAG_40_50,HTML_MESSAGE,HTML_NONELEMENT_80_90,RCVD_IN_CBL,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web57112.mail.re3.yahoo.com (HELO web57112.mail.re3.yahoo.com) (216.252.111.125)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sun, 24 Jun 2007 20:29:23 -0700
Received: (qmail 80909 invoked by uid 60001); 25 Jun 2007 03:29:19 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=AtHReLNC6IiLxXWNnX/EI3YfRb3sQ9Y5wcMVWOYsvDtZcEuBMui4Bkia3f7DkiVlFf6vKnlqhiDIpbJprsjFgWcoOKw4aVXcYlnsGETd6B+KwQMOr/DvFwSiok4nl/fmJqAmPzhFI/X55C4cvqqfZ74V8TjDXRFg88riCzyMxaU=;
X-YMail-OSG: hv7T8UwVM1nLZLq4lfY8BoqQ_up650vxDHsngnDVXZyWsjVdZWte.YlnAz.B95lkXUw65lPKHkeU9nVKTxDFYpGZh6sleH9zpeGtbP.MR5R1p47g5qJ2qXOD6wYfo0tX
Received: from [122.169.144.210] by web57112.mail.re3.yahoo.com via HTTP; Sun, 24 Jun 2007 20:29:19 PDT
Date: Sun, 24 Jun 2007 20:29:19 -0700 (PDT)
From: Prabu Ayyappan <prabu.ayyappan@yahoo.com>
Subject: Re: XML Parsing
To: Mike Blezien <mickalo@frontiernet.net>, Perl List <beginners@perl.org>
In-Reply-To: <000d01c7b6ca$ce59f740$04fea8c0@DGGTPQ11>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-566132696-1182742159=:80894"
Content-Transfer-Encoding: 8bit
Message-ID: <78708.80894.qm@web57112.mail.re3.yahoo.com>
X-Virus-Checked: Checked

--0-566132696-1182742159=:80894
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi,

Have you tried XML::XPath for this one.It may help you.

Thnx and Rgds,
Pr@bu

Mike Blezien <mickalo@frontiernet.net> wrote: I need to parse a fairly large XML response file and would like some suggestions 
on which XML module would work the best. We've been using the XML::Simple 
module, but I don't think that's the right one for the job. Below is the XML 
file we need to parse. In particular getting the data from the elements within 
the 
Would the XML::Twig module work better for this ?? Any suggestion would be much 
appreciated.
===============================================================================
XML snip:

       
        Records exist which match your SSN and Last Name, but with a 
different first name
       
        
         
          There has been a recent increase in records that match the 
consumer"s SSN but where the name bears little or no resumblance to 
consumers
          There has been a recent increase in records which match your 
SSN and Last Name, but with a different first name
         
      

================================================================================
Entire XML file:


 Success
 0
 Service Request Processed.
 f15fa75b-1982-4bb3-b9a0-891257c5aa4f
 
  
   
    Jerry
    
    Jone
    ***-**-4512
    1/1/0001
    
    
    
    
    
    DD-1000000510
    6/24/2007
    81273
    
TotalPayroll

    u
   
    
     
      
       
        Records exist which match your SSN and Last Name, but with a 
different first name
       
        
         
          There has been a recent increase in records that match the 
consumer"s SSN but where the name bears little or no resumblance to 
consumers
          There has been a recent increase in records which match your 
SSN and Last Name, but with a different first name
         
      
    
   
  
   
    "1 yrs 3 mos " rundate = "200706" />
   
   
    "11 mos " rundate = "200706" />
   
  
  
    
     
     
     
     
     
     
     
     
   
  
 


---------------------------------------------------------------

Mike(mickalo)Blezien
===============================
Thunder Rain Internet Publishing
=============================== 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




       
---------------------------------
Shape Yahoo! in your own image.  Join our Network Research Panel today!
--0-566132696-1182742159=:80894--

               

Y2e:idrs