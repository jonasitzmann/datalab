From perl6-all-return-82465-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 22:36:36 2007
Return-Path: <perl6-all-return-82465-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5U2aZL9001638
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 22:36:35 -0400
Received: (qmail 6776 invoked by uid 514); 30 Jun 2007 02:36:30 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6771 invoked from network); 30 Jun 2007 02:36:29 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of jkeen@verizon.net designates 206.46.252.46 as permitted sender)
Date: Fri, 29 Jun 2007 22:35:24 -0400
From: James Keenan <jkeen@verizon.net>
Subject: Re: [perl #43342] [TODO] config/init/miniparrot.pm:  Write unit tests
In-reply-to: <rt-3.6.HEAD-1276-1183134515-1748.43342-74-0@perl.org>
To: parrotbug-followup@parrotcode.org
Message-id: <812B0290-0D30-4DED-A7F1-ADFD1C6F07B0@verizon.net>
MIME-version: 1.0 (Apple Message framework v752.2)
X-Mailer: Apple Mail (2.752.2)
Content-type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Content-transfer-encoding: 7bit
References: <RT-Ticket-43342@perl.org>
 <E1I1tkq-0000eI-A9@li11-226.members.linode.com>
 <rt-3.6.HEAD-1276-1183129034-1088.43342-15-0@perl.org>
 <4685330E.5040407@gmx.de>
 <rt-3.6.HEAD-1276-1183134515-1748.43342-74-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS


On Jun 29, 2007, at 12:28 PM, Bernhard Schmalhofer via RT wrote:

> James Keenan via RT schrieb:
>> There was code in several of the test files in the reconfigure/  
>> branch which was repeated.  At
>> the hackathon, David Adler refactored it into a subroutine which I  
>> then placed in new file
>> Auxiliary.pm.  That file is contained in this patch along with a  
>> revised t/104-init_miniparrot.t
>> and appropriate MANIFEST revisions.
>>
>> Please review.  Thank you very much.
>> kid51
>>
> Reducing code redundancy is good idea. My suggestion is to call the
> packaga something
> like Parrot::Test::Configure and accordingly move the file to
> lib/Parrot/Test/Configure.pm.
>

Okay.  Let's hold this patch for the time being.  In the reconfigure/  
branch we're working our way through 56 configuration steps and 56  
corresponding RT tickets.  Chances are good that we'll develop some  
additional subroutines for shortcuts in testing.  We'll see what  
develops as the best way to package these up, then submit a more  
refined module to trunk.

kid51

          

evkeoied�r<
