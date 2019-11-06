From beginners-return-92732-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 21:48:12 2007
Return-Path: <beginners-return-92732-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P1mAL9019583
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 21:48:11 -0400
Received: (qmail 4845 invoked by uid 514); 25 Jun 2007 01:48:03 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 4835 invoked from network); 25 Jun 2007 01:48:02 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 25 Jun 2007 01:48:02 -0000
Received: (qmail 12608 invoked by uid 225); 25 Jun 2007 01:48:02 -0000
Delivered-To: beginners@perl.org
Received: (qmail 12597 invoked by alias); 25 Jun 2007 01:48:01 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of mickalo@frontiernet.net designates 66.133.183.227 as permitted sender)
Received: from mx10.roch.ny.frontiernet.net (HELO mx10.roch.ny.frontiernet.net) (66.133.183.227)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 18:47:52 -0700
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ao8CAK67fkZChban/2dsb2JhbAA
Received: from relay04.roc.ny.frontiernet.net ([66.133.182.167])
  by mx10.roch.ny.frontiernet.net with ESMTP; 25 Jun 2007 01:47:48 +0000
Received: from localhost (filter02.roch.ny.frontiernet.net [66.133.183.69])
	by relay04.roc.ny.frontiernet.net (Postfix) with ESMTP id E045FA10B0
	for <beginners@perl.org>; Mon, 25 Jun 2007 01:47:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new-2.4.2 at filter02.roch.ny.frontiernet.net
Received: from relay04.roc.ny.frontiernet.net ([66.133.182.167])
	by localhost (filter02.roch.ny.frontiernet.net [66.133.183.69]) (amavisd-new, port 10024)
	with LMTP id cYl6We6EaGKZ for <beginners@perl.org>;
	Mon, 25 Jun 2007 01:47:47 +0000 (UTC)
X-Trace: 53616c7465645f5f1d3a5ab9d1fd7cda6dde0fc0ea897245914687c68915dae97151d357ab031238e68f8dc08f45842a63603c81947fd8e2a138eaa719f565c29a74ce0110cb99fd0f52f5006f8ef49e76357b87b2d089f92e332889764c1d33
Received: from DGGTPQ11 (74-33-128-144.br2.fod.ia.frontiernet.net [74.33.128.144])
	by relay04.roc.ny.frontiernet.net (Postfix) with ESMTP id 7602EA1072
	for <beginners@perl.org>; Mon, 25 Jun 2007 01:47:37 +0000 (UTC)
Message-ID: <000d01c7b6ca$ce59f740$04fea8c0@DGGTPQ11>
Reply-To: "Mike Blezien" <mickalo@frontiernet.net>
From: "Mike Blezien" <mickalo@frontiernet.net>
To: "Perl List" <beginners@perl.org>
Subject: XML Parsing
Date: Sun, 24 Jun 2007 20:47:33 -0500
Organization: ThunderRain Internet Publishing
MIME-Version: 1.0
Content-Type: text/plain;
	format=flowed;
	charset="iso-8859-1";
	reply-type=original
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138

I need to parse a fairly large XML response file and would like some suggestions 
on which XML module would work the best. We've been using the XML::Simple 
module, but I don't think that's the right one for the job. Below is the XML 
file we need to parse. In particular getting the data from the elements within 
the <message></message>
Would the XML::Twig module work better for this ?? Any suggestion would be much 
appreciated.
===============================================================================
XML snip:
<messaging>
       <raiserisklevel>
        <message>Records exist which match your SSN and Last Name, but with a 
different first name</message>
       </raiserisklevel>
        <lowerrisklevel></lowerrisklevel>
         <informational>
          <message>There has been a recent increase in records that match the 
consumer"s SSN but where the name bears little or no resumblance to 
consumers</message>
          <message>There has been a recent increase in records which match your 
SSN and Last Name, but with a different first name</message>
         </informational>
      </messaging>

================================================================================
Entire XML file:
<?xml version="1.0" encoding="utf-8"?>
<EdentifyResponse>
 <responsetype>Success</responsetype>
 <code>0</code>
 <message>Service Request Processed.</message>
 <transactionid>f15fa75b-1982-4bb3-b9a0-891257c5aa4f</transactionid>
 <response>
  <idalertresponse>
   <candidateinformation>
    <firstname>Jerry</firstname>
    <middle />
    <lastname>Jone</lastname>
    <suffix /><ssn>***-**-4512</ssn>
    <DOB>1/1/0001</DOB>
    <address1 />
    <address2 />
    <city />
    <state />
    <zip />
    <recordlocator>DD-1000000510</recordlocator>
    <scandate>6/24/2007</scandate>
    <scanid>81273</scanid>
    <processedby>TotalPayroll</processedby>
    <nametype>u</nametype>
   </candidateinformation>
    <candidateresults>
     <candidateactivity>
      <messaging>
       <raiserisklevel>
        <message>Records exist which match your SSN and Last Name, but with a 
different first name</message>
       </raiserisklevel>
        <lowerrisklevel></lowerrisklevel>
         <informational>
          <message>There has been a recent increase in records that match the 
consumer"s SSN but where the name bears little or no resumblance to 
consumers</message>
          <message>There has been a recent increase in records which match your 
SSN and Last Name, but with a different first name</message>
         </informational>
      </messaging>
    </candidateactivity>
   </candidateresults>
  <resultssummary>
   <Other>
    <scandetail code = "SMO" count = "2" active = "12 yrs 10 mos " lastactive = 
"1 yrs 3 mos " rundate = "200706" />
   </Other>
   <Suspects>
    <scandetail code = "SU" count = "24" active = "24 yrs 8 mos " lastactive = 
"11 mos " rundate = "200706" />
   </Suspects>
  </resultssummary>
  <ScanDetails permissableuse="false">
    <scandetail>
     <riskgroup />
     <name />
     <ssn />
     <ssnvalid />
     <dob />
     <address />
     <sources>
     <source vendor="" type="" /></sources>
   </scandetail>
  </ScanDetails>
 </idalertresponse>
</response>
</EdentifyResponse>
---------------------------------------------------------------

Mike(mickalo)Blezien
===============================
Thunder Rain Internet Publishing
=============================== 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

e>eioaai=