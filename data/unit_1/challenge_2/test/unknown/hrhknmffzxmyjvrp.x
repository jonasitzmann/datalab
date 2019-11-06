From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 14:08:26 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54I8PhB031125
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 14:08:25 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D987E163820
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 18:08:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 12136162BDE;
	Mon,  4 Jun 2007 18:07:37 +0000 (GMT)
From: simo <idra@samba.org>
To: James Peach <jpeach@samba.org>
In-Reply-To: <089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>
	<1180906540.24923.198.camel@localhost.localdomain>
	<46636B0C.2030202@samba.org>
	<1180928372.24923.238.camel@localhost.localdomain>
	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Mon, 04 Jun 2007 14:07:36 -0400
Message-Id: <1180980456.24923.258.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: getting rid of mkproto.sh from Samba3
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

On Mon, 2007-06-04 at 09:03 -0700, James Peach wrote:

> No, the real problem is the internal interfaces.
> 
> For example, in kerberos_verify,c, there is a call to  
> "name_to_fqdn(my_fqdn, global_myname())".
> 
> If the host has a DNS configuration that includes a conventional  
> search path, this works. If it works, it does exactly the same thing  
> as get_mydnsfullname(). In fact, there are no uses of name_to_fqdn()  
> that cannot be replaced by get_mydnsfullname(). AFAICT, name_to_fqdn()  
> exists only because someone was not able to find get_mydnsfullname().

AFAICS they are different enough that if you swap them I expect some
code will stop to work properly.
That said I guess you can merge them and make sure callers use them the
right way.

> If I have a decent header file, I can see the full interface in a  
> single screen, along with comments, macros and typedefs. I don't think  
> the argument about the extra typing involved in changing headers by  
> hand is very strong, since the code needs to be read and understood  
> thousands more times than it needs to be written.

I am not sure the duplication is because we missed a full header file
for util.h, but maybe it is just me.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

      

_=hcnlbr1ag