From beginners-return-92811-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 14:29:39 2007
Return-Path: <beginners-return-92811-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RITcL9030620
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 14:29:38 -0400
Received: (qmail 9049 invoked by uid 514); 27 Jun 2007 18:29:30 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9040 invoked from network); 27 Jun 2007 18:29:30 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 18:29:30 -0000
Received: (qmail 31923 invoked by uid 225); 27 Jun 2007 18:29:29 -0000
Delivered-To: beginners@perl.org
Received: (qmail 31910 invoked by alias); 27 Jun 2007 18:29:29 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of daggerquill@gmail.com designates 64.233.166.177 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.177)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 11:29:20 -0700
Received: by py-out-1112.google.com with SMTP id a25so570964pyi
        for <beginners@perl.org>; Wed, 27 Jun 2007 11:29:15 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=F93RuQh7KMu0gU+Y0EfCnl3tFPMKkByMCcU3EpibzL5LnW6bIJBwNydP5/cmcEsG+lXU6xWhhOAEPmyVqe+EA2Wq4axUbjArWWWgdDZTeTIg51yUHAwhiAaDfBJZS5m1mTBO4pWAOwowbPtxpM9ELlj2Kh3cGVYV/GERPsEpdkI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gDP90UlQb929iVw4umMNUFkb40JoqNZKIy08LhgHfsoxQ1UsS66uYDIFuwYfxOs6sK3tP+K7z4VoFekr+s9i389ls7TjRzFF6iCwjoOGAB6dEIgcnBxaHBJWnM2M7nSH8r4qwL0WTCYcw6a2XnpKSIwmWxnBPaTptS8Wsw9Txos=
Received: by 10.35.90.1 with SMTP id s1mr1395926pyl.1182968955150;
        Wed, 27 Jun 2007 11:29:15 -0700 (PDT)
Received: by 10.35.109.15 with HTTP; Wed, 27 Jun 2007 11:29:15 -0700 (PDT)
Message-ID: <4ce365ec0706271129q784c9dc1g8b0aa94d124a8d7a@mail.gmail.com>
Date: Wed, 27 Jun 2007 14:29:15 -0400
From: "Jay Savage" <daggerquill@gmail.com>
To: "Gary Stainburn" <gary.stainburn@ringways.co.uk>,
   "Perl List" <beginners@perl.org>
Subject: Re: Tie::Handle::CSV
In-Reply-To: <200706271901.36075.gary.stainburn@ringways.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-7; format=flowed
Content-Disposition: inline
References: <200706271733.35242.gary.stainburn@ringways.co.uk>
	 <31086b240706270954v52175534pef15f56fe9111db7@mail.gmail.com>
	 <200706271901.36075.gary.stainburn@ringways.co.uk>
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5RITcL9030620

On 6/27/07, Gary Stainburn <gary.stainburn@ringways.co.uk> wrote:> On Wednesday 27 June 2007 17:54, Tom Phoenix wrote:> >> > My best guess is that somewhere near end of file, Tie::Handle::CSV is> > using Carp to report an error, but it's not doing a very good job of> > telling you what the error actually is. See whether adding this to> > your program gives you the full stack backtrace:> >> >     BEGIN { $Carp::Verbose = 1 }> >> > When you find the problem, I'm sure that the module's author would> > appreciate a patch that improves the error handling. Good luck with> > it!> >>> Thanks Tom.>> I added the line immediately after the #!/usr/bin/perl line and ran the> script. It didn't give any output, but when I redirected the output to VIM it> reported the error line as>> ^Z at ../bin/walon line 25>> It looks like Tie::Handle::CSV just dies when there are no records left.>> I've looked at the perldoc for the module and I can't see any reference to why> it should do this, or how to stop it.>> --> Gary Stainburn
My guess is that there is a blank line at the end of your file. Orworse, some other white space and a newline.
Since Tie::Handle::CSV uses Text::CSV_XS internally, it requires verystrict files. Embedded newlines--and by extension trailingnewlines--can crash Text::CSV_XS. So will other malformed CSV.
Make sure that the last record in your file is correctly terminated(i.e. there are no unclosed quotes), and that the last record isfollowed immediately by the final newline, which is alos the lastcharacter of the file.
HTH,
-- jay--------------------------------------------------This email and attachment(s): [  ] blogable; [ x ] ask first; [  ]private and confidential
daggerquill [at] gmail [dot] comhttp://www.tuaw.com  http://www.downloadsquad.com  http://www.engatiki.org
values of � will give rise to dom!

                 

e.hnrih"nr7