From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun 14 04:01:00 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5E80xL9018442
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 04:00:59 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id BCB142E61C; Thu, 14 Jun 2007 08:00:17 +0000 (UTC)
Old-Return-Path: <lrnatwork@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=BAYES_00,SPF_PASS 
	autolearn=no version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by murphy.debian.org (Postfix) with ESMTP id CF8122E5B8
	for <debian-legal@lists.debian.org>; Thu, 14 Jun 2007 07:42:51 +0000 (UTC)
Received: by ug-out-1314.google.com with SMTP id t39so605211ugd
        for <debian-legal@lists.debian.org>; Thu, 14 Jun 2007 00:43:22 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:date:to:subject:organization:content-type:mime-version:references:content-transfer-encoding:message-id:in-reply-to:user-agent:from;
        b=misyp73DIGRAN6oVAeDGhlkrIoWKTZDTd9GEZa6yGJgNm5/PD66C94wrtBK0AUERzidF6wf2ksvP2oG6k9djhHNZbvZ6kHA4RXOmltnZr5/qFUQauFMvCkrz0Rqv84zk3sbW/JmhoAIN6THfi3y/0rYqQHWeZlrWue9qX01hq/U=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:date:to:subject:organization:content-type:mime-version:references:content-transfer-encoding:message-id:in-reply-to:user-agent:from;
        b=h2rMcQjt2N3xpTovAxAQ4n0JQPwnlCHMGeZlo2hdnmflA6v3EsMGhe4cxgfQhnitv2vK0CsuyfX/9EVhOBTTHLpCxW5PEPYICsotK/xhQWKMUHszrrOKwu3Lxx5JXPykkQRn+mQz8T4AOBymqRe7F4LQrA9/gkFO80cr4KWkbI4=
Received: by 10.67.88.20 with SMTP id q20mr1887007ugl.1181807002849;
        Thu, 14 Jun 2007 00:43:22 -0700 (PDT)
Received: from aclre01t.acure.net ( [83.95.240.21])
        by mx.google.com with ESMTP id z37sm3533214ikz.2007.06.14.00.43.21
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 14 Jun 2007 00:43:22 -0700 (PDT)
Date: Thu, 14 Jun 2007 09:43:23 +0200
To: "Gervase Markham" <debian-legal@lists.debian.org>
Subject: Re: First draft of AGPL v3
Organization: infimum.dk
Content-Type: text/plain; format=flowed; delsp=yes; charset=iso-8859-15
MIME-Version: 1.0
References: <20070611235730.3c124b7e.frx@firenze.linux.it> <466E7688.1060004@mozilla.org> <20070613013114.7b7868a3.frx@firenze.linux.it> <466FFB8A.6000207@mozilla.org>
Content-Transfer-Encoding: 7bit
Message-ID: <op.ttwielg8f0ffa2@aclre01t.acure.net>
In-Reply-To: <466FFB8A.6000207@mozilla.org>
User-Agent: Opera Mail/9.20 (Win32)
From: Lasse Reichstein Nielsen <lrnatwork@gmail.com>
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <nGYXYD.A.oZD.RWPcGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36693
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Thu, 14 Jun 2007 08:00:17 +0000 (UTC)

On Wed, 13 Jun 2007 16:13:30 +0200, Gervase Markham <gerv@mozilla.org>  
wrote:

> But surely the entire point in question is whether presenting the UI to  
> someone across the network is conveying or not? GPLv3 says it isn't,  
> AGPL says it is.
>
> Perhaps it would be better (in respect of this particular question) if  
> the AGPL extra clause said simply:
>
> "Notwithstanding any other provision of this License, if a user  
> interacts with the program remotely through a computer network, then  
> that is considered an act of conveying." (i.e. change the definition of  
> conveying in section 0.)

That still leaves open the question of what it means to "interact" with
the progam.
How many steps removed can it be? If I interact with an ATM that  
communicates
with a server that requrests data from a web service that uses a database
that is covered by the AGPL ... am I interacting with it? Is it being  
coveyed?
What if the AGPL is in the web service? It still has no UI itself. Is the
ATM customer interacting with that?
If not, the AGPL would be trivial to cicumvent by splitting the covered
part into a separate component without a UI and interacting with it
"remotely".

/L
-- 
Lasse R. Nielsen - atwork@infimum.dk
  'Faith without judgement merely degrades the spirit divine'
  Reproduction of this message, or parts thereof, is allowed if proper  
attribution is given.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

     

c+n 9OIozcc