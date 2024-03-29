From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 09:25:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QDPlL9011264
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 09:25:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id CB00B16384B
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 13:25:44 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 577 seconds by postgrey-1.24 at dp.samba.org;
	Tue, 26 Jun 2007 13:25:00 GMT
Received: from mail2.odu.neva.ru (mail2.odu.neva.ru [194.85.100.6])
	by lists.samba.org (Postfix) with ESMTP id 539B4162BD9
	for <samba-technical@samba.org>; Tue, 26 Jun 2007 13:25:00 +0000 (GMT)
Received: from [194.85.100.33] (buc.odu.neva.ru [194.85.100.33])
	by mail2.odu.neva.ru (Postfix) with ESMTP id 39A7778089
	for <samba-technical@samba.org>; Tue, 26 Jun 2007 17:15:19 +0400 (MSD)
Message-ID: <46811167.1010909@odu.neva.ru>
Date: Tue, 26 Jun 2007 17:15:19 +0400
From: Dmitry Butskoy <buc@odusz.so-cdu.ru>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.0.12) Gecko/20070530 Fedora/1.0.9-1.fc5 SeaMonkey/1.0.9
MIME-Version: 1.0
To: samba-technical@samba.org
Content-Type: text/plain; charset=KOI8-R; format=flowed
Content-Transfer-Encoding: 7bit
Subject: mod_auth_ntlm_winbind now in Fedora
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

I'm glad to inform you that now "mod_auth_ntlm_winbind" is included into 
Fedora
(formely known as RedHat Linux, see http://www.fedoraproject.org)

It is an Apache module, and allows to authenticate users using winbind 
daemon. This way both NTLM and Negotiate auth types can be performed 
against a Windows domain. Proxy authentication is supported as well.

The source of this package still is present in Samba's CVS only (no any 
upstream site for now), but the code itself is stable and has enough 
history of usage. (For the source, see 
http://viewcvs.samba.org/cgi-bin/viewcvs.cgi/trunk/mod_auth_ntlm_winbind/?root=lorikeet 
)

I shall maintain this package in Fedora.

You can already check binary rpm packages in "updates-testing" repository:
http://download.fedora.redhat.com/pub/fedora/linux/updates/testing/7/i386/mod_auth_ntlm_winbind-0.0.0-0.5.20070129svn713.fc7.i386.rpm
as well as the source rpm:
http://download.fedora.redhat.com/pub/fedora/linux/updates/testing/7/SRPMS/mod_auth_ntlm_winbind-0.0.0-0.5.20070129svn713.fc7.src.rpm
and builds for another arches (x86_64, ppc, ppc64):
http://download.fedora.redhat.com/pub/fedora/linux/updates/testing/7/x86_64/mod_auth_ntlm_winbind-0.0.0-0.5.20070129svn713.fc7.x86_64.rpm
http://download.fedora.redhat.com/pub/fedora/linux/updates/testing/7/x86_64/mod_auth_ntlm_winbind-0.0.0-0.5.20070129svn713.fc7.ppc.rpm
http://download.fedora.redhat.com/pub/fedora/linux/updates/testing/7/x86_64/mod_auth_ntlm_winbind-0.0.0-0.5.20070129svn713.fc7.ppc64.rpm

Soon it should appear for general usage in Fedora "updates" repository.

Notes:
- some cosmetic (?) patch was needed for 64bit arches.
- it seems that it is a time to provide "normal" upstream tarball 
somewhere (what about ftp.samba.org/pub/mod_auth_ntlm_winbind -- the 
same way as for rsync and rzip ?..)


Regards,
Dmitry Butskoy
http://www.fedoraproject.org/wiki/DmitryButskoy

      

8foz<6mL