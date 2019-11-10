<HTML>
<HEAD>
<TITLE> Compiling MORSE </TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<H1 CLASS=PAGE>Compiling MORSE</h1>
<H6>29NOV05</H6>
<HR>
The MORSE source code is written in (almost) standard FORTRAN77
- see <A href=conventions.html>conventions.html</a>
<P> 
There is a single program module <b>morse.for</b> and a number
of subroutines <b>*.for</b> and include files <b>*.inc</b>.
<P>
Before compiling, check module <b>reclen.inc</b>.
For most systems
the parameter <B>RECLEN</B>  (which controls the
record size assumed for the HITRAN binary file)
should be set to <b>88</b>, however
for Alpha machines it should be set to <b>22</b>.
<P>
To compile <B>MORSE</B> it should be sufficient to place all the
modules in a single directory and type
<blockquote><div class=termbox><PRE><b>  f77 *.for -o morse</b></pre></div
</blockquote>
(or <b>g77</b> instead of <b>f77</b> on some systems, depending on
definition of FORTRAN compilers).
<P>
For those not familiar with unix/linux, this runs the local FORTRAN77
compiler
program <b>f77</b>, taking as input all files (<B>*.for</B>) 
in the local directory
with extension <b>.for</b>,
and creates an executable program (<b>-o</b>) called <b>morse</b>.
Obviously you can name the output anything you like, eg if you want to
create different versions called  <b>morse_local</b>.
<P>

<P>
MORSE has been developed on a friendly unix system which implicitly saves
all subroutine variables between calls and initialises all variables
to zero. I've <i>tried</i> to make all these explicit but it's possible
that some may have been missed, so with the less friendly linux compilers 
it may be safer to add these options to the compile
<blockquote><div class=termbox>
<pre><B>f77 -fno-automatic -finit-local-zero *.for -o morse</b></pre>
</div></blockquote>
(and <a href=mailto:dudhia@atm.ox.ac.uk>let me know</a> 
if you find an example where this produces different
results!). 
<HR> 
<UL>
<LI><a href=index.html>Back to MORSE Index</a>
</ul>
</BODY>
</HTML>


tbGErT' aE	dk=