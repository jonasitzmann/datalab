From sugar-bounces@lists.laptop.org  Thu Jun 28 20:54:27 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5T0sOL9017809
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 20:54:24 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id B7E9658BC80B;
	Thu, 28 Jun 2007 20:53:16 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id B1F6758BC7E8; Thu, 28 Jun 2007 20:53:14 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id AFD9258BC7E2
	for <sugar@laptop.org>; Thu, 28 Jun 2007 20:53:14 -0400 (EDT)
X-ASG-Debug-ID: 1183078449-5b5100040000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: wx-out-0506.google.com[66.249.82.232]
X-Barracuda-Start-Time: 1183078449
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.232])
	by spam.laptop.org (Spam Firewall) with ESMTP id 7E88F327B
	for <sugar@laptop.org>; Thu, 28 Jun 2007 20:54:09 -0400 (EDT)
Received: by wx-out-0506.google.com with SMTP id h30so1398527wxd
	for <sugar@laptop.org>; Thu, 28 Jun 2007 17:54:09 -0700 (PDT)
Received: by 10.90.54.4 with SMTP id c4mr2682220aga.1183078449189;
	Thu, 28 Jun 2007 17:54:09 -0700 (PDT)
Received: by 10.90.68.11 with HTTP; Thu, 28 Jun 2007 17:54:09 -0700 (PDT)
Message-ID: <fd535e260706281754p1fa01dc3mf9ef33ba48da0ffe@mail.gmail.com>
Date: Thu, 28 Jun 2007 20:54:09 -0400
From: "Walter Bender" <walter.bender@gmail.com>
To: "OLPC Devel" <devel@laptop.org>, sugar@laptop.org
X-ASG-Orig-Subj: OLPC software: our first release and beyond.
MIME-Version: 1.0
Content-Disposition: inline
X-Barracuda-Bayes: INNOCENT GLOBAL 0.1589 1.0000 -1.0513
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -1.05
X-Barracuda-Spam-Status: No, SCORE=-1.05 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.21261
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: [sugar] OLPC software: our first release and beyond.
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: walter@laptop.org
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5T0sOL9017809

OLPC software efforts have been, from Day 1, a community effort. The
extent to which the community has risen to the occasion at every
level�from firmware to application and content development�is an
inspiration. As we approach our final series of trial software
releases this summer and our first release this fall, it is
appropriate to reflect on what we have achieved and where we are
heading.

Starting with firmware, the transition to Open Firmware, led by Mitch
Bradley, has given us a powerful, simple, and robust platform upon
which to build a stable and open system. Most of the core
functionality is present (and debugged). The recent refactoring of the
communications protocols used to communicate with our Embedded
Controller (EC) better positions us�over time�to rewrite the entirety
of the EC code in an open and more streamlined fashion and release it
as free software. The efforts of Marvell and Cozybit have brought us
to the point where all the core mesh functionality now works. Efforts
to track (and help steer) the emerging 802.11s standard continue; and
movement towards a free and open software stack to run on the mesh
co-processor proceed. We are firmly committed to software freedom and
anticipate�as the mesh and EC code become open�offering free software
to run all the subcomponents in our machine.

At the kernel level, through combined efforts of the OLPC team, Red
Hat, AMD, and the Linux community, we continue to track the kernel
mainline and contribute upstream all of our improvements and bug
fixes. At several places we have diverged�perhaps the most
controversial being our choice of VServer as an interim container
virtualization solution�but for the most part we have succeeded in
leveraging the work of the broader community and keeping our
differences to a minimum.

Our choice of Fedora�we are almost transitioned to the newly-released
Fedora Core 7�as our distribution has also contributed to controversy
within the Linux community. There are any number of small-footprint
distributions that may well have served our purposes, but Fedora met
and continues to meet our needs; and the dedication of the Red Hat
team at every level has been extraordinary. Without the likes of
Marcelo Tosatti and David Woodhouse, we would be far short of our
goals. Red Hat shares our uncompromising dedication to free and
open-source solutions and continues to go the extra mile to ensure
that neither quality or principles are sacrificed.

The user experience through the Sugar interface puts us within reach
of many of our goals: simplicity without compromised functionality;
discoverability and usability; security and robustness; transparency
through layered exploration; and, perhaps most important, support for
a learning environment that is both expressive and collaborative. The
UI team, led on the design side by Pentagram and OLPC's Eben Eliason
and on the software side by Red Hat's Marco Gritti (Bryan Clark and
Seth Nickell contributed to some of the early foundational design
work), has created a framework that offers powerful simplicity without
limiting the richness of interaction that children can have with each
other and their teachers.

As we expand upon the work of Dan Williams and the Collabora team, we
will see more Activities that run across multiple laptops, which
enable a new level of collaboration for individual and group projects.
Many of these features are built directly into Activities such as
Etoys, but a common framework and API is key to making collaboration a
system-wide feature. The Presence Service, which governs how children
represent and find each other on the network, is essentially complete.
Our next software release will include scalable mechanisms for shared
activities using Tubes as a data transport, both peer-to-peer within
the mesh and within the context of a server.

The preceding paragraphs enumerate much of the phenomenal progress
that we have made as we prepare to ship our Generation-1 laptops.
While we were told repeatedly that many of the problems we faced were
unsolvable; we find ourselves vindicated and empowered by the combined
efforts of our community, partners, and in-house engineers, who have
found solutions to these "unsolvable" problems.

It is important now to set expectations for the software that ships on
the XOs in September. The tremendous amount of work to date does not
change the fact that our first-release software is very much a work in
progress. The software at ship time will not have all the richness of
the Mesh view as described in our User Interface Guide, but we are on
track to have an extensible framework in place. The Journal, another
important component of Sugar, recently appeared in our builds and
currently offers bare-bones functionality; however, the first
iteration of the data store is near completion and includes support
for removable media and network file systems. The Journal is on track
to include more features, such as a rich system to tag, search, and
sort in the coming months, and an API for developers. The ability to
open files, read, write, etc., are being transitioned to mediation by
both the Journal and, at a lower level, Bitfrost, our security system.
These transitions will be completed before we ship.

One important feature where we have made little progress is the View
Source key. We decided to build the user experience�and the core
Activity base�in Python, in large part, to facilitate the children's
direct access to modifiable code. We are moving to the latest stable
version of Python as part of our Fedora Core 7 migration; however, we
have yet to put enough resources into building  a suitable development
environment for children. This remains an important goal, but not one
we can reasonably meet for our first release. The incorporation of the
context-sensitive spirit of "view source" into all Activities is
another area where we lag. Bolstering these efforts is second only to
stabilizing the current system. We look forward to the possibility of
Guido van Rossum, Python's creator, leading these efforts in the fall.

One of the most frustrating things for OLPC developers�and potential
community developers�is to bring the Sugar environment up and have it
run. Sugar-jhbuild is difficult to use (and overkill for those who are
interested in developing activities as opposed to working on Sugar
itself). The QEMU and live boot images do not offer easy integration
and workflow access for developers. We are keenly aware of this and
are working with VMWare to provide bootable virtual machines (VMs)
that will enable developers to both develop directly from their host
machine within their normal development environment and simulate a
mesh of XO laptops for testing. The first iteration of a development
VM will be available soon, after which we will turn our efforts over
to mesh emulation.

Another unfortunate byproduct of our approach to desktop software is
that it is difficult to run Linux GUI applications within Sugar
without first adapting ("sugarizing") the applications. Work is being
done on an extension to the Matchbox window manager; the manager
should help with this problem by offering the ability to launch
un-sugarized applications in a "second desktop."

The realities of time and resource constraints dictate that all of our
software goals will not be met by ship date. However, we will ship an
efficient software update system that will let us continually push out
improvements in both stability and features for the XO. This will let
us take advantage of our fast development cycles to provide a steady
stream of small software updates, instead of large and infrequent
monolithic ones. We are hopeful many of our unmet goals will be
completed and improved features will be added to the XO in the first
few months after we begin to ship.

As a community, we have made great strides; and we continue to head in
a productive direction that will have a positive impact on the
learning experiences of children worldwide.

Finally, it is critical to establish that�though we have designed the
laptop for a target audience of age 6 to 16�our intention is not that
the children "graduate" to the conventional world of computing.
Rather, we firmly believe that the tools and functionality you have
created in support of learning, such as Sugar, Bitfrost, the Journal,
"view source," and mesh presence and collaboration are fundamentally
solid ideas that will carry over to other computing platforms as this
new generation of computer users matures; we will strive to ensure
that Sugar and the Activities developed on top of it will be usable in
"conventional" systems, thus impacting the general world of computing.

-walter

-- 
Walter Bender
One Laptop per Child
http://laptop.org
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

   

n;Umset0/haCnd