From beginners-return-92649-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 00:16:50 2007
Return-Path: <beginners-return-92649-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M4GkL9001223
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 00:16:47 -0400
Received: (qmail 28429 invoked by uid 514); 22 Jun 2007 04:16:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28405 invoked from network); 22 Jun 2007 04:16:38 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 04:16:38 -0000
Received: (qmail 8632 invoked by uid 225); 22 Jun 2007 04:16:38 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8620 invoked by alias); 22 Jun 2007 04:16:37 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of dharshana.ve@gmail.com designates 64.233.166.178 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 21:16:33 -0700
Received: by py-out-1112.google.com with SMTP id a25so632365pyi
        for <beginners@perl.org>; Thu, 21 Jun 2007 21:16:29 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=Ts6JdAKEoL9n7v3QarlZr+RKHWxz1lkUWAbPUNc17tImBahpDsudJqRATQ1bzbRIFg0wvcb22egLQ+LpKi2K1zguHE6BusdBg+eL7mxJiNdF2sKEqztUxQ7iPhQ6dso5T4vAj1CJjTzIGHO15tsSzP8nDPXlDB2Bau3xzm0xL70=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=p/A4RBp1f+bYkPmqASvOyhQSwgmcBzlD1g0JaIntZFv1VXoTrBBzIVXWj5IkGVH/o242tXF15qI2JnqYtN5wRcSto/yciAKOzEedSQtnWFFWzV5M5ZH/FQbALTrugRFdQ2YxOn4LilciveH2P5u6PzJcjFJ4sQIiay+G9Y/c8Us=
Received: by 10.65.254.5 with SMTP id g5mr4999934qbs.1182485788835;
        Thu, 21 Jun 2007 21:16:28 -0700 (PDT)
Received: by 10.64.156.1 with HTTP; Thu, 21 Jun 2007 21:16:28 -0700 (PDT)
Message-ID: <9f91e0840706212116la1fd92ch1a818fdaa006585c@mail.gmail.com>
Date: Fri, 22 Jun 2007 09:46:28 +0530
From: "Dharshana Eswaran" <dharshana.ve@gmail.com>
To: "Tom Phoenix" <tom@stonehenge.com>
Subject: Re: Regarding file handling
Cc: beginners@perl.org
In-Reply-To: <9f91e0840706212106w35f5cf97i7d419b53a7b2d8a6@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_209_6928899.1182485788513"
References: <9f91e0840706210631g62917448s773f8dd021d1a9c1@mail.gmail.com>
	 <1182433672.340429.172880@u2g2000hsc.googlegroups.com>
	 <9f91e0840706212022q40ec7b1aq9119d7ca1e896ec3@mail.gmail.com>
	 <31086b240706212037x7a582b7ch639117e705d3569@mail.gmail.com>
	 <9f91e0840706212106w35f5cf97i7d419b53a7b2d8a6@mail.gmail.com>
X-Virus-Checked: Checked

------=_Part_209_6928899.1182485788513
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

My outfile should look like this:

STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T => "UINT8",
    STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T => "UINT8",
    STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T => "UINT8",
    STACK_CC_SS_COMMON_TYPE_CHANNEL_TYPE_T => "UINT8",
    STACK_CC_SS_COMMON_TYPE_CHANNEL_MODE_T => "UINT8",
    STACK_CC_SS_COMMON_TYPE_CHANNEL_MODE_T => "UINT8",
    STACK_REG_COMMON_TYPE_RAB_ID_T => "UINT8",

But without repetitions....


Thanks and Regards,
Dharshana

On 6/22/07, Dharshana Eswaran <dharshana.ve@gmail.com> wrote:
>
> Actually my work is from the text file, i need to consider each entry in
> every structure, and find its data type, to which its typedefed to and then
> assign the values according to the value of the datatype. For eg:
>
> A sample of the text file is shown below:
> STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T
> {
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> protocol_discriminator;
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T   transaction_id;
> } STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T;
> };
> STACK_CC_SS_COMMON_TYPE_CHANNEL_INFO_T
> {
>     STACK_CC_SS_COMMON_TYPE_CHANNEL_TYPE_T channel_type;
>     STACK_CC_SS_COMMON_TYPE_CHANNEL_MODE_T channel_mode;
> } STACK_CC_SS_COMMON_TYPE_CHANNEL_INFO_T;
> };
> STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T
> {
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> protocol_discriminator;
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T   transaction_id;
> } STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T;
> };
>
>
> From the above text, i need to read STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> and find to which data type this is type defed to and then asign the values
> according to the value of the data type.
>
> Here the basic data types are UINT8 and UINT16 which would read one and
> two bytes respectively. All the other data types are type  defed to one of
> the two.
>
> My code in generating the file is as shown: this is just a module from the
> original code
>
> #!/usr/bin/perl
> use strict;
> use warnings;
> $file = "filename";
> unless (open(INNER, $file)) {
>             die("Cannot open file \n");
>         }
>
> unless (open(INN1, "+>outfile.txt")) {
>         die("Cannot open file \n");
>     }
>
>     while ($innergrep = <INNER>) {
>         chop($innergrep);
>         while((($inn = index ($innergrep, "typedef struct")) >= 0)||(($inn
> = index ($innergrep, "typedef union")) >= 0)) {
>             $p = 0;
>             while($inn = (index ($innergrep, "}")) < 0) {
>                 $innergrep = <INNER>;
>                 chop($innergrep);
>                 $innerstore[$p] = $innergrep;
>                 $p++;
>             }
>
>             if($inn = (index ($innergrep, "$innerB;")) >= 0) {
>
>                 $innerlen = @innerstore;
>                 print INN1 "$innerB\n";
>                 for(my $j=0; $j<$p; $j++) {
>                     print INN1 "$innerstore[$j]\n";
>
>                 }
>                 print INN1 "};\n";
>
>
>             }
>         }
>     }
>
> The above code is just a small module from the original code. In the above
> code, the file name is passed as an argument and it is stored in $file. From
> the file which is specified, i need to search for the structure associated
> with the primitive supplied in $innerB. As in the file the structure is
> written as
>
> STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T
> {
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> protocol_discriminator;
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T   transaction_id;
> } STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T;
>
> The primitive name is found only at the end of the structure. So initially
> read the contents, store it in a array and and then when the primitive name
> in the structure matched with the primitive name passed here, then i write
> it to the outfile.txt.
> As, each time the primitive is passed through some variable, i am unable
> to check the duplicate copies. That is, if the same primitive is passed
> again and again, my code just gets the structure and stores it multiple
> times. I want it to store only once. That is the problem.
>
> I hope this describes the problem to all. I kindly request you to guide me
> in this.
>
> Thanks and Regards,
> Dharshana
>
>
> On 6/22/07, Tom Phoenix <tom@stonehenge.com> wrote:
> >
> > On 6/21/07, Dharshana Eswaran <dharshana.ve@gmail.com> wrote:
> >
> > > I am unable to get the desired result. Its printing all the instances
> > of the
> > > block.
> >
> > Please post the smallest self-contained example program which other
> > people can use to see what you're doing, with what data. Ideally,
> > narrow things down to the one line of code or piece of data that does
> > something, or fails to do something, as appropriate. (For example, if
> > you're using the algorithm that Paul Lalli supplied, could two or more
> > very similar strings cause you mistakenly to think you're seeing
> > duplicate output?)
> >
> > Good luck with it!
> >
> > --Tom Phoenix
> > Stonehenge Perl Training
> >
>
>

------=_Part_209_6928899.1182485788513--

           

enirs D