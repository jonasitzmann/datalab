From beginners-return-92475-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 13:02:55 2007
Return-Path: <beginners-return-92475-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5FH2sL9004668
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 13:02:55 -0400
Received: (qmail 20966 invoked by uid 514); 15 Jun 2007 17:02:48 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20957 invoked from network); 15 Jun 2007 17:02:48 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 17:02:48 -0000
Received: (qmail 9214 invoked by uid 225); 15 Jun 2007 17:02:48 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9202 invoked by alias); 15 Jun 2007 17:02:47 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Fri, 15 Jun 2007 10:02:31 -0700
Received: (qmail 20939 invoked by uid 515); 15 Jun 2007 17:02:28 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 15 17:02:27 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 20929 invoked from network); 15 Jun 2007 17:02:27 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 17:02:27 -0000
Received: (qmail 9004 invoked by uid 225); 15 Jun 2007 17:02:26 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 8997 invoked by alias); 15 Jun 2007 17:02:26 -0000
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
Received: from trinity.supernews.net (HELO trinity.supernews.net) (216.168.1.22)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 10:02:19 -0700
Received: from proxy.google.com ([66.102.14.241]:52664)
	by trinity.supernews.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.66 (FreeBSD))
	(envelope-from <news@google.com>)
	id 1HzFBf-000HVQ-8L
	for perl-beginners@moderators.isc.org; Fri, 15 Jun 2007 17:02:15 +0000
Received: from AR020007
	by proxy.google.com with ESMTP id l5FH25fw002133
	for <perl-beginners@moderators.isc.org>; Fri, 15 Jun 2007 10:02:05 -0700
Received: (from news@localhost)
	by Google Production id l5FH25tp018047
	for perl-beginners@moderators.isc.org; Fri, 15 Jun 2007 10:02:05 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Why am I getting the error (Maybe you meant system() when you said exec()?) ??
Date: Fri, 15 Jun 2007 10:02:04 -0700
Organization: http://groups.google.com
Lines: 53
Message-ID: <1181926924.768711.32190@m36g2000hse.googlegroups.com>
References: <1181920623.657152.279440@u2g2000hsc.googlegroups.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181926925 18046 127.0.0.1 (15 Jun 2007 17:02:05 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 15 Jun 2007 17:02:05 +0000 (UTC)
In-Reply-To: <1181920623.657152.279440@u2g2000hsc.googlegroups.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: m36g2000hse.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 15, 11:17 am, jrel...@gmail.com wrote:
> Howdy,
>
> Please be gentle, I'm a perl novice to say the least.
>
> I have the following script (called bk.pl right now) :
> foreach $argnum (0 .. $#ARGV) {
>         my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime
> time;
>         exec ("mysqldump --user=*** --password=*** $ARGV[$argnum] > /backups/
> $ARGV[$argnum]--$mon-$mday-$year-$hour-$min-$sec.sql");
>         exec ("tar czpf $ARGV[$argnum]--$mon-$mday-$year-$hour-$min-$sec.sql
> $ARGV[$argnum]--$mon-$mday-$year-$hour-$min-$sec");
>
> }
>
> When I run it (./scripts/bk.pl dbname) it runs the first exec
> properly, but it dose not do the second.  I get the error
> (Maybe you meant system() when you said exec()?)
>
> Any ideas as to why this is happening?

.... because you meant system() where you have exec(), just like Perl
is trying to tell you.  Do you understand the difference between the
two?

exec() executes the given program IN THE CURRENT PROCESS.  That is, it
completely destroys your existing Perl program in favor of running
this one instead.  Any code below an exec() statement (other than a
check for failure) is meaningless.  It will never be executed.

system() first creates a new process via fork().  Then in the new
process, it calls exec() to run the given program.  The original,
"parent" process waits for this "child" process to finish before
continuing.  That is, system() could be defined like so:

my $pid = fork();
if ($pid == 0) {  #child
    exec(...);
} else { #parent
    waitpid($pid, 0);
}

For more information:
perldoc -f exec
perldoc -f system
and the two that were used in my expansion:
perldoc -f fork
perldoc -f waitpid

Hope this helps,
Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

a6.R.pnhoaun 