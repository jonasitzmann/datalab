From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 21:35:51 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5R1ZpL9020229
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 21:35:51 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2C8CE162C2A
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 01:35:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
X-Greylist: delayed 418 seconds by postgrey-1.24 at dp.samba.org;
	Wed, 27 Jun 2007 01:35:31 GMT
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.176])
	by lists.samba.org (Postfix) with ESMTP id 6B47F162AC0
	for <samba-cvs@samba.org>; Wed, 27 Jun 2007 01:35:31 +0000 (GMT)
Received: by wa-out-1112.google.com with SMTP id m34so22529wag
	for <samba-cvs@samba.org>; Tue, 26 Jun 2007 18:35:28 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
	b=qgEmaH2or5JFygVXi8GZNAYZTHqdZuV6ynhzHaWjZ+W7fL49aLxRN7sLIpSf630h0I3vl8CvHJVEXCzl/aqQcciVlR38H+VBkQIXWHdIbT8Ae7pG+lH6iAZhfJC/x0LDs9MnmVhlW/Wgsa1BmWIWsdajbg0TTv8svt6DtpDPvXU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
	b=fsLYk7MsWB0rD3tBr+S1W9dNgKKnAM9aMFno51bvdXiu7NNKGyI0gVw4SJbQPhf8BdULIYXiafWo0Iss2Fm2wkRB9Q10jFyJbj90Tf4/cq6hTIAB3OlmDEmRZBdXUU7rIted9LOr85BPIp6PD3lim1ctoziw4e856qMe/b/M0IA=
Received: by 10.114.108.15 with SMTP id g15mr6955447wac.1182907712482;
	Tue, 26 Jun 2007 18:28:32 -0700 (PDT)
Received: by 10.114.24.4 with HTTP; Tue, 26 Jun 2007 18:28:32 -0700 (PDT)
Message-ID: <517eb05c0706261828w4298a570x18e035a082d06f4c@mail.gmail.com>
Date: Tue, 26 Jun 2007 21:28:32 -0400
From: "Jim McDonough" <jmcd@samba.org>
To: samba-cvs@samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Google-Sender-Auth: aa0e54427111adfe
Subject: Re: svn commit: samba r23616 - in branches:
	SAMBA_3_0/source/include SAMBA_3_0/source/rpc_parse
	SAMBA_3_0/source/rpc_server SAMBA_3_0_25/source/include
	SAMBA_3_0_25/source/rpc_parse SAMBA_3_0_25/source/rpc_server
	SAMBA_3_0_26/source/include SAMBA_3_0
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

On 6/26/07, jmcd@samba.org <jmcd@samba.org> wrote:
> Log:
> Fix bugzilla #4719: must change password is not set from usrmgr.exe.
>
>
Hmm, I seem to have broken the RPC-SAMBA3-GETUSERNAME test now.  I
lost my network connection for several hours, and now I'm going to
bed.  Since you're not releasing something based on this code, I'll
fix it tomorrow.



-- 
-------------------
Jim McDonough
Samba Team
jmcd at samba dot org

                  

veg glo-x