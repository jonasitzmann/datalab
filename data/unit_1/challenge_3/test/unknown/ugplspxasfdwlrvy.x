<HTML>
<HEAD>
<TITLE> L1C Software</TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<H1 CLASS=PAGE>L1C Software</h1>
<UL>
<LI><a href=#introduction>Introduction</a>
<LI><a href=#run>Running L1C</a>
<LI><a href=#example>Example</a>
<LI><a href=#updates>Updates</a>
</ul>

<H6>12SEP05</H6>
<HR>

<a name=introduction>
<h2 class=bar>Introduction</h2>
The IDL program <b>l1c.pro</b> reads 
a MIPAS L1B file and a 
list of microwindows,
apodises the
spectra and extracts the microwindows writing them as a 
<A HREF=http://www.atm.ox.ac.uk/group/mipas/L1C/>L1C file</A>, suitable
for <a href=inputs.html#l1c>input to MORSE</a>.
<P>
This page describes the L1C software versions 23MAY05 and later,
which create <a
href=http://www.atm.ox.ac.uk/group/mipas/L1C/index.html#v2.0>L1C format 2.0</a>
files
required for input to MORSE v3. Documentation for the earlier versions
of L1C is <a href=./v2/l1c.html>here</a>.
<P>
The main program <b>l1c.pro</b> and associated procedures <b>l1c_*.pro</b>
are available as a compressed tar file:
<b><a href=l1c_15JUN05.tar.Z>l1c_15JUN05.tar.Z</a></b>
<BR>
Note that the main program contains a <B>!PATH = ...</b> statement
which should be edited to point to the directory where the other modules are
stored unless all in the local directory.
<P>
Part of the new L1C format requires the addition of 'nominal' tangent
altitudes to each sweep as well as the actual altitudes.
However, the L1B data contains no equivalent information so at the moment
the <b>l1c.pro</B> has hard-wired altitudes dependent on the number of sweeps
in the file which works for both the 17 (up to Aug04) and 27 (Jan05 onwards)
nominal modes but not for the various special modes which have also been used
(although in principle these could also be added).

<P>
There is also a separate IDL procedure <a
href=read_l1c.pro><b>read_l1c.pro</b></a> which can be used to read in L1C data
into a structure, with the microwindow information conveniently sorted.


<a name=running>
<H2 class=bar>Running L1C</H2>

To run, first enter IDL (usually by typing <b>idl</b>) 
which should give you the <B>IDL></B> prompt, then run the program 
by typing eg <b>.run l1c</b>.

Three terminal inputs are required (see <a href=#example>Example</a>)
<DL>
<DT><b>L1B file:</b>
<DD> Enter name of the MIPAS L1B file.
<DD> Note that the entered response is saved in a local file
<b>l1c_l1bfil.save</b>, so if the program is run subsequently the prompt will
be <b>L1B file [&lt;CR&gt;= use l1c_l1bfil.save]:</b>
and the user has the option of hitting the carriage return to reuse the same
filename.
<DT><b>Microwindow list [<CR>=none]:</b>
<DD> Enter the name of the file containing the list of required microwindows.
<DD> See <a href=inputs.html#mwl>MORSE inputs</a> 
for definition of an input <b>.lst</b> file. 
<DD> The file format allows several
such files to be simply appended, eg 
<B><a href=mwlist.lst>mwlist.lst</a></b>, which contains the pT and 
H2O microwindows used for generating the sample data in the MORSE
distribution file.
The absorber indices (following the altitude ranges) are not read by
<b>l1c.pro</b>.
<DD> If the user types carriage return, no apodisation is performed and the
output will simply contain a list of scan/sweep headers (which may be useful
for examining the locations of L1B spectra).
<DT><b>First,Last Scan Nos [<CR>=1, 72]:</b>
(where eg 72 is the number of scans in the L1B file)
<DD> Enter the first and last scan numbers required for processing, 
separated by a space or a comma.
<DD> If carriage return is typed, all scans within the L1C file are processed.
<DD> Scans containing a different number of sweeps to the nominal number are
skipped.
</dl>



<P>
Outputs are written to files
<B>L1C_ooooo_SCAN#ss</b> where 
<B>ooooo</b> is the Absolute Orbit Number and <B>ss</b> is the
  scan number, eg <a href="L1C_02081_SCAN13"><B>L1C_02081_SCAN#13</B></a>
(as used in the MORSE <a href=distribution.html>distribution file</a>).
<P>

<a name=example>
<h2 class=bar>Example</h2>
A typical dialogue is shown below (actually used to generate the
file <a href="L1C_02081_SCAN13"><B>L1C_02081_SCAN#13</B></a>).
User inputs are shown in <B>bold</b>).
<blockquote><div class=termbox><pre>
IDL> <b>.run l1c</b>
% Compiled module: $MAIN$.
L1B file: <B>MIP_NL__1P020724_112130_oldNL_M3_2081_020918</b> 
or L1B file [<CR>= use l1c_l1bfil.save]:
% Compiled module: L1C_INPMPH.
% Compiled module: L1C_INPSPH.
% Compiled module: L1C_INPMIC.
Microwindow list [<CR>=none]: <b>mwlist.lst</b>
% Compiled module: L1C_NBFAC.
First,Last Scan Nos [<CR>=1, 72]: <B>13 13</B>
% Compiled module: L1C_INPSCAN.
I-L1C: Processing Scan#      13
I-L1C: Creating File L1C_02081_SCAN#13
% Compiled module: L1C_WRTHDR.
% Compiled module: L1C_SWPTIM.
% Compiled module: L1C_INPMDS.
% Compiled module: L1C_SWPMIC.
% Compiled module: L1C_CLDIDX.
% Compiled module: MEAN.
% Compiled module: MOMENT.
% Compiled module: L1C_APOD.
% Compiled module: REVERSE.
% Compiled module: L1C_CLDRAD.
% Compiled module: L1C_WRTSWP.
% Compiled module: L1C_TIME.
% Compiled module: CALDAT.
% Compiled module: L1C_SZALST.
% Compiled module: L1C_MICNOI.
% Compiled module: L1C_WRTMIC.
IDL>
</PRE></DIV></BLOCKQUOTE>
<P>
<a name=updates>
<h2 class=bar>Updates</h2>

<DL>
<DT>v15JUN05
<DD> Correct order of nominal altitudes in new (Jan05 onwards) MIPAS nominal
mode.
<DT>v28MAY05
<DD> Generate Format 2.0 files.
</DL>
<HR>
<UL>
<LI><A HREF=index.html>Back to MORSE Index</a>
</ul>
</BODY>
</HTML>


e0"-