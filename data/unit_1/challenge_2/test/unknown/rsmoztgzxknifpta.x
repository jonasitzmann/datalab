From beginners-return-92764-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 09:58:28 2007
Return-Path: <beginners-return-92764-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5QDwQL9011660
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 09:58:27 -0400
Received: (qmail 15492 invoked by uid 514); 26 Jun 2007 13:58:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15482 invoked from network); 26 Jun 2007 13:58:17 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 26 Jun 2007 13:58:17 -0000
Received: (qmail 15653 invoked by uid 225); 26 Jun 2007 13:58:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15645 invoked by alias); 26 Jun 2007 13:58:16 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web60118.mail.yahoo.com (HELO web60118.mail.yahoo.com) (209.73.178.86)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 26 Jun 2007 06:58:06 -0700
Received: (qmail 92325 invoked by uid 60001); 26 Jun 2007 13:58:01 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=kK9UGrcJfsI74s9g8YhIDXhKsN3g0Wi4U4sdOdhU+1ojpzGZHlJKbmrCMFjkcs7XYw+GRzu9+C7cwao0zpHl4KT/C0QjRZZ+hNAO3dE9nS8oLwuTbs3c3b/GtfeuYhVdzeWNyFENK3mq1bc1qQWx4wWpiRCMfuZjmCptnvWPmc0=;
X-YMail-OSG: qz0pqpsVM1m6xr1_Xy4A7mOcBY2n1vRX4TALL1Ajvtu6pd5sgwoFYh7CtO_5creWxPQUoecenjCXnvUQ4c_QXnIhfiVreFBJmDUvAFOLpfHF3WTfn6cA0MxdPEmq68U-
Received: from [207.236.231.196] by web60118.mail.yahoo.com via HTTP; Tue, 26 Jun 2007 06:58:01 PDT
Date: Tue, 26 Jun 2007 06:58:01 -0700 (PDT)
From: a_arya2000 <a_arya2000@yahoo.com>
Subject: Re: Uninstalling a PERL module
To: oryann9 <oryann9@yahoo.com>, beginners@perl.org
In-Reply-To: <564836.92351.qm@web63401.mail.re1.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Message-ID: <456061.91842.qm@web60118.mail.yahoo.com>

Thanks for the reply, actually when I tried installing
�only�  module, my test was failing, later I figure
out its because of the "version" module that I have
installed in my system. That�s why I was trying to
uninstall the module and see how �only� module react.
Thank you all for your help. 

--- oryann9 <oryann9@yahoo.com> wrote:

> 
> --- a_arya2000 <a_arya2000@yahoo.com> wrote:
> 
> > Hello, does anyone know what is the most effective
> > way
> > of uninstalling perl module? Thank you.
> > 
> Why would you want to do such a thing?  Just take
> the
> path to this module out of @INC by editing your
> .profile and or PERL5LIB variable, unless you think
> its corrupt.
> 
> perl -le 'print join("\n", @INC);'
> 
> If you really want to remove this module do a backup
> first, tar cvf module.tar /path/to/module, 
> then rm -rf /path/to/module
> 
> Here is a script to see what is installed.
> 
> ##-- Show me all installed Modules --##
> use File::Find 'find';
> use File::Spec::Functions;
> 
> my $i=0;
> print "Your installed modules on $^O are:\n";
> print "-" x 38,"\n";
> find { wanted => sub { print ++$i, "\t$_\n" if
> /\.pm\z/ },
>     no_chdir => 1},
> @INC;
>  
> Hope that helps! :)
> 
> 
>        
>
____________________________________________________________________________________
> Be a better Globetrotter. Get better travel answers
> from someone who knows. Yahoo! Answers - Check it
> out.
>
http://answers.yahoo.com/dir/?link=list&sid=396545469
> 
> -- 
> To unsubscribe, e-mail:
> beginners-unsubscribe@perl.org
> For additional commands, e-mail:
> beginners-help@perl.org
> http://learn.perl.org/
> 
> 
> 



       
____________________________________________________________________________________
Need a vacation? Get great deals
to amazing places on Yahoo! Travel.
http://travel.yahoo.com/

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

mhr
pE:Rfake D