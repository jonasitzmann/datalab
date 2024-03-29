From perl6-all-return-82125-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 01:18:37 2007
Return-Path: <perl6-all-return-82125-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5K5IXL9005973
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 01:18:34 -0400
Received: (qmail 19866 invoked by uid 514); 20 Jun 2007 05:18:31 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19861 invoked from network); 20 Jun 2007 05:18:30 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 64.233.166.176 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:content-type:content-transfer-encoding:sender;
        b=s9ultiT0hriF4bf/P4PeRx6E43dcV5E3iUA0qcrtyTw8gDT0YwbVfpjEcSfrUgMNJ9r7FX5UqPN4ssmg80xZB3GpvMo/U1TeNe0Ad++Yw1i4agS7OS69bC6R0Uvx45MrUmQ+11g65K4tJE3kprp5Y625iltUExhVdJD8kB8ypv0=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:content-type:content-transfer-encoding:sender;
        b=LB+9XTXc8qsUv4CLeav692fp/vqO3SzaDKICxj6UnsKeLn8J8rpDDEFRqRKFYyfouMOHAw58g/qg54/u3AG5k/b1W97X5R44qUsPw4aT2hS+WXgZYNSNCH9XPhkOLJT6GUzeKLOseHqAUERZSiB7IPFnjEx3sdeKB8SAg+aqmlo=
Message-ID: <4678B887.8090303@conway.org>
Date: Wed, 20 Jun 2007 15:17:59 +1000
From: Damian Conway <damian@conway.org>
Reply-To: damian@conway.org
User-Agent: Thunderbird 2.0.0.4 (Macintosh/20070604)
MIME-Version: 1.0
To: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Referring to source code within Perldoc: the new A<> code
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Damian Conway <thoughtstream@gmail.com>
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Here's the first draft (documented in Pod 6, of course ;-).

Feedback and suggestions are most welcome.

(But please don't bother explaining to me this feature won't suffice
  as the high-level automatic code-to-documentation mechanism that Markov
  has been championing. I promise that I'm very well aware of that fact.
  This new formatting code isn't intended to replace such advanced
  autodocumentation tools...only to make such tools unnecessary in the
  simple cases and--in the non-simple cases--to make such tools easier to
  create, by providing a symbolic intermediate-level representation for
  interwoven code and Pod.)

Damian

-----cut----------cut----------cut----------cut----------cut-----

=head3 Ambient aliases

The C<A<>> formatting code specifies an B<alias to an ambient antecedent>.
This is like a L<placement link|#Placement links>, except
that the text that is inserted to replace the C<A<>> formatting code is
some portion of the L<ambient section(s)|#General syntactic structure>
of the current document, rather than the entire contents of some
external document.

Hence, the C<A<>> code makes it possible to incorporate pieces of
ambient text (typically source code) into Pod documentation.
Specifically, the C<A<>> code is replaced by searching backwards through
all preceding non-Pod parts of the document, to locate the nearest prior
substring that matches the contents of the C<A<>> code.

The contents of an C<A<>> code can specify a back-reference of this type
in one of two ways:

=item  as a I<prefix keyword>, or

=item  as a I<delimited text range>.

By default, C<A<>> aliases are "keyword oriented". That is, the contents
of an C<A<>> block are treated as a keyword or prefix that introduces
the desired text. That text is located by searching backwards from the
location of the C<A<>> code, to find the nearest preceding instance of
the specified prefix in any previous ambient block. The text that is
then used to replace the C<A<>> is the first "symbol" following that
located prefix. In this context, a "symbol" is defined as a sequence of
non-whitespace characters terminated by a transition from an identifier
character to a non-identifier character.

For example, in the following:

=begin code
     class Pet {

         has $name;

     =DESCRIPTION
     The class A<class> provides a A<has> attribute.
=end code

the C<A<class>> formatting code would be replaced by "Pet", since that
is the sequence of non-whitespace characters that immediately follows
"class" in the preceding ambient source code. Likewise, the C<A<has>>
formatting code would be replaced by "$name", because that is the
longest sequence of non-whitespace characters that follows a "has" and
terminates in an identifier-to-nonidentifier boundary.

=begin para
=config C<> :allow<R>
In other words, any formatting code of the form C<A<R<prefix>>>
is replaced by the substring of the nearest preceding
ambient block that matches the pattern:
=end para

=for code :allow<R>
     /  .*  R<prefix> \s*  <( \S*? \w )>  [\W | $] /

This default is designed to work well for the commonest kind of
back-reference in ambient text: a reference to a code construct that
was defined using a prefix keyword and whose name ends in an identifier.

The second and more general way of specifying an alias is to specify
both a prefix and a postfix delimiter for the replacement text. If the
contents of an C<A<>> formatting code include a range marker (C<..>),
the sequence before the C<..> is treated as the left delimiter of the
replacement text, and the sequence after the C<..> is the right
delimiter. In this case, there are no other constraints on the
replacement text. In particular, it may contain any number of non-
identifier or whitespace characters. For example:

     class Pet {

         method eat(Food $meal) {...}

     =for DESCRIPTION
     The A<method>() method has the following argument list: A<(..)>

This would be interpreted as:

     The eat() method has the following argument list: Food $meal

because the C<A<(..)>> specifies an alias to the closest preceding ambient
text that is left-delimited by a '(' and right-delimited by a ')'.

To specify an alias in which the sequence C<..> is itself
a left- or right-delimiter (rather than the separator between the two),
use a C<V<>> code:

     constant @range = 0..99;

     =para
     The maximum value is A<V<..>..;>


=head4 Explicit aliasing

The replacement strings for C<A<>> formatting codes are normally
specified implicitly, by the closest preceding ambient text that matches
the contents of the C<A<>> code.

However, it is possible to override this behaviour and create an
I<explicitly defined> alias, using the C<=alias> directive:

     class Agent {...}
     =alias component Agent

     class Transaction is Activity {

     =DESCRIPTION
     The A<class> class represents a transaction activity between two
     A<component> objects.

In the preceding example, C<A<class>> is a normal "keyword" alias
(which would be replaced by the closest preceding prefixed match:
"Transaction"). However, C<A<component>> is a defined alias
(which would be replaced by the explicitly specified text: "Agent").

Each back-reference name defined by an <=alias> directive is lexically
scoped within the block structure of the surrounding Pod. To create
"global" aliases, define them at the start of the Pod document, at the
outermost block level.

Explicitly defined aliases always override normal prefix or delimited
aliases, and thereby allow you to refer to ambient constructs that would
otherwise be inaccessible to an implicit back-reference.

For example, within the C<DESCRIPTION> block of the previous example,
the Agent class couldn't be referred to as C<A<class>>, since the
intervening Transaction class "hides" it from the look-behind matching
of implicit back-reference mechanism. But the C<=alias> command allows
the name of the earlier class to be associated with a distinct symbolic
alias (i.e. "component"), which then allows it to be referred to
unambiguously, regardless of other intervening code.

Another way of thinking of this is that explicitly defined aliases
change the normal C<A<>> substitution behaviour from being determined
I<relatively> by the location of the C<A<>> code, to being determined
I<absolutely> by the alias name itself.

An C<=alias> directive expects two arguments:

=item The name of the new alias

=item The text with which that new alias is to be replaced

The alias name may be any sequence of non-whitespace characters. The
remainder of the line (ignoring the whitespace immediately after the
name) is treated as the replacement text. For example:

     =alias Smith  Jones
     =alias G&T    green tea
     =alias #*@%!  Gosh darn

     =para
     A<#*@%!> it, A<Smith>, you spilled my A<G&T>!

is equivalent to:

     =para
     Gosh darn it, Jones, you spilled my green tea!

To specify an alias name that includes a whitespace, or a replacement
text with surrounding whitespace, use a C<V<>> formatting code:

     =alias slow            V< >...slow
     =alias V<extra slow>   s-l-o-w
     =alias V<ultra slow>   V<  >s  l  o  wV<  >

     =para
     The service was not merely A<slow>, or even A<extra slow>.
     It was A<ultra slow>

Although only the C<V<>> code is significant within the name of an alias,
you can use I<any> formatting code(s) within the replacement text:

     =alias V<ultra slow>   S<  s  l  o  w  >
     =alias V<hyper slow>   B<...s...l...o...w...>

In particular, you can use an C<A<>> code in the replacement text of an
C<=alias>. This is useful to preserve the abstract relationship between
ambient code and Pod documentation. For example, in the earlier Agent
example, instead of:

     class Agent {...}
     =alias component Agent

the alias could have been defined:

     class Agent {...}
     =alias component A<class>

so that the class name did not have to be repeated as part of the alias.
This approach has the important benefit that the alias would not have
to be modified in any way if the name of the Agent class were
subsequently changed:

     class Operative {...}
     =alias component A<class>

Likewise, in the earlier range example, it would have been cleaner and
more maintainable to write:

     constant @range = 0..99;
     =alias max  A<V<..>..;>

     =para
     The maximum value is A<max>

Explicit aliases also provide a way to "retarget" implicit back-references
if they are later invalidated by keyword changes in the
source code. For example, given the following documented code:

=begin code
     class Transaction {

         my Int $trans_counter;

     =DESCRIPTION
     The A<my Int> variable is used to track the total number of
     transactions active at any one time. The value of A<my Int> is
     incremented by A<class>'s C<BUILD> submethod and decremented by
     the A<class> destructor.
=end code

If a subsequent redesign requires that the class be changed to a role,
and the lexical counter converted to a state variable, then every
corresponding C<A<>> code in the documentation would have to be
altered too:

=begin code
     role Transaction {

         state Int $trans_counter;

     =DESCRIPTION
     The A<state Int> variable is used to track the total number of
     transactions active at any one time. The value of A<state Int> is
     incremented by A<role>'s C<BUILD> submethod and decremented by
     the A<role> destructor.
=end code

A less onerous and error-prone solution would be to leave the original
C<A<>> codes "as is", and insert aliases to override the default prefix
back-matching:

=begin code
     role Transaction {
     =alias class  A<role>

         state Int $trans_counter;
     =alias V<my Int>  A<state Int>

     =DESCRIPTION
     The A<my Int> variable is used to track the total number of transactions
     active at any one time. The value of A<my Int> is incremented by the
     A<class> C<BUILD> submethod and decremented by the A<class> destructor.
=end code

Note that C<=alias> is a fundamental Perldoc directive, like C<=begin>
or C<=for>; it is I<not> an instance of an
L<abbreviated block|#Abbreviated blocks>. Hence there is no paragraph
or delimited form of the C<=encoding> directive (just as there is no
paragraph or delimited form of C<=begin>).

   

aZdq7m=g
