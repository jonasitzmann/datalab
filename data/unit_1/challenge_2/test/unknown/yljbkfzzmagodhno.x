From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 02:02:22 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5Q62LL9006454
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 02:02:21 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DCD31162BDD
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 06:02:18 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=3.8 tests=BAYES_40,SPF_PASS 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.250])
	by lists.samba.org (Postfix) with ESMTP id 67A17162ACA
	for <samba-technical@samba.org>; Tue, 26 Jun 2007 06:01:37 +0000 (GMT)
Received: by an-out-0708.google.com with SMTP id b33so329167ana
	for <samba-technical@samba.org>; Mon, 25 Jun 2007 23:01:35 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=gJYyRWawF1TwKotZpmLeLJE7FqsdLZFNZfVxn3U6Zejmvx1+2DZMNQhZ+V8jqcAHKAF6JrYZydnNKWHSduJR7sS/I4KnNdY2Zhq1FfPI/+gIEB2G/Q0so7s0AkOD6xTr6vg1zl2zLIJYsNh2a5ipjy7UWrKbuBEoBTkSGeABMas=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=Xec0Mb4JEbWofMhDwnkeSPrc+tF7DZJ5fhurg2TwHecwd5v0L+GjjnMsTgSJYAC8SeaLMvhFNewTVqrGj5Qc29GAU1ZaLMFylHy+ZQl9b1DMZAGHvOgyI6dWyyCmt7uZs43e7y2PDM7911N7dVCcx9jmItImLYyDiHjF3iU8B14=
Received: by 10.100.141.13 with SMTP id o13mr3567504and.1182837694198;
	Mon, 25 Jun 2007 23:01:34 -0700 (PDT)
Received: by 10.100.31.1 with HTTP; Mon, 25 Jun 2007 23:01:34 -0700 (PDT)
Message-ID: <5f6bcc190706252301i55e28f93gea66aaf301efcff7@mail.gmail.com>
Date: Tue, 26 Jun 2007 11:31:34 +0530
From: "Chetan S" <cshring@gmail.com>
To: samba-technical@samba.org
In-Reply-To: <20070625201245.GA17946@rhonwyn.vernstok.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
Subject: Re: Short HOWTO on using git for Samba development
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

Hi,

On 6/26/07, Jelmer Vernooij <jelmer@samba.org> wrote:
> On Mon, Jun 25, 2007 at 10:43:36AM -0500, Gerald (Jerry) Carter wrote:
> I really think Bazaar has the best approach of the various DVCS systems.
> They are also the (only?) one that focussed on correctness of model
> first rather than speed and that's really breaking them up at the
> moment.
>
> For the last half year I've used Bazaar for my Samba code, but while
> local performance has improved it's really, really slow to push across the
> full history of Samba over the wire all the time. Until lazy
> repositories/history horizons (being able to push/pull a tree without its
> history) land, I'll go back to Subversion for my Samba code.

Here are few points I've seen using git -

git-core is really low level. It is not advised for most newbies to
use git as is. Instead advisable to try cogito which is "version
control system layered on top of the git tree history
storage system"

Now comparing different dvcs -

Here's a (and partly uninformed) comparison  of different dvcs on
their various flaws and features -
http://changelog.complete.org/posts/528-Whose-Distributed-VCS-Is-The-Most-Distributed.html

And all that you needed to know about scm ( discussion to death ) -
http://versioncontrolblog.com/category/scm-tools-comparison/

Its interesting to note the comments from the Mozilla project on their
choice of version control.

But common to all of them - bzr is featureful but slow currently.

Coming to my personal tastes -
1. git really shines in cherry picking and multiway merge.
2. More importantly it supports both push and pull.
3. Personally I like git because of of its speed and size and the huge
push it receives because of its use by the kernel guys.

regards,
Chetan S

           

Ltdf de