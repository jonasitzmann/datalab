From perl6-all-return-82524-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 15:05:44 2007
Return-Path: <perl6-all-return-82524-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63J5gL9032637
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 15:05:43 -0400
Received: (qmail 31724 invoked by uid 514); 3 Jul 2007 19:05:36 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31719 invoked from network); 3 Jul 2007 19:05:35 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.4 required=8.0
	tests=ANY_BOUNCE_MESSAGE,BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS,VBOUNCE_MESSAGE
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of jerry.gay@gmail.com designates 66.249.90.177 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=eZLqXnzqnrfLvOs0ZBK0S7fOJCbP//gGiQVW3WfKqY+0c0Z2DrzXE1kUzw39Q58K58I3ySzIbd7dTeHfwL3WwgyQ+aEtdGJypG18ExdvwHxQogVUb68Cokp8ltLVsic7CRftUNxZYylMJXdmBE1pCM4fCIDddkDyyIZSP/0zqiw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=IN34RewzmYjlldbxs+ygXND69rFfp+iLVGosFtiDQaJCyztrjADtxrJOaH7lZT3nL3yiOKEbD3CBx+RO+atVWYI0DfCgxSsrj7K9UzWbHES0q9rr8VhwXLiwNd2jJTzdoKJP85GRdvbg1Tz5c162o+nyYl3MunaniimhdEeiIFo=
Message-ID: <1d9a3f400707031204r618a261ibc9aafee7b95865c@mail.gmail.com>
Date: Tue, 3 Jul 2007 12:04:54 -0700
From: "jerry gay" <jerry.gay@gmail.com>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #43507] AutoReply: [BUG] yet another gc bug exposed by perl6 on windows
In-Reply-To: <rt-3.6.HEAD-25329-1183488874-1668.43507-71-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-43507@perl.org>
	 <1d9a3f400707031154p7906944j8001d1d0afb360b6@mail.gmail.com>
	 <rt-3.6.HEAD-25329-1183488874-1668.43507-71-0@perl.org>
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.4 required=8.0
	tests=ANY_BOUNCE_MESSAGE,BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS,VBOUNCE_MESSAGE

On 7/3/07, Parrot via RT <parrotbug-followup@parrotcode.org> wrote:
> Greetings,
>
> This message has been automatically generated in response to the
> creation of a parrotbug regarding:
>         "[BUG] yet another gc bug exposed by perl6 on windows"
>
> There is no need to reply to this message right now.  Your ticket has been
> assigned an ID of [perl #43507].
>
> Please include the string:
>          [perl #43507]
> In the subject line of all future correspondence about this issue. To do so,
> you may reply to this message.
>
>                         Thank you,
>                           parrotbug
>
> http://rt.perl.org/rt3/Ticket/Display.html?id=43507
> -------------------------------------------------------------------------
> MIME-Version: 1.0
> X-Spam-Status: No, hits=-1.9 required=8.0 tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_NEUTRAL
> Content-Disposition: inline
> Received-SPF: neutral (x1.develooper.com: 63.251.223.176 is neither permitted nor denied by domain of jerry.gay@gmail.com)
> Received-SPF: pass (x1.develooper.com: domain of jerry.gay@gmail.com designates 66.249.92.173 as permitted sender)
> X-Old-Spam-Check-BY: la.mx.develooper.com
> Content-Type: text/plain; charset=UTF-8; format=flowed
> Message-ID: <1d9a3f400707031154p7906944j8001d1d0afb360b6@mail.gmail.com>
> Received: (qmail 16697 invoked by alias); 3 Jul 2007 18:54:26 -0000
> Received: (qmail 16688 invoked from network); 3 Jul 2007 18:54:25 -0000
> Received: from localhost (HELO la.mx.develooper.com) (127.0.0.1) by localhost with SMTP; 3 Jul 2007 18:54:25 -0000
> Received: (qmail 16685 invoked by alias); 3 Jul 2007 18:54:25 -0000
> Received: from la.mx.develooper.com (HELO x1.develooper.com) (63.251.223.176) by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 03 Jul 2007 11:54:24 -0700
> Received: (qmail 16620 invoked by uid 225); 3 Jul 2007 18:54:19 -0000
> Received: (qmail 16607 invoked by alias); 3 Jul 2007 18:54:18 -0000
> Received: from ug-out-1314.google.com (HELO ug-out-1314.google.com) (66.249.92.173) by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 11:54:16 -0700
> Received: by ug-out-1314.google.com with SMTP id k40so158324ugc for <parrotbug@parrotcode.org>; Tue, 03 Jul 2007 11:54:11 -0700 (PDT)
> Received: by 10.78.130.6 with SMTP id c6mr3733814hud.1183488851344; Tue, 03 Jul 2007 11:54:11 -0700 (PDT)
> Received: by 10.78.135.20 with HTTP; Tue, 3 Jul 2007 11:54:11 -0700 (PDT)
> Delivered-To: rt-parrot@x1.develooper.com
> Delivered-To: bugs-parrot@netlabs.develooper.com
> Delivered-To: parrotbug@parrotcode.org
> Subject: [BUG] yet another gc bug exposed by perl6 on windows
> Return-Path: <jerry.gay@gmail.com>
> Domainkey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta; h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition; b=fMKV0lVQ8+xCBVDQ3oaBrluJx6IU28K83hU1w2XM19UVQjETofTCKlHw3HRFN52Ks6PdK6Eac/7jg++/kcYpIXrKjx6csnxlqEqGDXZJ+A5irOgl1/N8QbX6yap1/KKuT4YnQnlKCQI4rFipsy89aV3dFGzhsZEfkFGRAyZXb6w=
> X-Spam-Check-BY: la.mx.develooper.com
> Dkim-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta; h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition; b=GALWXVG+LQJ9AXwAeLE99qUlRCui+BNP5V8Ky9Uzlap6qkBQZtIO6KwZI9XJheiKF5NEZ5o+YjTgOn1t7HfAjCVf0dF4vOOg6BarXPbq3lrwA5cuv0CzErXU09vhFNWw1jVG9/G4xwjI89wJWO6dWCYIRtjeu1XLnwB+TOr7T+k=
> X-Old-Spam-Status: No, hits=-2.6 required=8.0 tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
> Date: Tue, 3 Jul 2007 11:54:11 -0700
> To: parrotbug <parrotbug@parrotcode.org>
> Content-Transfer-Encoding: 7bit
> From: "jerry gay" <jerry.gay@gmail.com>
> X-RT-Original-Encoding: utf-8
>
> from languages/perl6:
>
>   ../../parrot perl6.pbc t/01-sanity/07-range.t
>
> causes a segfault during argument processing in the calling
> conventions. here's the backtrace:
>
> >       libparrot.dll!clone_key_arg(parrot_interp_t * interp=0x03a12d50,
> call_state * st=0x0017fd10)  Line 649 + 0x10 bytes      C
>         libparrot.dll!Parrot_convert_arg(parrot_interp_t *
> interp=0x03a12d50, call_state * st=0x0017fd10)  Line 1112 + 0xd
> bytes   C
>         libparrot.dll!Parrot_process_args(parrot_interp_t *
> interp=0x03a12d50, call_state * st=0x0017fd10, arg_pass_t
> param_or_result=PARROT_PASS_PARAMS)  Line 1044 + 0xd bytes      C
>         libparrot.dll!parrot_pass_args(parrot_interp_t * interp=0x03a12d50,
> Parrot_Context * src_ctx=0x0451faa0, Parrot_Context *
> dest_ctx=0x0451fa08, long * src_indexes=0x03c9f038, long *
> dest_indexes=0x043ab208, arg_pass_t
> param_or_result=PARROT_PASS_PARAMS)  Line 1177 + 0x14 bytes     C
>         libparrot.dll!Parrot_get_params_pc(long * cur_opcode=0x043ab208,
> parrot_interp_t * interp=0x03a12d50)  Line 541 + 0x1b bytes     C
>         libparrot.dll!runops_slow_core(parrot_interp_t * interp=0x03a12d50,
> long * pc=0x043ab208)  Line 184 + 0x18 bytes    C
>         libparrot.dll!runops_int(parrot_interp_t * interp=0x03a12d50,
> unsigned int offset=3760)  Line 769 + 0xb bytes C
>         libparrot.dll!runops(parrot_interp_t * interp=0x03a12d50, unsigned
> int offs=58)  Line 95 + 0xd bytes       C
>         libparrot.dll!runops_args(parrot_interp_t * interp=0x03a12d50, PMC *
> sub=0x03c0bd38, PMC * obj=0x03a7acb0, parrot_string_t *
> meth=0x00000000, const char * sig=0x102a1e1c, char * ap=0x0017fea4)
> Line 210 + 0xd bytes    C
>         libparrot.dll!Parrot_runops_fromc_args(parrot_interp_t *
> interp=0x03a12d50, PMC * sub=0x03c0bd38, const char * sig=0x102a1e1c,
> ...)  Line 287 + 0x1d bytes     C
>         libparrot.dll!Parrot_runcode(parrot_interp_t * interp=0x03a12d50,
> int argc=2, char * * argv=0x03a12ce4)  Line 785 + 0x16 bytes    C
>         libparrot.dll!imcc_run_pbc(parrot_interp_t * interp=0x03a12d50, int
> obj_file=0, const char * output_file=0x00000000, int argc=2, char * *
> argv=0x03a12ce4)  Line 612 + 0x11 bytes C
>         libparrot.dll!imcc_run(parrot_interp_t * interp=0x03a12d50, const
> char * sourcefile=0x03a12d15, int argc=2, char * * argv=0x03a12ce4)
> Line 813 + 0x19 bytes   C
>         parrot.exe!main(int argc=2, char * * argv=0x03a12ce4)  Line 61 + 0x15 bytes     C
>         parrot.exe!__tmainCRTStartup()  Line 586 + 0x17 bytes   C
>         kernel32.dll!771d19f1()
>         [Frames below may be incorrect and/or missing, no symbols loaded for
> kernel32.dll]
>         ntdll.dll!77bad109()
>
i forgot to mention, of course, that -G or -t 1 causes this error to go away.
~jerry

            

."ci.