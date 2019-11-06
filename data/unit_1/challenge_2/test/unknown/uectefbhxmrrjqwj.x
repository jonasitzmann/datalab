From beginners-return-92437-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 14:03:14 2007
Return-Path: <beginners-return-92437-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EI3DL9024896
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 14:03:14 -0400
Received: (qmail 21715 invoked by uid 514); 14 Jun 2007 18:02:36 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 11765 invoked from network); 14 Jun 2007 15:16:02 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of olson.ray@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jun 14 15:15:46 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Ray <olson.ray@gmail.com>
Subject: Re: Iterate through a hashref using XML::Simple (real post)
Date: Thu, 14 Jun 2007 15:15:21 -0000
Organization: http://groups.google.com
Lines: 23
Message-ID: <1181834121.341288.205610@z28g2000prd.googlegroups.com>
References: <1181779885.793692.315010@n15g2000prd.googlegroups.com>
   <58ce48dc0706140626g600353abya4aa99bb65c7c846@mail.gmail.com>
NNTP-Posting-Host: 63.82.24.252
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181834121 17305 127.0.0.1 (14 Jun 2007 15:15:21 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 14 Jun 2007 15:15:21 +0000 (UTC)
In-Reply-To: <58ce48dc0706140626g600353abya4aa99bb65c7c846@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: z28g2000prd.googlegroups.com; posting-host=63.82.24.252;
   posting-account=9bFUcw0AAAAwGqtOZDSWnzKogeRqdDZL
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 14, 6:26 am, chas.ow...@gmail.com (Chas Owens) wrote:
>
> However, I bet you want to iterator over all of the contents of the
> RejectRecord key like this
>
> my $max = @{$ref->{RejectRecord}};
> for my $i (1 .. $max) {
>     print "record $i of $max failed because
> $ref->{RejectRecord}[$i-1]{Reason}\n";
>
>
>
> }- Hide quoted text -
>
> - Show quoted text -
Oh, one other thing.. What If I wanted to iterate over the "Code" tag
as well? Notice there is 2 Code tags that mean different things. One
is the Customer unique identifier ("LarryBoy") and the other is the
Reject Code ("1234"). I am interested in iterating through the
Customer Code.
Thanks again for your help!
Ray


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

cQ9.i<..F>ya