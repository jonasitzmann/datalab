From beginners-return-93121-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jul  6 01:49:00 2007
Return-Path: <beginners-return-93121-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l665mxL9003555
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 01:48:59 -0400
Received: (qmail 6822 invoked by uid 514); 6 Jul 2007 05:48:50 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 13268 invoked from network); 6 Jul 2007 04:01:34 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of olson.ray@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jul 06 04:01:20 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.133.4.7 is neither permitted nor denied by domain of news@google.com)
From: Ray <olson.ray@gmail.com>
Subject: Re: GetOptions with dynamic set of options
Date: Fri, 06 Jul 2007 04:01:08 -0000
Organization: http://groups.google.com
Lines: 30
Message-ID: <1183694468.455444.139450@d30g2000prg.googlegroups.com>
References: <1183669511.510741.136410@z28g2000prd.googlegroups.com>
   <31086b240707051741x3169887ag6d63672230bc48b@mail.gmail.com>
NNTP-Posting-Host: 63.82.24.252
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1183694469 28679 127.0.0.1 (6 Jul 2007 04:01:09 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 6 Jul 2007 04:01:09 +0000 (UTC)
In-Reply-To: <31086b240707051741x3169887ag6d63672230bc48b@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: d30g2000prg.googlegroups.com; posting-host=63.82.24.252;
   posting-account=9bFUcw0AAAAwGqtOZDSWnzKogeRqdDZL
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jul 5, 5:41 pm, t...@stonehenge.com (Tom Phoenix) wrote:

> If that's the feature you're trying to use, why are you trying to use
> it like that? It seems to want a reference to a hash and a string, but
> you give it a hash? Try giving it a reference to a hash and a string,
> maybe something like this:
>
>     GetOptions($target_hash_ref, "$item_name=$letter") or ...
>
> Hope this helps!

I think I should have explained my code. I want to try to construct
the arguments for GetOptions, but in a dynamic way. So, instead of
hard-coding my switches, like this:
GetOptions (
       showlog       => \$MyArgs{showlog},
       'strategy=s'  => \$MyArgs{strategy}
)

like is shown in the GetOptions documentation page, I would like to
feed the list based upon some arrays (@GlobalSwitches, @LocalSwitches,
and @OptionList). I like using the %MyArgs{option} approach because
then I wouldn't have to declare a variable for each option I may have.
Having said that.. I'm not sure how I could do as you suggest.. How
would I set $target_hash_ref to support say the "showlog" switch, and
the "strategy" option? Would I be able to refer to each option such as
$target_hash_ref{showlog}, or $target_hash_ref{strategy} ?
Thanks alot for your help
Ray


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

2nnb  nif�U