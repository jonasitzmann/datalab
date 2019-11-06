From perl6-all-return-82491-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 18:52:44 2007
Return-Path: <perl6-all-return-82491-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61MqgL9006279
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 18:52:42 -0400
Received: (qmail 1441 invoked by uid 514); 1 Jul 2007 22:52:37 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 1434 invoked from network); 1 Jul 2007 22:52:37 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: softfail (x1.develooper.com: transitioning domain of chromatic@wgz.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: parrot-porters@perl.org
Subject: Re: [svn:parrot] r19530 - in trunk/lib/Parrot: . Test
Date: Sun, 1 Jul 2007 15:51:44 -0700
User-Agent: KMail/1.9.6
Cc: "Paul Cochrane" <paultcochrane@gmail.com>
References: <20070701223557.DD805CB9E1@x12.develooper.com>
In-Reply-To: <20070701223557.DD805CB9E1@x12.develooper.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200707011551.44151.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

On Sunday 01 July 2007 15:35:57 paultcochrane@cvs.perl.org wrote:

> [lib] Removed conditional declaration problems so that code conforms to
> perl coding standards

I'm not convinced this is right.

(I've long thought that this policy was broken with regard to local 
declarations, which completely fails to exhibit the pseudo-static behavior 
that my declarations do.  That pseudo-static behavior is precisely the reason 
this policy exists!)

> Modified: trunk/lib/Parrot/Test.pm
> ===========================================================================
>=== --- trunk/lib/Parrot/Test.pm	(original)
> +++ trunk/lib/Parrot/Test.pm	Sun Jul  1 15:35:56 2007
> @@ -293,16 +293,21 @@
>          $err = "&STDOUT";
>      }
>
> -    local *OLDOUT if $out;
> -    local *OLDERR if $err;
> +    if ( $out ) {
> +      local *OLDOUT;
> +      # Save the old filehandles; we must not let them get closed.
> +      open OLDOUT, '>&STDOUT' or die "Can't save     stdout";  ## no
> critic InputOutput::ProhibitBarewordFileHandles +      open STDOUT, '>',
> $out or die "Can't redirect stdout to $out"; +    }

Outside of this block, *OLDOUT retains its previous value.  I'm not sure how 
you get *STDOUT's original value back with this revision.

> +    if ( $err ) {
> +      local *OLDERR;
> +      # Save the old filehandles; we must not let them get closed.
> +      open OLDERR, '>&STDERR' or die "Can't save     stderr";  ## no
> critic InputOutput::ProhibitBarewordFileHandles
>
> -    # Save the old filehandles; we must not let them get closed.
> -    open OLDOUT, '>&STDOUT' or die "Can't save     stdout" if $out;  ## no
> critic InputOutput::ProhibitBarewordFileHandles 

That declaration's awfully ugly, but if it's impossible to make the policy 
actually check what it should be checking, I prefer it to the 
local-and-dup-in-a-block, unless someone can demonstrate that the blocks 
don't do the wrong thing.

-- c

            

rwtbxJ