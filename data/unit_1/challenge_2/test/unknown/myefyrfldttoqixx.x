From beginners-return-92937-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 20:53:24 2007
Return-Path: <beginners-return-92937-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l620qgL9007214
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 20:53:21 -0400
Received: (qmail 25507 invoked by uid 514); 2 Jul 2007 00:52:22 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25494 invoked from network); 2 Jul 2007 00:52:22 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jul 2007 00:52:22 -0000
Received: (qmail 11182 invoked by uid 225); 2 Jul 2007 00:52:22 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11164 invoked by alias); 2 Jul 2007 00:52:21 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of anexpert@gmail.com designates 64.233.166.179 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.179)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 01 Jul 2007 17:52:17 -0700
Received: by py-out-1112.google.com with SMTP id a25so2511819pyi
        for <beginners@perl.org>; Sun, 01 Jul 2007 17:52:12 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=L18+U7uGT06N7beaSBmL7R9PO7QUeSLAMZKQOAOaXWNMs4KGkuJmoGYxJ3SgDfhFj6j8TCE4pn3ce0I6YNnNFsdiT049K7H1WqsTdU/PzAXrdt1Tn7G2rqrLl82rp77cbfjFzvBAQCJIRyAwlFffpqBrPCz1k5sar4QFivhp1Ao=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=CPO4dnuwvgqE6kZI8Svu/I0L1C/ckPXbX/GtOjmsTikhWHC3RPIk6Ao7fzT9IeIKa4rIoklvZggES7VvCtQSgDGviiPjk2Kx1Mp13cDIa9AH7/jrp9xk4jx4udz/0pta0EpSQMCuxoOWqp3f7gb0YGdArizuE+2VkbGPM6pvw4s=
Received: by 10.65.224.11 with SMTP id b11mr6100201qbr.1183337532496;
        Sun, 01 Jul 2007 17:52:12 -0700 (PDT)
Received: by 10.64.195.9 with HTTP; Sun, 1 Jul 2007 17:52:12 -0700 (PDT)
Message-ID: <ca5781c80707011752m78d3ee62kf7336e561406999d@mail.gmail.com>
Date: Sun, 1 Jul 2007 20:52:12 -0400
From: yitzle <yitzle@users.sourceforge.net>
Sender: anexpert@gmail.com
To: "Chas Owens" <chas.owens@gmail.com>
Subject: Re: Parsing a file within a jar file
Cc: "Ken Foskey" <foskey@optushome.com.au>, beginners@perl.org
In-Reply-To: <58ce48dc0706270639k6d6379e7mb05bb23aa59ae376@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <OF4B44FC7D.D643C52D-ON86257307.0047EBD5-86257307.00486FDE@notes.cat.com>
	 <1182950774.18269.6.camel@froddo.foskey.org.au>
	 <58ce48dc0706270639k6d6379e7mb05bb23aa59ae376@mail.gmail.com>
X-Google-Sender-Auth: f20b114979efef23

On 6/27/07, Chas Owens <chas.owens@gmail.com> wrote:
> On 6/27/07, Ken Foskey <foskey@optushome.com.au> wrote:
> > On Wed, 2007-06-27 at 08:11 -0500, Daniel W. Hurn wrote:
> > > Does anyone have any suggestion on how to examine/parse a file within a
> > > jar file?
> >
> > jar is a java file and I think it is simply a zipped file.
> snip
>
> I can confirm that all three levels of Java archives (jar, war, and
> ear) are just renamed zip files.  It looks like
> Archive::Zip::MemberRead* can give you transparent (to Perl) access to
> a file inside a zip file.

I'd just like to inject that I believe, while the .jar, .war (and
.ear? - never heard of that one) have the same format as .zip, they
have rules about what file(s)/directory structure must (or should?) be
obeyed. eg I think the .war required a WEB-INF folder with a .manifest
file

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

hw�oe