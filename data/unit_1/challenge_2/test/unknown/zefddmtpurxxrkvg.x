From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 17:15:05 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61LF4L9005373
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 17:15:04 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E9F4E1638CE
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 21:15:00 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=BAYES_50,RCVD_IN_DSBL,
	SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.gmx.net (mail.gmx.net [213.165.64.20])
	by lists.samba.org (Postfix) with SMTP id 08A69162BC5
	for <samba-technical@lists.samba.org>;
	Sun,  1 Jul 2007 21:14:48 +0000 (GMT)
Received: (qmail invoked by alias); 01 Jul 2007 21:14:47 -0000
Received: from ppp-82-135-78-48.dynamic.mnet-online.de (EHLO [192.168.0.91])
	[82.135.78.48]
	by mail.gmx.net (mp056) with SMTP; 01 Jul 2007 23:14:47 +0200
X-Authenticated: #13714547
X-Provags-ID: V01U2FsdGVkX195Rwc5Eit5T1Iq5dXiEQcWpzfmSN0GfIS/ys/gVB
	JBG8hpxr2wNI6x
Message-ID: <46881987.2060509@gmx.de>
Date: Sun, 01 Jul 2007 23:15:51 +0200
From: seatec <seatec-astronomy@gmx.de>
User-Agent: Thunderbird 2.0.0.4 (X11/20070628)
MIME-Version: 1.0
To: samba-technical@lists.samba.org
References: <46878B2D.7070308@gmx.de> <4687FBAF.6020404@ubiqx.mn.org>
In-Reply-To: <4687FBAF.6020404@ubiqx.mn.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Y-GMX-Trusted: 0
Subject: Re: win2k3 to win98
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

Hi Chris,

thanks for your reply. When I first read it I thought "he wants me to
rtfm. great reply". I have (and also read) your book and done my fare
share of basic cifs auth coding. I know the davenport site, but I didnt
know the ms link. That one was nice, and finally helped me find the
solution.

Where winxp(and earlier) uses the plaintext --(DES)--> LM hash
--(DES)--> Ntlm hash scheme, Win2k3 uses the passwords md4 hash
--(DES)--> Ntlm hash. So the first step is different, the second is not.

What really confused me is that winxp and win2k3 sent exactly the same
packet, but a different password hash, and both actually worked.

Thanks for pointing that ms link out to me. It's sunday night and I
spent many hours on this problem this weekend. Seeing it solved before
the time ran out(too busy during the week) made my day(well, night).

seatec

Christopher R. Hertel wrote:
> Seatec:
> 
> Start here:
> 
>   http://ubiqx.org/cifs/SMB.html#SMB.8
> 
> That should get you most of the way from the old LM hash through NTLM, LMv2,
> and NTLMv2.
> 
> Once you've covered that, you may want to look at:
> 
>   http://www.microsoft.com/technet/technetmag/issues/2006/08/SecurityWatch/
> and
>   http://davenport.sourceforge.net/ntlm.html
> and, of course, Wikipedia.
> 
> The basic problem is that authentication is a moving target.  Microsoft,
> quite reasonably, has to keep introducing stronger authentication methods
> and defaulting to stricter requirements.  Newer systems may, for instance,
> require Kerberos authentication.
> 
> I hope that helps.
> 
> Chris -)-----
> 
> seatec wrote:
>> Hi everyone,
>>
>> after talking to Kai Blin on irc for half a night and part of the day he
>> pointed me to the list.
>>
>> I wrote a little pseudo-cifs server about 2 years ago, which works fine
>> for smbclient, XP (SP2) and others. It doesn't offer much, but it
>> negotiates the challenge/response authentication scheme
>>
>> The client password gets uppercased, padded with zeros to 14 bytes,
>> split into two halves of 7 bytes, 2 eight byte DES keys are created out
>> of those. These 2 keys are used to encrypt a static string -> 2 LM hashes.
>> Those two 16 byte lm hashes are padded with 5 zeros to 21 bytes, split
>> into 3 chunks, DES key creation, those are used to encrypt the challenge
>> -> 24 byte ntlm hash. Thats the scheme we are talking about.
>>
>> 2 nights ago I noticed it doesnt work for win2k3. Knowing the plaintext
>> password and seeing the challenge on the wire, I can create the hash,
>> and I can see smbclient or XP send exactly what I created. Win2k3 also
>> sends a 24 byte hash, but that one is completely off.
>>
>> Whats even more strange: I setup a win98 in vmware and made win2k3
>> connect to a share. I see the whole session negotiation, challenge/hash
>> exchange and everything, and again the hash "should be" different than
>> win2k3 is sending. But not only is the hash I see on the wire different,
>> win98 even accepts that hash and allows the client to log in with it.
>>
>> I don't have the slightest idea what kind of hash win2k3 is sending, and
>> why it works.
>>
>> Last night I compared the pcap of a winxp logging into my little pseudo
>> server with a win2k3 logging in. Both clients send the same flags, the
>> same fields(different account and machine names. but that shouldnt
>> matter), the same everything. As the plaintext password is the same and
>> the challenge for this testcase was static, they should both send the
>> same hash. smbclient sends what xp sends. win2k3 also sends a 24 byte
>> hash, but it's different.
>>
>> If anyone could tell me what kind of hash win2k3 is sending there I'd be
>>  grateful. I can provide pcaps, plaintext password, hash, session
>> key(challenge), ...
>>
>>
>> seatec
> 

                 

CqgC7