From beginners-return-92696-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 08:08:27 2007
Return-Path: <beginners-return-92696-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5NC8OL9018552
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 08:08:25 -0400
Received: (qmail 27879 invoked by uid 514); 23 Jun 2007 12:08:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 27870 invoked from network); 23 Jun 2007 12:08:18 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 23 Jun 2007 12:08:18 -0000
Received: (qmail 24682 invoked by uid 225); 23 Jun 2007 12:08:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24670 invoked by alias); 23 Jun 2007 12:08:17 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-junco.atl.sa.earthlink.net (HELO elasmtp-junco.atl.sa.earthlink.net) (209.86.89.63)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 23 Jun 2007 05:08:14 -0700
Received: from [63.26.83.68] (helo=[63.26.83.68])
	by elasmtp-junco.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I24PS-0001Wp-29
	for beginners@perl.org; Sat, 23 Jun 2007 08:08:10 -0400
Message-ID: <467D0BF7.7060507@earthlink.net>
Date: Sat, 23 Jun 2007 07:03:03 -0500
From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070221)
MIME-Version: 1.0
To: Beginners List <beginners@perl.org>
Subject: Re: nevermind
References: <467CD1CF.8070300@yahoo.com> <467CD762.3030405@yahoo.com> <467CE84B.9090803@earthlink.net>
In-Reply-To: <467CE84B.9090803@earthlink.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-ELNK-Trace: 5d730262a02eef364886dd14879fb8dbda7403c53f5cc7e274bf435c0eb9d478eee15ddb228a014a9816e097a6a81ef4218191bc31cc3b36350badd9bab72f9c
X-Originating-IP: 63.26.83.68

On 06/23/2007 04:30 AM, Mumia W. wrote:
> [...]
> You also could have written it this way:
> 
> open AUTHFILE, "</home/customercare/authorized_users.txt"
>   or die "Can't open file: $!";
> @email_list = grep !/^#/, <AUTHFILE>;

chomp @email_list;

> close AUTHFILE;
> 

:-)



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

mc.Gx