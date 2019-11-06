From perl6-all-return-81786-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 23:34:18 2007
Return-Path: <perl6-all-return-81786-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l543YHhB022765
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 23:34:18 -0400
Received: (qmail 24641 invoked by uid 514); 4 Jun 2007 03:34:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 24636 invoked from network); 4 Jun 2007 03:34:11 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: [perl #42790] [BUG] Tailcall with slurpy argument passing causes a memory leak
Date: Sun, 3 Jun 2007 20:11:17 -0700
User-Agent: KMail/1.9.6
Cc: "Mehmet Yavuz Selim Soyturk" (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-42790@perl.org> <1abd9eb20704281642x35eabae8uc385144d4a4653e5@mail.gmail.com> <rt-3.6.HEAD-1687-1177803786-250.42790-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-1687-1177803786-250.42790-72-0@perl.org>
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_WL4YGpO/9qlG1L6"
Message-Id: <200706032011.18319.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,SPF_PASS

--Boundary-00=_WL4YGpO/9qlG1L6
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday 28 April 2007 16:43:06 Mehmet Yavuz Selim Soyturk wrote:

> Next program makes a slurpy tailcall, and it causes a memory leak for me.

Confirmed.  Interestingly, the problem looks like a Key PMC somewhere gets 
garbage collected inappropriately.

I tried various tricks to mark the call_state's PMC as live, but nothing fixed 
anything except for this patch, which hides the problem.

Now I know that storing a PMC in a data structure that the GC doesn't check 
during mark and sweep is a problem, but liberal use of parrot_register_pmc() 
didn't fix things either.

-- c


--Boundary-00=_WL4YGpO/9qlG1L6
Content-Type: text/x-diff;
  charset="utf-8";
  name="trace_args_pmc_segfault.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="trace_args_pmc_segfault.patch"

=== src/inter_call.c
==================================================================
--- src/inter_call.c	(revision 3820)
+++ src/inter_call.c	(local)
@@ -1016,6 +1016,7 @@
         dest_ctx->results_signature = NULL;
     }
 
+    Parrot_block_DOD(interp);
     Parrot_init_arg_indexes_and_sig_pmc(interp, src_ctx, src_indexes, src_signature, &st.src);
     Parrot_init_arg_indexes_and_sig_pmc(interp, dest_ctx, dest_indexes, dest_signature, &st.dest);
     Parrot_process_args(interp, &st, param_or_result);
@@ -1023,6 +1024,7 @@
     /* If we created a slurpy, we had to DOD register it so it did not get
      * collected during arg processing; we'll now unregister it. */
     dod_unregister_pmc(interp, st.dest.slurp);
+    Parrot_unblock_DOD(interp);
 }
 
 /*

--Boundary-00=_WL4YGpO/9qlG1L6--

     

PZgwz� TE