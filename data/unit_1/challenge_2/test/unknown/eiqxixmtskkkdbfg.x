From beginners-return-93011-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 13:43:13 2007
Return-Path: <beginners-return-93011-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63HhDL9031773
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 13:43:13 -0400
Received: (qmail 20666 invoked by uid 514); 3 Jul 2007 17:25:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20657 invoked from network); 3 Jul 2007 17:25:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 17:25:09 -0000
Received: (qmail 32167 invoked by uid 225); 3 Jul 2007 17:25:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32100 invoked by alias); 3 Jul 2007 17:25:00 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.183 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 10:24:57 -0700
Received: by wa-out-1112.google.com with SMTP id v27so2380243wah
        for <beginners@perl.org>; Tue, 03 Jul 2007 10:24:53 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=trqTBPhtXKl3w4YQUBCS8ipRuln/u/z+rp70cCe/pXiIJ+C//rYOVkl4hojzrp4zR3IzIPAo4V17VRbjBGgxqw3mP892fvZVjsNaMwznwqAlQU5LDmS6xJhz/5vyL4CbWUkNkbT0NoUYFj5viilp0u+QDcFN9tMPfg6TCuTGx3Q=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BCvzmsEss7ftDQGLHUQOYOSpmcSJk75D9IeZ61NMmgR5t/5oDOANNIickHL/vFwglsXUM35dnf0KtAQTjsz/vbEelupDKEljzNz3VLank3XODx1STtSCin6/I2iLLy3/1+JLMKS8FPGA+WfqkzWuJE41BBQGgNu0IYr/0ynHJxM=
Received: by 10.115.23.12 with SMTP id a12mr6321795waj.1183483492928;
        Tue, 03 Jul 2007 10:24:52 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Tue, 3 Jul 2007 10:24:52 -0700 (PDT)
Message-ID: <58ce48dc0707031024r1dc84d21w236997caa1669190@mail.gmail.com>
Date: Tue, 3 Jul 2007 13:24:52 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Dustin Hice" <hicedustin@gmail.com>
Subject: Re: Perl Device Manager?
Cc: beginners@perl.org
In-Reply-To: <1183433705.323466.83680@n60g2000hse.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183433705.323466.83680@n60g2000hse.googlegroups.com>

On 7/2/07, Dustin Hice <hicedustin@gmail.com> wrote:
> I was thinking about making a few different scripts that would enable/
> disable components of my laptop to save power,  I am hoping to be able
> to just make a few different scripts that will be stored on my
> desktop.  These scripts will just check to see if a specific component
> is enabled or disabled, and then turn that component on or off.  I was
> thinking this would be easier than having to go into device manager
> every single time I wanted to start up a USB slot or something.  If
> anyone knows of any module that I could use to be able to access the
> device manager it would be alot of help.
>
> Thanks for any replies,
>
> Dustin

I looked around briefly on CPAN to see if there was a module that did
something like this, but was unsuccessful; however, a quick Google
search turned up a command line program* that can do what you want.
It should be as simple as

sub enable_device {
    my $device = shift;
    my $ret = qx(devcon enable $device);
    if ($?) {
        warn "could not enable $device, decon returned " .  ($? >> 8) .
            " and said\n" . $ret
    }
}

sub disable_device {
    my $device = shift;
    my $ret = qx(devcon disable $device);
    if ($?) {
        warn "could not disable $device, decon returned " .  ($? >> 8) .
            " and said\n" . $ret
    }
}

* http://support.microsoft.com/kb/311272

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

c6p�	 -2agSmz