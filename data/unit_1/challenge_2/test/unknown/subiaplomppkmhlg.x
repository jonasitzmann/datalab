From perl6-all-return-82533-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 02:10:34 2007
Return-Path: <perl6-all-return-82533-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l646AWL9006551
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 02:10:33 -0400
Received: (qmail 19793 invoked by uid 514); 4 Jul 2007 06:10:27 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19788 invoked from network); 4 Jul 2007 06:10:27 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
Mime-Version: 1.0 (Apple Message framework v752.3)
To: p2 <parrot-porters@perl.org>
Message-Id: <43602D5F-D07A-45FE-8A1B-6AB0FC139A3C@petdance.com>
Content-Type: multipart/alternative; boundary=Apple-Mail-1--936274636
From: andy@petdance.com
Subject: Headerizer docs
Date: Wed, 4 Jul 2007 01:09:15 -0500
X-Mailer: Apple Mail (2.752.3)
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,HTML_MESSAGE
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,HTML_MESSAGE

--Apple-Mail-1--936274636
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=US-ASCII;
	delsp=yes;
	format=flowed

Hello, this is a page from the workspace that I wanted you to see.  
This page is also available for viewing or editing on the web at:

http://www.perlfoundation.org/parrot/index.cgi?headerizer

Headerizer creates function declarations based on function  
definitions. It scans the source files passed to it and extracts
the function declarations. Then it puts them into the appropriate .h  
file or, in the case of static functions, back into the source file  
itself.

The headerizer also adds function attributes as specified by the  
decorations on the source.

All of these macros are GCC-specific right now, but soon will have  
equivalent semantics for lint added to them. This will make lint a  
far more powerful tool. If/when we ever get splint going, too, we can  
add semantics there as well.

The goal

I'm trying to create as many seat belts and idiot lights as possible.  
Using C macros and automatic function declaration generation makes  
this much easier for me to do, and is far more maintainable.

What's a shim?

Think of "shim" as shorthand for "placeholder". It's 64% shorter.

GCC (and lint) likes to complain (as well it should) if you pass an  
argument into a function and don't use it. If we know that we're not  
going to use an argument, we can either remove the argument from the  
function declaration, or mark it as unused.

Throwing the argument away is not always possible. Usually, it's  
because the function is one that gets referred to by a function  
pointer, and all functions of this group must have the same, say,  
three args: Interp, Foo and Bar. Maybe a given function doesn't use  
Foo, but we still have to accept Foo. In this case, we can in the  
body of the func, UNUSED(Foo), if we plan to use it in the future.  
Or, if we never will use it, mark it as a SHIM(Foo) in the declaration.

Decorators

Function decorators

/* WARN_UNUSED */
Use this to flag functions where it is definitely an error to call it  
without checking its return value.
Headerizes to __attribute__warn_unused_result__
/* MALLOC */
Denotes functions that return a new piece of memory, such that losing  
the return value would cause a memory leak.
Headerizes to __attribute__malloc__
/* CONST */
For functions that operate only on their operands, do not use global  
memory, and have no side effects. The compiler can optimize away  
repeated calls to CONST functions. mod() is a good example. rand() is  
an anti-example. Note that this sense of const is unrelated to the  
const qualifier on variables.
Headerizes to __attribute__malloc__
/* PURE */
Less stringent than CONST. Can check global memory or dereference  
pointers. strlen() is a good example.
Headerizes to __attribute__pure__
/* NORETURN */
For functions that never return. This can help the compiler's program  
flow analysis. Functions like exit() the compiler already knows  
about, but others like internal_exception() we have to tell it about.
Headerizes to __attribute__noreturn__
Function argument decorators

/* NN */
GCC warns if it determines that a NULL could be passed to this argument.
Headerizes to __attribute__nonnull__
SHIM(int foo)
Squelches warnings about being unused, and since it manges the  
argument name, you can't accidentally use the argument without  
specfically unshimming the argument.
Headerizes to int foo_unused __attribute__unused__.
Interpreters

There are only two states for the interpreter: Used, or shimmed. If  
we're using it, it has to be /NN/. (Except in a couple of cases like  
real_exception) The interpreter is so common in functions, we give it  
its own two macros: INTERP and SHIM_INTERP.

SHIM_INTERP
Headerizes to SHIM(Interp *interp)
Because it's shimmed, we're guaranteed we won't accidentally use it.
INTERP
Any interpreter that isn't a shimmed interpreter must be non-null.
Headerizes to Interp *interp /*NN*/
Examples

PARROT_API
INTVAL
string_str_index(INTERP, const STRING *s /*NN*/,
         const STRING *s2 /*NN*/, INTVAL start)
     /* WARN_UNUSED */

string_bool is part of the Parrot API, and returns in INTVAL. The  
interpreter is used somewhere in the function. String s and s2 cannot  
be NULL. If the calling function ignores the return value, it's an  
error, because you'd never want to call string_str_index() without  
wanting to know its value.

PARROT_API
INTVAL
parrot_hash_size(SHIM_INTERP, const Hash *hash /*NN*/)
     /* PURE, WARN_UNUSED */
{
     return hash->entries;

This function is a pure function because it only looks at its  
parameters or global memory. The interpreter doesn't get used, but  
needs to be passed because all PARROT_API functions have interpreters  
passed, so is flagged as a SHIM_INTERP.

Comments?

xoxo,

Andy


--Apple-Mail-1--936274636--

       

4c<2B