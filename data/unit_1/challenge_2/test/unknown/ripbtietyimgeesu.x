From perl6-all-return-81716-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 12:30:47 2007
Return-Path: <perl6-all-return-81716-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51GUkhB012183
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 12:30:46 -0400
Received: (qmail 29809 invoked by uid 514); 1 Jun 2007 16:30:39 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29804 invoked from network); 1 Jun 2007 16:30:39 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of mehmet.yavuz.selim@gmail.com designates 209.85.146.182 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=Yq77vC9uhaQVy5CDOXkpxeGQe5OO2VXhx1qlg5dDYIpOGhJeEvzWNCf/nD6OD0h3shKHroC1Ia3EjgqHIU5LwCPJ/lQFBXPaztv14Gdf1S7Ygvgd2LzsI9hGK3rgxVz5jOo0Fi4WVBzgonWX7XNIl8j3cumO1lKZDD5LBnQ+Vno=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=gtfT2jdC79HXYyXYNsSczL9UB4e9WXB3ImjNl4vLjcoPrSOySOc2+KhqS+z4a0Wf9Rsuuep4ajtdbIJlHxypkuZbgdlWKQTqZ8tKj4jzDQOxOZmzFP8sYgM4EpnvqX7aa4/uxbxdTyRQm4k/B0gQMLoodyNkxhDI/DjiXfzm/i0=
Message-ID: <1abd9eb20706010903t2f95a6cfi9cbdcfbddd4564c9@mail.gmail.com>
Date: Fri, 1 Jun 2007 18:03:09 +0200
From: "Mehmet Yavuz Selim Soyturk" <mehmet.yavuz.selim@gmail.com>
To: perl6-internals@perl.org
Subject: mmd for bitwise_and causes a segfault with my pmc types
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Hello,

I have two pmc classes PjsNumber and PjsBoolean, which define
bitwise_and like this:

    PMC* bitwise_and(PMC* value, PMC* dest) {
        FLOATVAL a, b;
        if (! dest) {
            dest = pmc_new(INTERP, dynpmc_PjsNumber);
        } else if (dest->vtable->base_type != dynpmc_PjsNumber) {
            VTABLE_morph(INTERP, dest, dynpmc_PjsNumber);
        }
        a = DYNSELF.get_number();
        b = VTABLE_get_number(INTERP, value);
        VTABLE_set_number_native(INTERP, dest, (INTVAL)a & (INTVAL)b);
        return dest;
    }

It seems to work in general, but in some cases (especially when I
allocate too much memory) it causes me a segfault
or an error like: Trace/breakpoint trap (core dumped)

An example of such a case:

.HLL 'Pjs', 'pjs_group'
.loadlib 'pjs_group_ops'

.sub _ :main
    use_much_memory()
    test()
.end

.sub test :anon
    .local pmc a, b, c, d, e
    a = new .PjsBoolean
    b = new .PjsNumber
    c = new .PjsNumber
    d = new .PjsNumber
    e = new .PjsNumber

    c = a & b
    trace 1
    e = c & d
.end

.sub use_much_memory
    $P0 = new .ResizablePMCArray
    $I0 = 0
  loop:
    $P1 = new .String
    $P1 = 'hello world'
    $P0[$I0] = $P1
    inc $I0
    if $I0 < 100000 goto loop
    .return ($P0)
.end


~/parrot_svn/parrot/languages/pjs$ parrot mmd.pir
    43 bitwise_and P4, P2, P3           P4=PjsNumber=PMC(0xb62aa00c)
P2=PjsNumber=PMC(0xb62aa034) P3=PjsNumber=PMC(0xb62aa020)
Trace/breakpoint trap (core dumped)

~/parrot_svn/parrot/languages/pjs$ parrot --no-gc mmd.pir
    43 bitwise_and P4, P2, P3           P4=PjsNumber=PMC(0xb60c0fa8)
P2=PjsNumber=PMC(0xb60c0fd0) P3=PjsNumber=PMC(0xb60c0fbc)
Segmentation fault (core dumped)


I am new to debugging, but (if I didn't do anything wrong) I think
that the problem resides in the mmd table of bitwise_and.

in function mmd_dispatch_p_ppp in src/mmd.c, while executing the
second bitwise_and:


    real_function = (mmd_f_p_ppp)get_mmd_dispatcher(interp,
            left, right, func_nr, &is_pmc); // is_pmc is set to 0
here, but I set it to 1 from the debugger

    if (is_pmc) {
        PMC * const sub = (PMC*)real_function; // if I look at the
contents of sub, it is a .String pmc with content "Hello world"


I have the same problem with bitwise_or. I am suspecting that the mmd
table gets somehow overwritten, but I wasn't capable of finding out
if/how it's.

Any ideas? Did I do something wrong implementing my PMC's, or could it
be a general parrot problem? But I couldn't trigger the same problem
with parrot .Integer or .Float types.

-- 
Mehmet

                

,kL5Bhn9<