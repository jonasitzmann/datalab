From beginners-return-92444-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 20:54:18 2007
Return-Path: <beginners-return-92444-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F0sHL9028092
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 20:54:17 -0400
Received: (qmail 13413 invoked by uid 514); 15 Jun 2007 00:54:12 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13404 invoked from network); 15 Jun 2007 00:54:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 00:54:12 -0000
Received: (qmail 1500 invoked by uid 225); 15 Jun 2007 00:54:12 -0000
Delivered-To: beginners@perl.org
Received: (qmail 1493 invoked by alias); 15 Jun 2007 00:54:11 -0000
X-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.233 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.233)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 17:54:09 -0700
Received: by nz-out-0506.google.com with SMTP id x7so791604nzc
        for <beginners@perl.org>; Thu, 14 Jun 2007 17:54:05 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=WYI6zcNRwHnChBPLnURjetKgcFaIXssJX+5BqfzvCFJw8BgwEzYezjKN4kMoAt+5tVGGiiHJotBSg0IvlaaV3sWfp+JDKoH0KlcXXKs3pnjwZ3uKrm8qAtPDC7WTZKRX7/753wayjlcamENR4iJJWFQTYroZkfzhsZN5mMAUTb8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ZGWm1TEBKIx5IichatYV0IBIiP6W19APpqo2ezhYePoebg+1KU978v4MotGiHk5gmNeqHDt2i7bPTNKVMGkkQ5vOAKy2Hp4cBCZin08KMbKt6sxv2wmIAvJxVYkpM46PlozXSc9YveVDPt76+PDu+ar/m9Bb+zyATUf0lfb+ZHk=
Received: by 10.115.54.1 with SMTP id g1mr2372320wak.1181868844252;
        Thu, 14 Jun 2007 17:54:04 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Thu, 14 Jun 2007 17:54:04 -0700 (PDT)
Message-ID: <58ce48dc0706141754v430705e2j9b93fb494782d114@mail.gmail.com>
Date: Thu, 14 Jun 2007 20:54:04 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: Mathew <theillien@yahoo.com>
Subject: Re: Hash Key is a Null Value
Cc: "Perl Beginners" <beginners@perl.org>
In-Reply-To: <467134B9.1020702@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <467118A4.4080809@yahoo.com>
	 <58ce48dc0706140522t2b30c916pcc0fe5d83c3506e4@mail.gmail.com>
	 <467134B9.1020702@yahoo.com>

On 6/14/07, Mathew <theillien@yahoo.com> wrote:
> The purpose of getting the data in the first place is to allow my boss
> to see that people are still not doing things they are supposed to.  He
> can then send out reminders so we can establish better habits.  My plan
> is to replace the null value with a description making it obvious that
> the value had not been set instead of just leaving a big ugly blank spot.
>
> Keep up with my goings on at http://theillien.blogspot.com

In that case you may want to either not use that field for the key to
the hash or use nvl (or its equivalent in your RDBMS) to replace the
null with a unique value (something like nvl(column, "not set " ||
rowid)).  Also, if all you want to do is show your boss that people
are not doing their jobs you can simply run

select updated_by, last_updated, count(*)
from tablename
where field_that_should_not_be_null is null
group by updated_by, last_updated
order by last_updated, updated_by;

Or better yet, modify the schema to make that column not nullable
(which it should be if null is not a valid value).

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

beEmmktrw(/vad 