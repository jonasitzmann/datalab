From perl6-all-return-82018-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 17:23:14 2007
Return-Path: <perl6-all-return-82018-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GLNEL9019653
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 17:23:14 -0400
Received: (qmail 20335 invoked by uid 514); 16 Jun 2007 21:23:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20330 invoked from network); 16 Jun 2007 21:23:11 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
Message-ID: <20070616212254.19846.qmail@lists.develooper.com>
To: perl6-language@perl.org
Date: Sat, 16 Jun 2007 14:22:55 -0700
From: Dave Whipp <dave@whipp.name>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
Subject: Re: = at Start of Line ... solution is simple
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com> <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com> <150620070756055824%brian.d.foy@gmail.com> <20070616084404.GF6900@stripey.com> <160620070852232050%brian.d.foy@gmail.com> <p06240800c299dc49df43@[192.168.1.101]>
In-Reply-To: <p06240800c299dc49df43@[192.168.1.101]>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Posted-By: 209.213.198.25
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Darren Duncan wrote:
> Given this, there is an obvious (to me) solution for pod blocks in the 
> middle of expressions like:
> 
>   my $foo
>     = $bar;
> 
> As the example shows, and I believe best practices espouse, you *indent* 
> the code line with a leading =.

I'd agree that indentation is good for readability. But I do know (and 
regularly use) tools that will "helpfully" strip out leading whitespace. 
For example, the bug tracking system I use at work drops all leading 
whitespace; and if you put code in MS-Word using style-sheet indentation 
then cut&paste will drop it. This would be unfortunate.

My problems with these tools would be reduced if the POD identification 
rule was changed from /^=/ to /^=\w/. I.e. whitespace after the initial 
"=" marks it as non-pod.


Dave.

         

Lvow gUol