From beginners-return-92934-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 17:15:13 2007
Return-Path: <beginners-return-92934-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61LFCL9005379
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 17:15:13 -0400
Received: (qmail 22441 invoked by uid 514); 1 Jul 2007 21:15:05 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22432 invoked from network); 1 Jul 2007 21:15:04 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jul 2007 21:15:04 -0000
Received: (qmail 11020 invoked by uid 225); 1 Jul 2007 21:15:04 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11012 invoked by alias); 1 Jul 2007 21:15:03 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web58702.mail.re1.yahoo.com (HELO web58702.mail.re1.yahoo.com) (66.196.100.124)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sun, 01 Jul 2007 14:14:58 -0700
Received: (qmail 32330 invoked by uid 60001); 1 Jul 2007 21:14:53 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=XBcxcNybC8FhmVChVA9LUOMlr87YAcUnBILF1Yv0+SZ/M+EcOslPy7vLkskZeNbj8zwUAaD/lkZAs7+gNM8sx08yDg5kv2kyU30IiK99rkvdqOkGumcztMQdWJWx+OoEL3Znk9KXOHmf2zp+WNpPOTInxmZUPlqeKYG/iQrfgwc=;
X-YMail-OSG: 9aXaqG4VM1m_xT89BtHcu8vie0MWeU1bd5WodLkpv8619ELwMywRjbA6FzqEjkF_XTGtqUeYSe23x_ZM5I4EZRy8OPrpUrNQs38hsNW_zQsKjOKPklWu83lnX0FUA3KJZQFSiA--
Received: from [204.183.92.37] by web58702.mail.re1.yahoo.com via HTTP; Sun, 01 Jul 2007 14:14:53 PDT
Date: Sun, 1 Jul 2007 14:14:53 -0700 (PDT)
From: hOURS <h_ours@yahoo.com>
Subject: param
To: beginners@perl.org
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="0-1762672951-1183324493=:31993"
Content-Transfer-Encoding: 8bit
Message-ID: <688732.31993.qm@web58702.mail.re1.yahoo.com>

--0-1762672951-1183324493=:31993
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

    Hi all,
      I read of a perl function called param, which is part of the CGI.pm perl  library.  The first simple program I  wrote trying to use it didn't work though.   At first I thought the ISP hosting my site didn't provide this library,  but I was able to use other commands from it such as:
      print start_html;
      The book in which I read about param is 5 years old.  Could it have been discontinued in a modern  version of the library?  I tried perldoc -f param and got nothing.  I can't  figure out why my code (below) doesn't work.
  
  
      #!/usr/local/bin/perl
      use CGI ':standard';
      print "Content-type: text/html\n\n";
      $value = param('myvalue');
      print ("The value = $value");
  
  
      I input the value by typing the program�s url in my browser window and adding  ?myvalue=75.
      Thanks,
  Fred
  
      
       
---------------------------------
Get the free Yahoo! toolbar and rest assured with the added security of spyware protection. 
--0-1762672951-1183324493=:31993--



kloi e�aetau