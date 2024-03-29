From perl6-all-return-81752-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 15:42:56 2007
Return-Path: <perl6-all-return-81752-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52JgqhB027364
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 15:42:53 -0400
Received: (qmail 21490 invoked by uid 514); 2 Jun 2007 19:42:45 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21485 invoked from network); 2 Jun 2007 19:42:45 -0000
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
Subject: [svn:perl6-synopsis] r14413 - doc/trunk/design/syn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070602194213.DFBA1CBA7D@x12.develooper.com>
Date: Sat,  2 Jun 2007 12:42:13 -0700 (PDT)
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Author: larry
Date: Sat Jun  2 12:42:11 2007
New Revision: 14413

Modified:
   doc/trunk/design/syn/S02.pod
   doc/trunk/design/syn/S03.pod
   doc/trunk/design/syn/S04.pod
   doc/trunk/design/syn/S06.pod
   doc/trunk/design/syn/S09.pod
   doc/trunk/design/syn/S13.pod

Log:
Dropped : from all listop contextualizers, whether sigil and typename.
The @@ contextualizer is now also named "slice".
Consistent with that, we have regularized slice nomenclature:
* A "slice" now always refers to the whole multidimensional subscript,
    or the list of lists corresponding to that.
* We now try to avoid calling the individual sublists "slices".
* The parameter to a subscript is *@@slice, not *@@slices.
* The term "multislice" is now deemed redundant.


Modified: doc/trunk/design/syn/S02.pod
==============================================================================
--- doc/trunk/design/syn/S02.pod	(original)
+++ doc/trunk/design/syn/S02.pod	Sat Jun  2 12:42:11 2007
@@ -12,9 +12,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 10 Aug 2004
-  Last Modified: 29 May 2007
+  Last Modified: 2 Jun 2007
   Number: 2
-  Version: 108
+  Version: 109
 
 This document summarizes Apocalypse 2, which covers small-scale
 lexical items and typological issues.  (These Synopses also contain
@@ -446,8 +446,11 @@
     $spot.defined;          # False
     say $spot;              # "Dog"
 
-Any class name used as a value by itself is an undefined instance of that
-class's prototype.  See S12 for more on that.
+Any class name used as a value by itself is an undefined instance of
+that class's prototype, or I<protoobject>.  See S12 for more on that.
+(Any type name in rvalue context is parsed as a list operator
+indicating a typecast, but an argumentless one of these degenerates
+to a typecast of undef, producing the protoobject.)
 
 To get a real C<Dog> object, call a constructor method such as C<new>:
 
@@ -1059,7 +1062,7 @@
     %   unordered hash (associative array)
     &   code/rule/token/regex
     ::  package/module/class/role/subset/enum/type/grammar
-    @@  multislice view of @
+    @@  slice view of @
 
 Within a declaration, the C<&> sigil also declares the visibility of the
 subroutine name without the sigil within the scope of the declaration:
@@ -1324,9 +1327,9 @@
 
 =item *
 
-Slicing syntax is covered in S09.  Multidimensional
-slices will be done with semicolons between individual slice subscripts.
-Each such slice is evaluated lazily.
+Slicing syntax is covered in S09.  A multidimensional
+slice will be done with semicolons between individual slice sublists.
+Each such slice sublist is evaluated lazily.
 
 =item *
 
@@ -1422,9 +1425,17 @@
 than a punctuational variable.  This allows you to use sigils as coercion
 operators:
 
-    print $( foo() )
+    print $( foo() )    # foo called in item context
+    print @@( foo() )   # foo called in slice context
 
-It also allows the use of bare sigils as placeholders for anonymous variables:
+The bare sigil is parsed as a list operator in rvalue context, so
+these mean the same thing:
+
+    print $ foo()       # foo called in item context
+    print @@ foo()      # foo called in slice context
+
+In declarative contexts bare sigils may be used as placeholders for
+anonymous variables:
 
     my ($a, $, $c) = 1..3;
     print unless (state $)++;

Modified: doc/trunk/design/syn/S03.pod
==============================================================================
--- doc/trunk/design/syn/S03.pod	(original)
+++ doc/trunk/design/syn/S03.pod	Sat Jun  2 12:42:11 2007
@@ -12,9 +12,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 8 Mar 2004
-  Last Modified: 29 May 2007
+  Last Modified: 2 Jun 2007
   Number: 3
-  Version: 115
+  Version: 116
 
 =head1 Overview
 
@@ -729,16 +729,6 @@
 Note that, unlike in Perl 5, you must use the C<.meth> forms to default
 to C<$_> in Perl 6.
 
-=item *
-
-The C<item> contextualizer
-
-    item
-
-The new name for Perl 5's C<scalar> contextualizer.  Equivalent to C<$()>.
-We still call the values scalars, and talk about "scalar operators", but
-scalar operators are those that put their arguments into item context.
-
 =back
 
 =head2 Nonchaining binary precedence
@@ -1297,40 +1287,80 @@
 
 Sigils as contextualizer listops
 
-    $:
-    @:
-    %:
-    &:
-    @@:
+    Sigil       Alpha variant
+    -----       -------------
+    $           item
+    @           list
+    @@          slice
+    %           hash
 
 As listops, these look like terms from the left, but raise their
 precedence on the right sufficiently to govern list infix
 operators:
 
-     $: 1,2 Z 3,4       # [[1,3],[2,4]]
-     @: 1,2 Z 3,4       # 1,3,2,4
-    @@: 1,2 Z 3,4       # [1,3],[2,4]
-     %: 1,2 Z 3,4       # { 1 => 3, 2 => 4 }
-
-     $: 1,2 X 3,4      # [[1,3],[1,4],[2,3],[2,4]]
-     @: 1,2 X 3,4      # 1,3,1,4,2,3,2,4
-    @@: 1,2 X 3,4      # [1,3],[1,4],[2,3],[2,4]
+     $ 1,2 Z 3,4       # [\(1,3),\(2,4)]
+     @ 1,2 Z 3,4       # 1,3,2,4
+    @@ 1,2 Z 3,4       # [1,3],[2,4]
+     % 1,2 Z 3,4       # { 1 => 3, 2 => 4 }
+
+     $ 1,2 X 3,4      # [\(1,3),\(1,4),\(2,3),\(2,4)]
+     @ 1,2 X 3,4      # 1,3,1,4,2,3,2,4
+    @@ 1,2 X 3,4      # [1,3],[1,4],[2,3],[2,4]
 
 These can also influence the result of functions that returns lists of captures:
 
-     $: map { $_, $_*2 }, ^4   # [[0,0],[1,2],[2,4],[3,6]]
-     @: map { $_, $_*2 }, ^4   # 0,0,1,2,2,4,3,6
-    @@: map { $_, $_*2 }, ^4   # [0,0],[1,2],[2,4],[3,6]
-     %: map { $_, $_*2 }, ^4   # { 0 => 0, 1 => 2, 2 => 4, 3 => 6 }
+     $ map { $_, $_*2 }, ^4   # [\(0,0),\(1,2),\(2,4),\(3,6)]
+     @ map { $_, $_*2 }, ^4   # 0,0,1,2,2,4,3,6
+    @@ map { $_, $_*2 }, ^4   # [0,0],[1,2],[2,4],[3,6]
+     % map { $_, $_*2 }, ^4   # { 0 => 0, 1 => 2, 2 => 4, 3 => 6 }
+
+=item *
+
+The C<item> contextualizer
+
+    item foo()
+
+The new name for Perl 5's C<scalar> contextualizer.  Equivalent to C<$()>.
+We still call the values scalars, and talk about "scalar operators", but
+scalar operators are those that put their arguments into item context.
+
+If given a list, this function makes an C<Array> from it.  The function
+is agnostic about any C<Captures> in such a list.  (Use C<@> or C<@@>
+below to force that one way or the other).
 
 =item *
 
 The C<list> contextualizer
 
-    list
+    list foo()
 
 Forces the subsequent expression to be evaluated in list context.
-Equivalent to C<@:>.
+A list of C<Capture>s will be transformed into a flat list.
+Equivalent to C<@()>.
+
+=item *
+
+The C<slice> contextualizer
+
+    slice foo()
+
+Forces the subsequent expression to be evaluated in slice context.
+(Slices are considered to be potentially multidimensional in Perl 6.)
+A list of C<Capture>s will be transformed into a list of lists.
+Equivalent to C<@@()>.
+
+=item *
+
+The C<hash> contextualizer
+
+    hash foo()
+
+Forces the subsequent expression to be evaluated in hash context.
+The expression is evaluated in list context (flattening any C<Capture>s),
+then a hash will be created from the list, taken as a list of C<Pair>s.
+(Any element in the list that is not a C<Pair> will pretend to be a key
+and grab the next value in the last as its value.)  Equivalent to
+C<%()>.
 
 =back
 
@@ -1408,10 +1438,11 @@
     $x = 1; $y = 2;
 
 The context determines how the expressions terminated by semicolon
-are interpreted.  At statement level they are statements.  Within
-a bracketing construct they are interpreted as multidimension slices.
-(Other contexts may have other interpretations or disallow semicolons
-entirely.)
+are interpreted.  At statement level they are statements.  Within a
+bracketing construct they are interpreted as lists of C<Capture>s,
+which in slice context will be treated as the multiple dimensions of a
+multidimensional slice.  (Other contexts may have other interpretations
+or disallow semicolons entirely.)
 
 =item *
 
@@ -1482,7 +1513,7 @@
 
 Perl 5's C<${...}>, C<@{...}>, C<%{...}>, etc. dereferencing
 forms are now C<$(...)>, C<@(...)>, C<%(...)>, etc. instead.
-Listop-like forms are C<$:>, C<@:>, C<%:>, etc.
+Listop-like forms use the bare sigil following by whitespace.
 
 =item *
 
@@ -1759,7 +1790,7 @@
 right side is too short.  To force list assignment when a subscript
 would return a non-list, either put parens around the entire lvalue,
 or use a comma within the subscript.  (A semicolon in the subscript
-also works to indicate multidimensional slices.)
+also works to indicate a multidimensional slice.)
 
 Assuming
 
@@ -3392,9 +3423,9 @@
 
 and remember the C<@> at the front until you get to the C<=>.
 
-The empty C<[]> and C<.[]> postfix operators are interpreted as
-zero-dimensional slices returning the entire array, not null slices
-returning no elements.  Likewise for C<{}> and C<.{}> on hashes,
+The empty C<[]> and C<.[]> postfix operators are interpreted as a
+zero-dimensional slice returning the entire array, not as a one-dimensional
+null slice returning no elements.  Likewise for C<{}> and C<.{}> on hashes,
 as well as the C<< <> >>, C<< .<> >>, C<«»>, and C<.«»> constant and
 interpolating slice subscripting forms.
 

Modified: doc/trunk/design/syn/S04.pod
==============================================================================
--- doc/trunk/design/syn/S04.pod	(original)
+++ doc/trunk/design/syn/S04.pod	Sat Jun  2 12:42:11 2007
@@ -12,9 +12,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 19 Aug 2004
-  Last Modified: 28 May 2007
+  Last Modified: 2 Jun 2007
   Number: 4
-  Version: 58
+  Version: 59
 
 This document summarizes Apocalypse 4, which covers the block and
 statement syntax of Perl.
@@ -255,9 +255,10 @@
 
 The value of a loop statement is the list of values from each
 iteration that successfully completed without a C<next> or C<last>.
-(This list is actually a multidimensional list (a "multislice")
-with dimensional boundaries at each iteration.  Most list contexts
-ignore these boundaries and flatten the list.)  If you do not wish
+(This list is actually a two-dimensional list of Captures (a "slice")
+with dimensional boundaries at each iteration.  List context
+ignores these boundaries and flattens the list.  Slice context turns
+the captures into subarrays)  If you do not wish
 to accidentally return a list from the final loop statement in a
 subroutine, place an explicit return statement after it, or declare
 a return type of C<Void>.
@@ -537,8 +538,8 @@
 is ignored when the C<take> is in void context).  Regardless of the
 C<take>'s context, the C<Capture> object is also added to the list of
 values being gathered, which is returned by the C<gather> in the form
-of a lazy multislice, with each slice corresponding to one C<take>
-capture.  (A multislice is lazily flattened in normal list context,
+of a lazy slice, with each slice element corresponding to one C<take>
+capture.  (A list of C<Capture>s is lazily flattened in normal list context,
 but you may "unflatten" it again with a C<@@()> contextualizer.)
 
 Because C<gather> evaluates its block or statement in void context,

Modified: doc/trunk/design/syn/S06.pod
==============================================================================
--- doc/trunk/design/syn/S06.pod	(original)
+++ doc/trunk/design/syn/S06.pod	Sat Jun  2 12:42:11 2007
@@ -13,9 +13,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 21 Mar 2003
-  Last Modified: 1 Jun 2007
+  Last Modified: 2 Jun 2007
   Number: 6
-  Version: 87
+  Version: 88
 
 
 This document summarizes Apocalypse 6, which covers subroutines and the
@@ -294,7 +294,7 @@
     sub circumfix:{'LEFTDELIM','RIGHTDELIM'} ($contents) {...}
 
 Contrary to Apocalypse 6, there is no longer any rule about splitting an even
-number of characters.  You must use a two element slice.  Such names
+number of characters.  You must use a two-element slice.  Such names
 are canonicalized to a single form within the symbol table, so you
 must use the canonical name if you wish to subscript the symbol table
 directly (as in C<< PKG::{'infix:<+>'} >>).  Otherwise any form will
@@ -323,7 +323,7 @@
     <!-- This is now a comment -->
 
 Whitespace may never be part of the name (except as separator
-within a C<< <...> >> or C<«...»> slice, as in the example above).
+within a C<< <...> >> or C<«...»> slice subscript, as in the example above).
 
 A null operator name does not define a null or whitespace operator, but
 a default matching subrule for that syntactic category, which is useful when
@@ -807,18 +807,18 @@
 Some functions take more than one list of positional and/or named arguments,
 that they wish not to be flattened into one list.  For instance, C<zip()> wants
 to iterate several lists in parallel, while array and hash subscripts want to
-process multidimensional slices.  The set of underlying argument lists may be
+process a multidimensional slice.  The set of underlying argument lists may be
 bound to a single array parameter declared with a double C<@@> sigil:
 
-    sub foo (*@@slices) { ... }
+    sub foo (*@@slice) { ... }
 
 Note that this is different from
 
-    sub foo (\$slices) { ... }
+    sub foo (\$slice) { ... }
 
-insofar as C<\$slices> is bound to a single argument-list object that
+insofar as C<\$slice> is bound to a single argument-list object that
 makes no commitment to processing its structure (and maybe doesn't
-even know its own structure yet), while C<*@@slices> has to create
+even know its own structure yet), while C<*@@slice> has to create
 an array that binds the incoming dimensional lists to the array's
 dimensions, and make that commitment visible to the rest of the scope
 via the sigil so that constructs expecting multidimensional lists
@@ -826,15 +826,15 @@
 
 It is allowed to specify a return type:
 
-    sub foo (*@@slices --> Num) { ... }
+    sub foo (*@@slice --> Num) { ... }
 
 The invocant does not participate in multi-dimensional argument lists,
-so C<self> is not present in the C<@@slices> below:
+so C<self> is not present in the C<@@slice> below:
 
-    method foo (*@@slices) { ... }
+    method foo (*@@slice) { ... }
 
-The C<@@> sigil is just a variant of the C<@> sigil, so C<@@slices>
-and C<@slices> are really the same array.  In particular, C<@@_> is
+The C<@@> sigil is just a variant of the C<@> sigil, so C<@@slice>
+and C<@slice> are really the same array.  In particular, C<@@_> is
 really the good old C<@_> array viewed as multidimensional.
 
 =head2 Zero-dimensional argument list
@@ -843,9 +843,9 @@
 argument list becomes a zero-dimensional slice.  It differs from
 C<\()> in several ways:
 
-    sub foo (*@@slices) {...}
-    foo;        # +@@slices == 0
-    foo();      # +@@slices == 1
+    sub foo (*@@slice) {...}
+    foo;        # +@@slice == 0
+    foo();      # +@@slice == 1
 
     sub bar (\$args = \(1,2,3)) {...}
     bar;        # $args === \(1,2,3)
@@ -1016,8 +1016,8 @@
 sometimes you want to capture the outputs as a list of two iterators,
 namely the two iterators that represent the two input feeds.  You can
 get at those two iterators by using the name C<@@foo> instead, where
-the "multislice" twigil marks a multidimensional array, that is, an
-array of slices.
+the "slice" sigil marks a multidimensional array, that is, an
+array of lists, each of which may be treated independently.
 
     0..*       ==>  @@foo;
     'a'..*     ==>> @@foo;
@@ -1583,9 +1583,9 @@
     type_declarator:<subset>
     version:<v>
 
-The existing operator may be specified either as a function name
-or as a string slice equivalent to the one that would be used in
-the complete function name.  In string slice form the syntactic
+The existing operator may be specified either as a function object
+or as a string argument equivalent to the one that would be used in
+the complete function name.  In string form the syntactic
 category will be assumed to be the same as the new declaration.
 Therefore these all have the same effect:
 

Modified: doc/trunk/design/syn/S09.pod
==============================================================================
--- doc/trunk/design/syn/S09.pod	(original)
+++ doc/trunk/design/syn/S09.pod	Sat Jun  2 12:42:11 2007
@@ -12,9 +12,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 13 Sep 2004
-  Last Modified: 4 Apr 2007
+  Last Modified: 2 Jun 2007
   Number: 9
-  Version: 20
+  Version: 21
 
 =head1 Overview
 
@@ -301,7 +301,7 @@
 
     my @calendar[12;*;24];     # day-of-month dimension unlimited/ragged
 
-You can pass a multislice for the shape as well:
+You can pass a slice (of any dimensionality) for the shape as well:
 
     @@shape = (4;2);
     my int @ints[ [;]@shape ];
@@ -350,12 +350,12 @@
 
     @array.postcircumfix:<[ ]>( <== @x[0] <== @x[1] <== @x[2]..*);
 
-Alternately, use a multislice array, indicated by a double C<@@> sigil:
+Alternately, use a slice array, indicated by a double C<@@> sigil:
 
     @array[@@x]
 
 Multislice arrays can keep track of their dimensionality as they
-are being defined.  Use of multislice syntax can then pull out those
+are being defined.  Use of slice array syntax can then pull out those
 distinct dimensions:
 
     my @@x;
@@ -751,9 +751,9 @@
 
 =head1 Subscript and slice notation
 
-A subscript indicates a "slice" of an array.  Each dimension
-of an array is sliced separately, so we say a subscript is a
-semicolon-separated list of slice specifiers, also known as a multislice.
+A subscript indicates a "slice" of an array.  Each dimension of an
+array is sliced separately, so a multidimensional slice subscript
+may be supplied as a semicolon-separated list of slice sublists.
 A three-dimensional slice might look like this:
 
     @x[0..10; 1,0; 1..*:by(2)]
@@ -773,16 +773,18 @@
 =head1 The semicolon operator
 
 At the statement level, a semicolon terminates the current expression.
-Within any kind of bracketing construct, semicolon notionally
-separates slices, the interpretation of which depends on
-the context.  Such a semicolon list always provides list context to
-each of its sublists.  The storage of these sublists is hidden in
-the inner workings of the list.  It does not produce a list of lists. 
+Within any kind of bracketing construct, semicolon notionally separates
+the sublists of a multidimensional slice, the interpretation of
+which depends on the context.  Such a semicolon list puts each of its
+sublists into a Capture, deferring the context of the sublist until
+it is bound somewhere.  The storage of these sublists is hidden in
+the inner workings of the list.  It does not produce a list of lists
+unless the list as a whole is bound into a slice context.
 
 Single dimensional arrays expect simple slice subscripts, meaning
 they will treat a list subscript as a slice in the single dimension of
 the array.  Multi-dimensional arrays, on the other hand, know how to
-handle multiple slices, one for each dimension.  You need not specify
+handle a multidimensional slice, with one subslice for each dimension.  You need not specify
 all the dimensions; if you don't, the unspecified dimensions are
 "wildcarded".  Supposing you have:
 

Modified: doc/trunk/design/syn/S13.pod
==============================================================================
--- doc/trunk/design/syn/S13.pod	(original)
+++ doc/trunk/design/syn/S13.pod	Sat Jun  2 12:42:11 2007
@@ -12,9 +12,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 2 Nov 2004
-  Last Modified: 24 Apr 2007
+  Last Modified: 2 Jun 2007
   Number: 13
-  Version: 8
+  Version: 9
 
 =head1 Overview
 
@@ -147,14 +147,14 @@
 routine, array, or hash.  The long forms are as follows:
 
     method postcircumfix:<( )> (|$capture) {...}
-    method postcircumfix:<[ ]> (*@@slices) {...}
-    method postcircumfix:<{ }> (*@@slices) {...}
+    method postcircumfix:<[ ]> (*@@slice) {...}
+    method postcircumfix:<{ }> (*@@slice) {...}
 
 Those are a bit unwieldy, so you may also use these short forms:
 
     method &.( |$capture ) {...}
-    method @.[ *@@slices ] {...}
-    method %.{ *@@slices } {...}
+    method @.[ *@@slice ] {...}
+    method %.{ *@@slice } {...}
 
 The sigil-dot sequence in these short forms autogenerates the
 corresponding public operators, in exactly the same way that

       

Rrthse=sonTl43mU