From beginners-return-92684-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:55:13 2007
Return-Path: <beginners-return-92684-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMtCL9010277
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:55:12 -0400
Received: (qmail 16810 invoked by uid 514); 22 Jun 2007 22:55:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16801 invoked from network); 22 Jun 2007 22:55:05 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 22:55:05 -0000
Received: (qmail 30069 invoked by uid 225); 22 Jun 2007 22:55:05 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30056 invoked by alias); 22 Jun 2007 22:55:03 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-dupuy.atl.sa.earthlink.net (HELO elasmtp-dupuy.atl.sa.earthlink.net) (209.86.89.62)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 15:55:01 -0700
Received: from [63.26.67.210] (helo=[63.26.67.210])
	by elasmtp-dupuy.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I1s1o-0003h3-NO
	for beginners@perl.org; Fri, 22 Jun 2007 18:54:57 -0400
Message-ID: <467C438C.8030009@earthlink.net>
Date: Fri, 22 Jun 2007 16:47:56 -0500
From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070221)
MIME-Version: 1.0
To: Beginners List <beginners@perl.org>
Subject: Re: Uninstalling a PERL module
References: <882559.44783.qm@web60124.mail.yahoo.com>
In-Reply-To: <882559.44783.qm@web60124.mail.yahoo.com>
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-ELNK-Trace: 5d730262a02eef364886dd14879fb8dbda7403c53f5cc7e274bf435c0eb9d478eee15ddb228a014a82f0c677b64a490177aba92e32b6905f350badd9bab72f9c
X-Originating-IP: 63.26.67.210

On 06/22/2007 03:46 PM, a_arya2000 wrote:
> Hello, does anyone know what is the most effective way
> of uninstalling perl module? Thank you.
> 

As you know, going into the build directory for a module and executing 
"make uninstall" doesn't yet work for CPAN-installed modules :-)

For most modules, there is a .packlist file that lists all of the files 
that were installed by that module. Delete every file listed in the 
.packlist, then delete the .packlist file itself, and you've uninstalled 
the module.



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




nl:r 0q