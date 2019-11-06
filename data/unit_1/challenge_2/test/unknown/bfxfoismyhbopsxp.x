From beginners-return-92720-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 11:54:29 2007
Return-Path: <beginners-return-92720-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5OFsSL9014294
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 11:54:28 -0400
Received: (qmail 26057 invoked by uid 514); 24 Jun 2007 15:54:21 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26048 invoked from network); 24 Jun 2007 15:54:21 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 24 Jun 2007 15:54:21 -0000
Received: (qmail 28598 invoked by uid 225); 24 Jun 2007 15:54:21 -0000
Delivered-To: beginners@perl.org
Received: (qmail 28584 invoked by alias); 24 Jun 2007 15:54:20 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.234 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.234)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 08:54:17 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1312523wxc
        for <beginners@perl.org>; Sun, 24 Jun 2007 08:54:13 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Yo7vN4DCVIy+0ZlxOzLOE/HbV7UpojLMybAfJnCc8foNgbliPJkEhFGgTQ4v0k1J0CXBcqc1pTuSj+PqNhPvWh2C5bY7PALMJzrql0Aep2+T44Y72rbjKzXbH8P+xxTYn/EaBPROo+Nw/6q21xzF10yMQ3vbaDv4SK2G+hV2/UM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=rhQSgESyyBJmIdSordbQ0dvovaLdaG7GZgRasVY4esil3f+m6RE59VTmfhdj7PtreIzPcs0+kwy99ORCQM2It8xURbIdrsmLkX8cYv6c55DYixBIozIHm9LC9SbyWaQhw0rhf4Rv6yZPuy7VPe4Hqq6lP1YkINRavJJthhGYXXA=
Received: by 10.90.27.13 with SMTP id a13mr3623789aga.1182700453726;
        Sun, 24 Jun 2007 08:54:13 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Sun, 24 Jun 2007 08:54:13 -0700 (PDT)
Message-ID: <31086b240706240854i29ecdaf7ke3b8c4939ee0c4b2@mail.gmail.com>
Date: Sun, 24 Jun 2007 08:54:13 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Mihir Kamdar" <kamdarmihir06@gmail.com>
Subject: Re: Help parsing a CSV file
Cc: beginners@perl.org
In-Reply-To: <15a372ce0706240730y70e65894pc545a2f68c61a3c@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <15a372ce0706240730y70e65894pc545a2f68c61a3c@mail.gmail.com>
X-Google-Sender-Auth: bfc5b3abda7047b2

On 6/24/07, Mihir Kamdar <kamdarmihir06@gmail.com> wrote:

> I have a csv file having 3rd field as phone number series. In that field,
> some of the records are phone number ranges like 097611/4
>
> Now I need to seperate this into 4 numbers and store them one after the
> other, like:-
>
> 097611
> 097612
> 097613
> 097614

I recommend writing a Perl program to do this processing. Perl is
excellent at text handling in general, and there are many modules on
CPAN to help with the thornier tasks. Have you tried Perl yet? How far
have you gotten? Where are you stuck?

Cheers!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

lE6Qwe
4ad he4 