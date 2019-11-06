From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 27 19:01:02 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RN11L9001164
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 19:01:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 32F6E162BCA
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 23:00:58 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C197A162AFD;
	Wed, 27 Jun 2007 23:00:18 +0000 (GMT)
From: simo <idra@samba.org>
To: SATOH Fumiyasu <fumiyas@osstech.jp>
In-Reply-To: <874pkvs2pa.wl%fumiyas@osstech.jp>
References: <46809A05.5090007@samba.org>  <874pkvs2pa.wl%fumiyas@osstech.jp>
Content-Type: text/plain
Organization: Samba Team
Date: Wed, 27 Jun 2007 19:00:18 -0400
Message-Id: <1182985218.2895.125.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, samba-technical@samba.org
Subject: Re: Proposal for SAMBA_3_0/README.Coding
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

On Tue, 2007-06-26 at 14:29 +0900, SATOH Fumiyasu wrote:
> FYI.
> 
> At Mon, 25 Jun 2007 23:45:57 -0500,
> Gerald (Jerry) Carter wrote:
> > * Use 8 Space Tabs to Indent
> >   No whitespace filler.
> 
> For generic(?) vi's .exrc:
> 
> set tabstop=8
> set shiftwidth=8
> 
> > * No Trailing Whitespace
> >   Use source/script/strip_trail_ws.pl to clean you files before committing.
> 
> For VIM's .vimrc:
> 
> if has("syntax") && (&t_Co > 2 || has("gui_running"))
> 	syntax on
> 	function! ActivateInvisibleCharIndicator()
> 		syntax match TrailingSpace "[ \t]\+$" display containedin=ALL
> 		highlight TrailingSpace ctermbg=Red
> 	endf
> 	autocmd BufNewFile,BufRead * call ActivateInvisibleCharIndicator()
> endif

I added this to mark the characters that go over the 80 column mark:

set textwidth=80
au BufNewFile,BufRead *.c,*.h exec 'match Todo /\%>' .  &textwidth .
'v.\+/' 


Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

             

deDv
