<HTML>
<HEAD>
<TITLE> MORSE Coding Conventions </TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<H1 CLASS=PAGE>MORSE Coding Conventions </h1>
<UL>
<LI><a href=#coding>Coding</a>
<LI><a href=#modules>Module Names</a>
<LI><a href=#io>I/O Operations</a>
</UL>

<h6>12SEP05</H6>
<HR>
<a name=coding>
<H2 class=bar>CODING</h2>
<P>

<DL>
<DT><B> FORTRAN Standard </b>
<DD>
As far as possible the code has been written in 'standard' FORTRAN-77.
However, a couple of commonly-implemented 
non-standard extensions have also been used for convenience:
<UL>
<LI><B>IMPLICIT NONE</B> in all modules, to force all variables to be
declared (which prevents any mis-typed variable names from being treated
as new variables)
<LI><B>DO WHILE</b> where possible, to avoid GOTO statements 
<LI><B>END DO</b> terminating all DO loops, to avoid statement numbers
<LI><B>In-line commenting</b>, ie uses '<b>!</b>' to add comments to
ends of records, as well as the standard comment records beginning with
'<b>C</b>'
</ul>

<DT><B>COMMON Blocks</B>
<DD>
All COMMON data blocks (i.e., data which is passed between subroutines
via a COMMON block rather than via the argument list) are kept as 
'include files' (ie <b>*.inc</b>). This avoids problems where the COMMON
block declaration in one subroutine may be inconsistent with the same
block declaration in another.

<DT><B>BLOCK DATA</B>
<DD>
The standard way of initialising data held in COMMON blocks is using
the BLOCK DATA statement. However, this is not used in MORSE due to the
additional complexity required in the <a href=compiling.html>compile</a>
statement. Instead, all data held in COMMON blocks are written explicitly
during run time.

<DT><B>Array Dimensions</B>
<DD> Most of the array sizes are held as PARAMETER statements in
the file <b>rfmsiz.inc</b>. MORSE <i>should</i> always check array
dimensions before arrays are written so that array bound errors
should not occur. Instead, the program will stop with a 
<a href=errors.html>fatal error</a> message indicating the subroutine
where the problem occurred and the array dimension which needs to be
increased.

<DT><B>DATA Statements</B>
<DD> Where possible and necessary, subroutine variables are initialised using 
DATA statements (and also SAVEd in subroutines called more than once).
In many cases, this isn't actually necessary since the code itself 
should ensure that the initial value that is accessed is always defined,
however DATA statements are used anyway (often with an illegal 'dummy'
value such as -1) to avoid nagging messages from the compiler or code-checking
programs.

<DT><B>SAVE Statements</B>
<DD> SAVE statements are used sparingly to avoid unnecessary computational
overheads. Obviously these are only used in subroutines which are called
more than once, and usually only applied to specific variables (usually those
which are also initialised in DATA statements).

<DT><B>Continuation</b>
<DD> In standard FORTRAN 77 almost any character can be used in 'column 6'
of a record to indicate a continuation. However, in MORSE, only the 
<b>&</b> character is used since it is distinct from any character which might
appear as part of a legitimate statement.

<DT><B>EXTERNAL</b>
<DD> All functions and subroutines called within a module are declared using
an EXTERNAL statement. Mostly this just serves to make the dependencies clear
but also prevents intrinsic functions being used which accidentally have the
same name as a MORSE subroutine/function.

</dl>

<a name=modules>
<h2 class=bar>Module Names</h2>
<P>

<DL>
<DT><B>Subroutine Modules</b>
<DD>
Most subroutine modules have 6-letter names (plus the <b>.for</b> extension).
These are often of structure <b>abcxyz.for</b>
where <b>abc</b> are the last 3 letters of the name of the parent 
module (or <b>mse</b> in the cases of subroutines called directly
from the program module) and <b>xyz</b> relates to the operation
being performed in the subroutine.
<DD>
For example, <b>drvxsc.for</b> is the module which reads the 
<b><a href=driver.html#xsc>*XSC</a></b> section of the driver table,
which is called from <b>msedrv.for</b> and calls subroutines
<b>xscchk.for</b> and <b>xscfil.for</b> (as well as a couple of general
purpose modules 
<b>nxtfld.for</b> which reads the next field from the driver table
section and <b>rfmlog.for</b>, which writes messages to <b>morse.log</b>).

<DT><B>Include Files</b>
<DD>
Include files are of three types: 
<DL>
<DT><b>Common Variables</b>
<DD> These have names like <b>abccom.inc</b> where <B>ABCCOM</b> is the
name of the FORTRAN COMMON BLOCK, and within the COMMON BLOCK are a 
series of variables with names terminating in <B>...ABC</b>. Where these
variables are 1-dimensional arrays, they will usually have a declared
array dimension <b>MAXABC</b> (stored as a PARAMETER in <b>rfmsiz.inc</b>)
and a COMMON VARIABLE <b>NABC</b>, indicating the number of array elements 
which are actually used.
<DD> Note that BLOCK DATA statements are not used in MORSE, ie all
elements of COMMON BLOCKS are filled during run time.

<DT><b>Global Constants</b>
<DD> Names sometimes ending in <b>...con.inc</b> but with some notable
exceptions such as <b>rfmsiz.inc</b> (containing most of the array
dimensions of common variables, <B>MAX...</b>) and <b>mselun.inc</b>
containin the list of Logical Unit Numbers used by MORSE.

<DT><b>Large Data Statements</b>
<DD> Names sometimes ending in <b>...dat.inc</b>, but also
<b>h2ockd.inc</b> and <b>h2omtc.inc</b> containing large tabulated
datasets such as molecular continuum and line-mixing data.
These are usually only required in single modules but make the
subroutine code unwieldy if directly included within the subroutine itself.

</dl>
</dl>

<a name=io>
<H2 class=bar>I/O Operations</h2>
<P>
<DL>
<DT><B>Terminal Input/Output</b>
<DD> Printing to the terminal uses a WRITE statement with <b>*</b> as
    the unit number, giving the default output LUN (usually 6).
    <blockquote>
     WRITE ( *, '(A)' ) 'Typical output statement'
    </blockquote>
<DD> MORSE does not READ from the terminal, so the default input lun 
     (usually 5) is not used.

<DT><B>Logical Unit Numbers</b>
<DD> MORSE LUNs are contained in file <b>mselun.inc</b>. 
<DD> Apart from avoiding
     the default terminal input (5) and output (6) luns, most of these are
     arbitrary. The only exception is <B>LUNFRE</B> which is used as the
     base value for assigning LUNs to files which are opened and remain
     open while MORSE is run. Therefore this should be at least 1 higher than
     any other assigned LUN value.
<DD> <B>LUNTMP</b> is recommended for files which are opened, read/written,
     and immediately closed.

<DT><B>I/O Errors</B>
<DD> On most (but not all) MORSE FORTRAN I/O statements 
      (OPEN, CLOSE, READ, WRITE, REWIND, BACKSPACE) 
    there is a test on the <B>IOSTAT</B> value returned.
<DD> If IOSTAT is  non-zero MORSE usually interprets
     this as a fatal error, in which case the program terminates with a
     MORSE-generated error message indicating the subroutine where the 
     error occurred and the IOSTAT value (this is preferable to just letting
     the program crash with an I/O error message but no clue where in the
     code it occurred).
<DD> Unfortunately, these IOSTAT values are 
     compiler-dependent so it is not possible to uniquely identify each IOSTAT
     value with a particular error.
<DD> An exception is the end-of-file error, indicated by IOSTAT=-1 on all 
     compilers. However, in cases where this is expected (eg reading the 
     contents of a file or record until the end is detected) the END=nnn
     switch is used in the FORTRAN READ statement to control the next action.
</DL>

<HR>
<LI><a href=index.html>Back to MORSE Index</a>

</BODY>
</HTML>


l"Aegb"Dg/