From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 10:58:59 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QEwxL9012313
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 10:58:59 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1E72B1638CA
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 14:58:56 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail2.odu.neva.ru (mail2.odu.neva.ru [194.85.100.6])
	by lists.samba.org (Postfix) with ESMTP id C7BC2162ADF
	for <samba-technical@samba.org>; Tue, 26 Jun 2007 14:57:52 +0000 (GMT)
Received: from [194.85.100.33] (buc.odu.neva.ru [194.85.100.33])
	by mail2.odu.neva.ru (Postfix) with ESMTP id 4196B78089;
	Tue, 26 Jun 2007 18:57:52 +0400 (MSD)
Message-ID: <46812970.5010205@odu.neva.ru>
Date: Tue, 26 Jun 2007 18:57:52 +0400
From: Dmitry Butskoy <buc@odusz.so-cdu.ru>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.0.12) Gecko/20070530 Fedora/1.0.9-1.fc5 SeaMonkey/1.0.9
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <46811167.1010909@odu.neva.ru> <46812313.10709@samba.org>
	<1182869016.2895.62.camel@localhost.localdomain>
In-Reply-To: <1182869016.2895.62.camel@localhost.localdomain>
Content-Type: text/plain; charset=KOI8-R; format=flowed
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: mod_auth_ntlm_winbind now in Fedora
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

simo wrote:
> But do we really need to keep it separated from the main samba tree?
> What's the advantage?
>   

By its nature this code is not related to Samba (just used 
/usr/bin/ntlm_auth, and nothing more).

OTOH it is much more Apache-related.

Just thoughts.


~buc

              

md-Vn