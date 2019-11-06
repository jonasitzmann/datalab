From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sat Jun  9 03:03:39 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5973cL9006335
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 03:03:38 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id A6C0A2E78A; Sat,  9 Jun 2007 07:03:06 +0000 (UTC)
Old-Return-Path: <kern@sibbald.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=4.0 tests=AWL,BAYES_00,SPF_HELO_PASS,
	SPF_PASS autolearn=no version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from matou.sibbald.com (matou.sibbald.com [194.158.240.20])
	by murphy.debian.org (Postfix) with ESMTP id 6A8C32E678
	for <debian-legal@lists.debian.org>; Sat,  9 Jun 2007 06:47:02 +0000 (UTC)
Received: from rufus (rufus [192.168.68.112])
	by matou.sibbald.com (8.13.7/8.13.6) with ESMTP id l596kbH3002266;
	Sat, 9 Jun 2007 08:46:37 +0200
From: Kern Sibbald <kern@sibbald.com>
To: Steve Langasek <vorlon@debian.org>
Subject: Re: Bacula: GPL and OpenSSL
Date: Sat, 9 Jun 2007 08:46:36 +0200
User-Agent: KMail/1.9.5
Cc: debian-legal@lists.debian.org, John Goerzen <jgoerzen@complete.org>
References: <20070607.121728.130625009.walter@geodynamics.org> <200706080911.45990.kern@sibbald.com> <20070609062625.GA31980@dario.dodds.net>
In-Reply-To: <20070609062625.GA31980@dario.dodds.net>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706090846.36790.kern@sibbald.com>
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <PKDJV.A.G_F.qClaGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36676
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sat,  9 Jun 2007 07:03:06 +0000 (UTC)

On Saturday 09 June 2007 08:26, Steve Langasek wrote:
> On Fri, Jun 08, 2007 at 09:11:45AM +0200, Kern Sibbald wrote:
> 
> > However, the "strict" interpretation would imply that the GPL is not fair 
(in 
> > the sense of compaints about the Novell - Microsoft contract), because I 
can 
> > distribute Bacula binaries because no where on any of the project sites do 
we 
> > distribute OpenSSL, but then the strict definition says that you cannot 
> > distribute Bacula because you have OpenSSL someplace on the distribution 
> > disks, or on your servers.
> 
> I'm not familiar with the arguments that have been made in the case of
> Novell-Microsoft.  I'm certainly not aware of any argument why this aspect
> of the GPL is not "fair" (=permitted under law) in a legal sense.

Well, one of the main objections to the Novell-Microsoft contract from what I 
understand is that Microsoft has promissed not to pursue Novell or Novell's 
customers for any violation of Microsoft patents.  According to FSF, if I 
understand it right, this is unfair because it only protects a part of the 
GPL users and not everyone.  Any such license should, according to them, 
apply to all or none.

> 
> > > In recent times, it 
> > > appears that some Unix vendors such as Sun and Apple have also begun
> > > distributing GNU software as part of systems whose cores are not 
licensed
> > > compatibly with the GPL, with the FSF's tacit consent; that seems
> > > ill-advised to me, but in any case the FSF's interpretations of the GPL
> > > aren't binding on other copyright holders where those interpretations 
don't
> > > follow logically from the text of the license.
> 
> > I'm not sure Sun and Apple are so ill-advised.
> 
> Sorry, I meant that I considered it ill-advised for the FSF to give their
> tacit approval. :)

I suspect that they are trying to be "practical" and don't want to chase after 
users in "technical" violations where there is no intent to subvert Open 
Source objectives.

> 
> > > > By the way, just to be clear, I consider all this (not you guys but 
these 
> > > > license difficulties) to be a real pain.  As long as the code is Open 
> > Source 
> > > > (i.e. I can get it, see it and modify it), I have no problem with it 
being 
> > > > linked with Bacula. 
> 
> > > Ah, well, that right there is sufficient for us to use as a license
> > > exception grant. :)  But of course it's not binding on other copyright
> > > holders.
> 
> > If that resoves the problems, great.  Here is what I have just added to 
the 
> > LICENSE file -- hopefully it should be clear.  Here is a snippet from the 
> > LICENSE file ...
> 
> > ...
> > License:
> > For the most part, Bacula is licensed under the GPL version 2
> > this code is listed under Copyright Free Software Foundation
> > Europe e.V. A small part of the code (less than 20 files) is
> > copyrighted under the GPL by other people (FSF, Sun, ...).
> 
> Oh.  So this is a case where you've assigned copyright to FSFE?  Does the
> FSFE's copyright assignment procedure give you the right to continue
> licensing your code under any license of your choice?

Yes. They have a fiduciary licence arrangement with us (me).  The project can 
decide what license it will use.  There is a certain amount of mutual 
consentment, but there is no question that they are not going to (and did not 
when I told them) complain about removing modifications to the GPL.

So it is clear, I do have the right to license the software anyway I want, but 
of course, if I license it differently, that would be a fork or a special 
deal, and might not hold for the project, which is dedicated to Open Source.  
FSFE also has certain rights and obligations.  99.9% of it is spelled out on 
their web site.

> 
> > What follows is information from the authors of the code:
> 
> > Linking:
> > Bacula may be linked with any libraries permitted under the GPL.
> > However, if configured with encryption Bacula does use the
> > OpenSSL libraries which are, unfortunately, not compatible with
> > GPL v2.  To the best of our knowledge these libaries are not
> > distributed with Bacula code because they are shared objects, and
> > as such there is no conflict with the GPL according what I (Kern)
> > understand in talking to FSFE, and in any case, for the code that
> > I have written, I have no problems linking in OpenSSL (of course
> > this does not speak for the few files in Bacula that are
> > copyrighted by others).  If you take a more severe stance on this
> > issue, and you are going to distribute Bacula, then simply do not
> > use the --with-openssl when building your package, and no use of
> > OpenSSL even through dynamic linking will be included.
> > ...
> 
> Seems rather overwrought to me for inclusion in a license file.  I would
> suggest one of the following two approaches, either:
> 
>   In addition, for code copyright $foo, permission is explicitly granted to
>   distribute binaries dynamically linked with libraries distributed under
>   the OpenSSL license, even in cases where those libraries are distributed
>   together with the binaries.
> 
> or:
> 
>   It is the understanding of $foo that the GPL permits distribution of
>   binaries dynamically linked to OpenSSL, even in cases where OpenSSL is
>   distributed together with the binaries.
> 
> But if the code is copyright: FSFE, I don't know if this is something you
> would have to clear with them first.

I believe that doing what you suggest would modify the GPL, and I don't want 
to do that since it puts me according to FSFE and Red Hat in violation of 
other people's licenses.

> 
> > > > The problem is that those third-party sources are linked into the 
Bacula 
> > > > binaries, and since they are licensed as GPL with no modifications, I 
> > > > cannot include them in a binary that has code that is licensed in a 
way
> > > > that is incompatible with the GPL.  Adding the OpenSSL exception to my
> > > > license makes my code incompatible with the non-modified GPL, and
> > > > hence I was violating the license on those 3rd party files
> > > > (copyrighted by FSF, ATT, Sun, and a few others ...). 
> 
> > > To be clear here, it's not incompatible with the GPL for you to grant
> > > additional linking permissions, which is what is being done.  The only 
real
> > > issue is that you can't grant such permission on behalf of other 
copyright
> > > holders.
> 
> > That is what I believed, but according to Fedora/Red Hat and FSFE, the 
fact 
> > that I have mixed code in a single binary that is "pure" GPL for which I 
> > (FSFE) do not hold the copyright and GPL with a modified license violates 
the 
> > license given by the authors of the "pure" GPL.  Since that is serious to 
me, 
> > and I am not a lawyer, and I have first hand experience in how "illogical" 
> > (IMO) judges can be, I prefer to avoid the problem and not modify the GPL.  
> > So now Bacula is all "pure" GPL with no modifications with my explanations 
in 
> > notes rather than as modifications of the license.
> 
> What I understand from your other message is that previously, you had
> modified the text of the license under which the code was being distributed.
> That in particular is something that you can't do without permission from
> all of the copyright holders, AFAICS.

Yes.

> 
> Cheers,
> -- 
> Steve Langasek                   Give me a lever long enough and a Free OS
> Debian Developer                   to set it on, and I can move the world.
> vorlon@debian.org                                   http://www.debian.org/
> 


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org



  hlt