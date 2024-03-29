From perl6-all-return-81753-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 17:46:21 2007
Return-Path: <perl6-all-return-81753-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52LkKhB028407
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 17:46:20 -0400
Received: (qmail 13218 invoked by uid 514); 2 Jun 2007 21:46:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 13213 invoked from network); 2 Jun 2007 21:46:13 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: larry@cvs.develooper.com
To: perl6-language@perl.org
Subject: [svn:perl6-synopsis] r14414 - doc/trunk/design/syn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070602214544.3E485CBA7D@x12.develooper.com>
Date: Sat,  2 Jun 2007 14:45:44 -0700 (PDT)
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Author: larry
Date: Sat Jun  2 14:45:43 2007
New Revision: 14414

Modified:
   doc/trunk/design/syn/S03.pod

Log:
First installment of filling out descriptions of operator semantics.


Modified: doc/trunk/design/syn/S03.pod
==============================================================================
--- doc/trunk/design/syn/S03.pod	(original)
+++ doc/trunk/design/syn/S03.pod	Sat Jun  2 14:45:43 2007
@@ -97,21 +97,40 @@
 
 =item *
 
+Heredoc
+
+    qq:to/END/
+        Dear $recipient:
+        Thanks!
+        Sincerely,
+        $me
+        END
+
+=item *
+
 Array composer
 
     [1,2,3]
 
+Provides list context inside.
+
 =item *
 
 Hash composer
 
     { a => 42 }
 
+Inside must be a list of pairs, otherwise you must use C<hash()>
+or C<%()> instead.
+
 =item *
 
 Closure
 
-    {...}
+    { ... }
+
+When found where a statement is expected, executes immediately.  Othewise
+always defers evaluation of the inside scope.
 
 =item *
 
@@ -119,6 +138,8 @@
 
     \(@a,$b,%c)
 
+An abstraction representing an argument list that doesn't yet know its context.
+
 =item *
 
 Sigiled variables
@@ -128,7 +149,7 @@
     %z
     $^a
     $?FILE
-    @@multidim
+    @@slice
     &func
     &div:(Int, Int --> Int)
 
@@ -247,6 +268,9 @@
     $obj.::Class::meth
     $obj.Class::meth    # same thing, assuming Class is predeclared
 
+As in Perl 5, tells the dispatcher which class to start searching from,
+not the exact method to call.
+
 =item *
 
 Mutating method call
@@ -286,7 +310,7 @@
 
 Dotted postfix form of any other prefix operator
 
-    $x.'++'       # prefix:<++>($x), fallback to postfix:<++>
+    $x.:<++>       # prefix:<++>($x)
 
 =back
 
@@ -396,79 +420,109 @@
 
 prefix:<?>, boolean context
 
-    ?
+    ?$x
 
+Evaluates the expression as a boolean and returns C<True> if expression
+is true or C<False> otherwise.
 See "true" below for a low-precedence alternative.
 
 =item *
 
 prefix:<!>, boolean negation
 
-    !
+    !$x
 
+Returns the opposite of what C<?> would.
 See "not" below for a low-precedence alternative.
 
 =item *
 
 prefix:<+>, numeric context
 
-    +
+    +$x
+
+Unlike in Perl 5, where C<+> is a no-op, this operator coerces
+to numeric context in Perl 6.  (It coerces only the value, not the
+original variable.)  The narrowest appropriate type of C<Int>, C<Num>,
+or C<Complex> will be returned.  A string containing two integers
+separated by a C</> will be returned as a C<Rat>.  Exponential notation
+and radix notations are recognized.
 
 =item *
 
 prefix:<->, numeric negation
 
-    -
+    -$x
+
+Coerces to numeric and returns the negation of the resulting number.
 
 =item *
 
 prefix:<~>, string context
 
-    ~
+    ~$x
+
+Coerces the value to a string.  (It only coerces the value, not the
+original variable.)
 
 =item *
 
 prefix:<|>, flatten object into arglist
 
-    |
+    | $capture
+
+Interpolates the contents of the C<Capture> (or C<Capture>-like) value
+into the current argument list as if they had been specified literally.
 
 =item *
 
 prefix:<+^>, numeric bitwise negation
 
-    +^
+    +^$x
+
+Coerces to numeric and then does bitwise negation on the number.
 
 =item *
 
 prefix:<~^>, string bitwise negation
 
-    ~^
+    ~^$x
+Coerces to string buffer and then does bitwise negation on each element.
 
 =item *
 
 prefix:<?^>, boolean bitwise negation
 
-    ?^
+    ?^$x
+
+Coerces to boolean and then flips the bit.  (Same as C<!>.)
 
 =item *
 
 prefix:<\>, Capture constructor
 
-    \
+    \$x
+    \@x
+    \%x
+    \($invocant: $pos1, $pos2, :named($arg))
+
+Defers the contextualization of its argument or arguments till it is
+bound into some other context.
 
 =item *
 
 prefix:<^>, upto operator
 
-    ^
+    ^$limit
 
-Constructs a range or locates a metaclass.  See L</Range semantics>.
+Constructs a range of C<0..^$limit> or locates a metaclass as a shortcut
+for C<$limit.HOW>.  See L</Range semantics>.
 
 =item *
 
 prefix:<=>, iterate iterator
 
-    =
+    =$iterator
 
 Unary C<=> reads lines from a filehandle or filename, or
 iterates an iterator, or in general causes a scalar to explode its guts
@@ -491,7 +545,9 @@
 
 infix:<*>
 
-    *
+    $x*$y
+
+Multiplication, resulting in wider type of the two.
 
 =item *
 
@@ -499,7 +555,8 @@
 
     $numerator / $denominator
 
-Converts both operands to C<Num> and does division returning C<Num>.
+If either operand is of C<Num> type,
+converts both operands to C<Num> and does division returning C<Num>.
 If the denominator is zero, returns either C<+Inf>, C<NaN>, or C<-Inf>
 as the numerator is positive, zero, or negative.  (This is construed
 as the best default in light of the operator's possible use within
@@ -507,6 +564,11 @@
 on an individual scalar division, you can always check the denominator
 yourself.)
 
+If both operands are of integer type, you still get a C<Num>, but the
+C<Num> type is allowed to do the division lazily; internally it may
+store a C<Rat> until the time a value is called for.  If converted
+to C<Rat> directly no division ever need be done.
+
 =item *
 
 infix:<div>, generic division
@@ -529,7 +591,7 @@
 
 infix:<%>, modulus
 
-    %
+    $x % $mod
 
 Always floor semantics using C<Num> or C<Int>.
 
@@ -537,7 +599,7 @@
 
 infix:<mod>, generic modulus
 
-    mod
+    $x mod $mod
 
 Dispatches to the infix:<mod> multi most appropriate to the operand types.
 
@@ -553,7 +615,8 @@
 
 If the count is less than 1, returns the null string.
 The count may not be C<*> because Perl 6 does not support
-infinite strings.  (At least, not yet...)
+infinite strings.  (At least, not yet...)  Note, however, that an
+infinite string may be emulated with C<cat($string xx *)>.
 
 =item *
 
@@ -562,10 +625,10 @@
     @list xx $count
 
 Evaluates the left argument in list context, replicates the resulting
-Capture value the number of time specified by the right argument and
+C<Capture> value the number of time specified by the right argument and
 returns the result in a context dependent fashion.  If the operator
 is being evaluated in ordinary list context, the operator returns a
-flattened list.  In C<@@> context, the operator converts each Capture
+flattened list.  In slice (C<@@>) context, the operator converts each C<Capture>
 to a separate sublist and returns the list of those sublists.
 
 If the count is less than 1, returns the empty list, C<()>.
@@ -576,7 +639,9 @@
 
 infix:{'+&'}, numeric bitwise and
 
-    +&
+    $x +& $y
+
+Converts both arguments to C<Int> and does a bitwise numeric AND.
 
 =item *
 

   

reanlhoi