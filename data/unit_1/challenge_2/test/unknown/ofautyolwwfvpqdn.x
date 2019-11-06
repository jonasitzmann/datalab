From perl6-all-return-81793-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 02:01:10 2007
Return-Path: <perl6-all-return-81793-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54618hB024031
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 02:01:08 -0400
Received: (qmail 19096 invoked by uid 514); 4 Jun 2007 06:01:01 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19089 invoked from network); 4 Jun 2007 06:01:01 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=1.8 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: Leopold Toetsch <lt@toetsch.at>
To: chromatic <chromatic@wgz.org>
Subject: Re: FOTW src/debug.c
Date: Mon, 4 Jun 2007 08:00:11 +0200
User-Agent: KMail/1.9.1
Cc: perl6-internals@perl.org, Andy Spieherty <spiehera@lafayette.edu>,
   Klaas-Jan Stol <parrotcode@gmail.com>
References: <200705221550.07740.chromatic@wgz.org> <200705232349.02803.lt@toetsch.at> <200706031840.30575.chromatic@wgz.org>
In-Reply-To: <200706031840.30575.chromatic@wgz.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Disposition: inline
Message-Id: <200706040800.12280.lt@toetsch.at>
X-Scan-Signature: 5fc63ffc4a09ec98bfdb5e0fd7991b2b
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l54618hB024031

Am Montag, 4. Juni 2007 03:40 schrieb chromatic:
> > > #define c_b             25245
> >
> > Another WTF from code history.
> >
> > leo - please remove this - kthx.
>
> We have to replace it with something; any ideas?

Well, just the "normal" way of parsing commands. Chained ifs:

  if (!memcmp(cmd, "foo", 3)) 
    do_foo_cmd(cmd + 3);
  else if (!memcmp(cmd, "bar", 3)) 
    do_bar_cmd(cmd + 3);
  ...

Or a dispatch table:

  typedef int (*cmd_func_t)(Interp *, char *cmd);

  static int do_foo_cmd(Interp* interp, char *cmd) {...}
  ...

  static const struct debug_cmds {
     const char *name;
     cmd_func_t func;
  } cmds[] = {
    { "bar", do_bar_cmd, },  /* plz keep sorted */
    { "foo", do_foo_cmd, },   
    ...
  };

Then bsearch the command name, exec the func with the cmd pointer advanced to 
the rest of the command line.

leo

   

dbfs> 9ca:ere