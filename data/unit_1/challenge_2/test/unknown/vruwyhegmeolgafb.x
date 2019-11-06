From beginners-return-92405-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 08:10:31 2007
Return-Path: <beginners-return-92405-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ECAVL9021147
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:10:31 -0400
Received: (qmail 20284 invoked by uid 514); 14 Jun 2007 12:10:24 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20275 invoked from network); 14 Jun 2007 12:10:23 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 12:10:23 -0000
Received: (qmail 9151 invoked by uid 225); 14 Jun 2007 12:10:23 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9145 invoked by alias); 14 Jun 2007 12:10:22 -0000
X-Spam-Status: No, hits=-0.1 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 14 Jun 2007 05:10:19 -0700
Received: (qmail 20268 invoked by uid 515); 14 Jun 2007 12:10:14 -0000
To: beginners@perl.org
From: zentara <zentara@highstream.net>
Subject: Re: Run 2 process in parallel.
Date: Thu, 14 Jun 2007 08:06:27 -0400
Sender: Linux@lists.develooper.com
Message-ID: <mbb273deg95hlh895vs46s1dvrk768eevf@4ax.com>
References: <e29645ac0706130250q4d1370aft4d93cc3d7763786a@mail.gmail.com> <ajkv635op2in83fr7pacjuesqgl5re68of@4ax.com> <e29645ac0706130438w3aef6943o926f5fc5eb831405@mail.gmail.com>
X-Newsreader:  :  :/Li.nux English (American)
X-No-Archive: yes
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Posted-By: 68.79.167.24

On Wed, 13 Jun 2007 17:08:52 +0530, umesh.perl@gmail.com ("Umesh T G")
wrote:

>It's a simple script which has to copy some files.
>Martin solution will do that job. Thanks :)
>
>Zen, I had an impression that running parallel jobs is only threads work.
>

If you are on MSWindows, it's all threads, so fork and exec is emulated
with threads.....  it is all threads work underneath for that platform.

But in linux, and in general, threads are all part of a single process,
so if you "exit" in a thread, you will kill all threads. All threads
share the same pid.  Threads let you share information between
them, which is it's selling point.

This is not true in parallel independent processes, BUT in that case
you cannot use shared variables to communicate, you need more
complicated forms of IPC. (Inter-process-communication)

Usually fork and exec is more efficient, so it should be the first
choice.

zentara


-- 
I'm not really a human, but I play one on earth.
http://zentara.net/japh.html

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

 1tT4