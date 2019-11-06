From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun 28 06:46:39 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SAkXL9009284
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 06:46:34 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E4E202E49A; Thu, 28 Jun 2007 10:46:24 +0000 (UTC)
Old-Return-Path: <ondrej.certik@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=4.0 tests=AWL,SPF_PASS autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by murphy.debian.org (Postfix) with ESMTP id E30422E529
	for <debian-legal@lists.debian.org>; Thu, 28 Jun 2007 10:46:12 +0000 (UTC)
Received: by wa-out-1112.google.com with SMTP id n4so1479689wag
        for <debian-legal@lists.debian.org>; Thu, 28 Jun 2007 03:46:11 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=Fa9T3Sg7jFlQ8TVgLcEgnQS9Q655geF54AZ4O+//zxMDcEeOi/MNGnup4qfzMs+ZoNByO5tomuMwO+89MrVmzYxSEAQZOEdfInlFvVQf99zcgbceLEuzjH28iJc4CojCtA2+o9Czl7xljpag2y8XINZ5E7rR6sqn6J2gVq0vQqs=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=eyw+xdDuyBxadFRbrwZF5w0XZ15oeEp8PQaIace2cp35GtfqGuGpRzt6mEAYCaLs1gyIx+G5kom12LgvUNcQI9Hdnt/kMPWVB0gZhfRo/GDkXFg5KSCQM1Mn5zf4ZfeAGYbdNndtK8NPYPPp+IWpjIr4aNK7lKn9HUHAX8CMPZs=
Received: by 10.114.93.17 with SMTP id q17mr1424699wab.1183027571069;
        Thu, 28 Jun 2007 03:46:11 -0700 (PDT)
Received: by 10.115.73.12 with HTTP; Thu, 28 Jun 2007 03:46:11 -0700 (PDT)
Message-ID: <85b5c3130706280346y4893c540w66300003dafda3f7@mail.gmail.com>
Date: Thu, 28 Jun 2007 12:46:11 +0200
From: "Ondrej Certik" <ondrej@certik.cz>
Sender: ondrej.certik@gmail.com
To: debian-legal@lists.debian.org
Subject: slepc license
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Google-Sender-Auth: 51f2919e8b383889
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <syOvZC.A.TnE.AG5gGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36742
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Thu, 28 Jun 2007 10:46:24 +0000 (UTC)

Hi,

I would like to package SLEPc eigenvalue solvers[0] into non-free, the
license is below. There is a line "A modified version of the software
cannot be redistributed". The debian package can be built without
modificating the upstream sources though, so my question is, can it go
into non-free? And if not, the upstream authors asked me what words
should be added to the license in order for the Debian to be able to
distribute it in non-free?

Thanks very much,
Ondrej Certik

[0] http://www.grycap.upv.es/slepc/

The SLEPc license:

Copyright (c) 2002-2007, Universidad Politecnica de Valencia, Spain

This software is provided 'as is', with absolutely no warranty,
expressed or implied. Any use is at your own risk. In no event will
the authors be liable for any direct or indirect damages arising in
any way out of the use of this software.

The user will acknowledge (using reference [1]) the contribution of
the software in any publication of material dependent on its use.

The user can modify the code but at no time will the right or title to
all or any part of this software pass to the user. A modified version
of the software cannot be redistributed. The software (or a modified
version) may not be sold.

This software is free for academic and research use. This means that a
person working in an academic or research institution such as a
university or a government laboratory can use the software without
formally requiring a license.

For commercial use, it is necessary to sign a software license
agreement. This includes all users working for a private company, even
if the software is going to be used only for in-house research
activities. A reasonable testing period is allowed before asking for
the license.


[1] V. Hernandez, J. E. Roman and V. Vidal (2005), SLEPc: A Scalable
and Flexible Toolkit for the Solution of Eigenvalue Problems, ACM
Trans. Math. Softw. 31(3), 351-362.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

  

lbZe Ti6g.li>