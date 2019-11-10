<HTML>
<HEAD>
<TITLE> MORSE Distribution tar file</TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<H1 CLASS=PAGE>MORSE Distribution tar file</h1>
<H6>12SEP05</H6>
<HR>
MORSE is distributed by email as a compressed 'tar' file <b>morse_v3.tar.Z</b>.
(approx 15Mb).
When you have extracted it from the email, 
uncompress it
<blockquote><div class=termbox><pre><B>uncompress morse_v3.tar.Z</b></pre>
</div></blockquote>
which will result in a file <b>morse_v3.tar</b>, which can be unpacked using
<blockquote><div class=termbox>
  <pre><B>tar -xvf morse_v3.tar</b></pre>
</div></blockquote>
<P>
This expands into a directory <b>morse_v3</b> including several 
subdirectories and a file <b>README.txt</b> which
is listed below:
<blockquote><div class=filbox><pre>
This directory contains sufficient files to compile and run a MORSE pT and H2O
retrieval for a single profile of MIPAS data.

./source/  MORSE source code 
./CS/      Look-Up Tables for pT and H2O microwindows
./MW/      Microwindow database files containing masks and irregular grids
./L1C/     MIPAS microwindows for Scan#13 Orbit 2081 (24Jul02, 45degN)
./morse_files/ auxiliary files required by MORSE
./hitran/  Dummy HITRAN-type binary file (containing only H2O 791-808cm-1)
./xsc/     Cross section molecules (containing only aerosol in this case)
./pt/      driver table and microwindow list for pT retrieval
./h2o/     driver table and microwindow list for H2O retrieval

(./pt/sample/ and ..h2o/sample/ contain sample outputs generated during 
a run of morse in each directory).

When you have unpacked the data,
1. change to directory /source and compile morse by typing
   f77 *.for -o morse

2. change to directory /pt and run the pT retrieval by typing
   ../source/morse

3. change to directory /h2o and run the H2O retrieval by typing
   ../source/morse

Retrieved profiles are called morse.rtv and morse.atm created in the 
/pT and /h2o directories, which can be compared with the equivalent files 
in subdirectory
/sample

See MORSE documentation on http://www.atm.ox.ac.uk/MORSE/ for further
information. 
</pre></div></blockquote>

<HR>
<UL>
<LI><a href=index.html>Back to MORSE Index</a>
</UL>
</BODY>
</HTML>


Nhidof"y>.l