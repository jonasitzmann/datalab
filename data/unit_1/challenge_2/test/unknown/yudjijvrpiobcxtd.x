From perl6-all-return-81808-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 19:26:57 2007
Return-Path: <perl6-all-return-81808-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54NQuhB001504
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 19:26:56 -0400
Received: (qmail 3981 invoked by uid 514); 4 Jun 2007 23:26:50 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3976 invoked from network); 4 Jun 2007 23:26:49 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-compiler-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-compiler
List-Id: <perl6-compiler.perl.org>
Delivered-To: mailing list perl6-compiler@perl.org
Delivered-To: perl6-compiler@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
X-Virus-Scanned: by both ClamAV and Kaspersky at http://aliencamel.com/
Message-ID: <46649ED4.7060601@perl.org>
Date: Mon, 04 Jun 2007 16:23:00 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.10 (Macintosh/20070221)
MIME-Version: 1.0
To: Chris Yocum <cyocum@gmail.com>
CC: perl6-compiler@perl.org
Subject: Re: Not Understanding TGE
References: <82bb54530706030822p602f3e07jec1ce67fb7938f2a@mail.gmail.com>
In-Reply-To: <82bb54530706030822p602f3e07jec1ce67fb7938f2a@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Chris Yocum wrote:
> Hi Everyone,
>    I am not sure if this is the correct list to post this problem to
> but I will try here first.

The main Parrot list is better for anything not specifically related to 
the Perl 6 compiler.

> I am having a problem with understanding
> TGE and I was hoping someone might be able to give me some help.  I am
> writing a parrot version of 1964 BASIC using the compiler tools and I
> have the PGE part nearly complete (there are a few things that I need
> to finish though) and I was looking forward to using TGE but I have
> become stuck.
>    My problem is that when I get through the first two parts of the
> tree, I come to a point where things come to a screeching halt because
> the node (in Basic64::Grammar::statement) does not seem to be anything
> at all or anything that I can identify.  I know from the parse output
> that Basic64::Grammar::statement is a ResizablePMCArray (size:1) but I
> am not sure how to reflect that in PIR or if that is even significant
> here.  Underneath that are the linenumber and statement_type rules but
> I cannot seem to access them at all.
>    I apologize in advance if this is something simple but any help
> would be greatly appreciated.

If you can have more than one element in the statement array (I expect 
you can) in the rule for Basic64::Grammar::statements, you need to grab 
the array, and iterate over it, calling tree.'get' on each element of 
the array. As an example, take a look at the PunieGrammar::lineseq rule 
in languages/punie/lib/ASTGrammar.tg.

If you can only ever have one statement (unlikely, but I mention it in 
case it's useful for other rules), then you can just grab the first item 
in the array (e.g. "cnode[0]") and pass that to tree.'get'.

(And thanks for the details you provided with the question. They made it 
easy to see the answer.)

Allison

           

ed52Yf