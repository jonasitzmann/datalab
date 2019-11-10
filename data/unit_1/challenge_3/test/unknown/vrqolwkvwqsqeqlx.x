<HTML>
<HEAD>
<TITLE> MORSE </TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<center>
<H1 CLASS=PAGE>MORSE</h1>
<h2 CLASS=PAGE>MIPAS Orbital Retrieval using Sequential Estimation</h2>
</center>
<h6>12SEP05 - web-pages in process of being updated for MORSE v3</H6> 
These web-pages now describe MORSE v3 - documentation
for v2 is <a href=./v2/index.html>here</a>.
<HR>
MORSE is a FORTRAN77 program developed under NERC's 
Earth Observation Enabling Fund to allow (mainly) 
UK groups to perform their own
retrievals of atmospheric profiles from MIPAS spectra.
[<a href=plan.html>More...</a>]
<P>
To obtain a copy of MORSE, email <a
href=mailto:dudhia@atm.ox.ac.uk>dudhia@atm.ox.ac.uk</a>.
You will then receive the <a href=distribution.html>distribution
tar file</a> which not only contains the source code but sufficient additional
files to get MORSE running demonstration retrievals.
<P>
<UL>
<LI><a href=morse_v3.html>Changing from MORSE v2 to v3</a>
<LI><a href=distribution.html>Distribution tar file</a>
<LI><a href=updates.html>Software Updates</a>
<LI><a href=bugs.html>Known Bugs</a>
<LI><a href=l1c.html>L1C Software</a>
<LI>Software User's Manual</a> 
   <UL>
   <LI><a href=compile.html>Compiling MORSE</a>
   <LI><a href=run.html>Running MORSE</a>
   <LI><a href=driver.html>Driver Table</a>
   <LI><a href=inputs.html>Input Files</a>
   <LI><a href=outputs.html>Output Files</a>
   <LI><a href=errors.html>Error Messages</a>
   <LI><a href=conventions.html>Coding Conventions</a>
   </ul>
</ul>
<P>
<H2>Recent Changes</h2>
<dl>
<P>
<DT> 9th Sep 2005
<DD> Starting transition to MORSE v3. 
<DD> As contents of this directory get updated, older versions will be
     moved to <a href=http://www.atm.ox.ac.uk/MORSE/v2>http://www.atm.ox.ac.uk/MORSE/v2/</a>
<DD> Last 'official' version of MORSE v2 is 22AUG05.

<P>
<DT> 24th May 2005
<DD> <a href=updates.html#v24may05>New version</a> of MORSE and 
     <a href=l1c.html>L1C code</a> (generated <a
     href=http://www.atm.ox.ac.uk/group/mipas/L1C/>v2.0 L1C data</a>)
     <UL>
     <LI> MORSE adjusted to handle new L1C format (as well as older formats)
     <LI> Fix <a href=bugs.html#bug17>Bug#17</a>
     </ul>

<P>
<DT> 17th Mar 2005
<DD> <a href=updates.html#v15mar05>New version</a> of MORSE: 
     <UL>
     <LI> Mainly bug fixes
     </ul>

<P>
<DT> 14th Mar 2005
<DD> Updated <a href=l1c.html>l1c software</a> (fix bug in dealing with
     corrupt spectra)

<P>
<DT> 3rd Feb 2005
<DD> Updated <a href=distribution.html>distribution</a> tar file
     <b>morse_v2.tar.Z</b> 
     <UL>
     <LI> This contains latest version of MORSE <a
        href=updates.html#v03feb05>v03FEB05</a> and slightly modified driver
        tables and L1C data compared to the original distribution.
     </ul>
<P>
<DT> 15th Dec 2004
<DD> <a href=updates.html#v15dec04>New version</a> of MORSE: 
     <UL>
     <LI> Add optional <a href=driver.html#cld><B>*CLD</B> section</a> of
        driver table to alter default cloud-detection criteria.
     </ul>
<P>
<DT> 10th Dec 2004
<DD> <a href=updates.html#v10dec04>New version</a> of MORSE: 
     <UL>
     <LI> Different handling of cloud detection
     </ul>
<P>
<DT> 7th Dec 2004
<DD> New version of <a href=l1c.pro><B>l1c.pro</b></a> which generates
      L1C files in <a href=http://www.atm.ox.ac.uk/group/mipas/L1C>Format
      v1.5</a> (slightly modified from previous format), also assigns 
     microwindows to output sweeps according to nominal altitude rather than
     L1B reported altitude.
<DD> Requires <A href=updates.html#v07dec04>new version</A> of MORSE to
     allow data to be read, although you could just fiddle subroutine
     <b>drvl1c.for</b> to stop it complaining that it can't read v1.5 L1C 
     files (because really it still can).
<P>
<DT> 1st Dec 2004
<DD> <a href=updates.html#v01dec04>New version</a> of MORSE: 
     <UL>
     <LI> Add optional field <B>RESLN=...</b> in 
      <b><a href=driver.html#scn>*SCN</a></b> 
         section of driver table to 
     allow MORSE to use spectra of resolutions other than 0.025cm-1.
     </ul>
<P>
<DT> 30th Nov 2004
<DD> Add <a href=auxiliary.html>Auxiliary Data</a> to web-site.

<P>
<DT> 29th Nov 2004
<DD> <a href=updates.html#v29NOV04>New version</a> of MORSE: 
     <UL>
     <LI> <b><a href=driver.html#acv>*ACV</a></b> optional
         section of driver table to 
     allow full a priori covariance to be specified
     </ul>
<P>
<DT> 25th Nov 2004
<DD> <a href=updates.html#v25NOV04>New version</a> of MORSE: 
     <UL>
     <LI> <B><a href=driver.html#flg>RES</a></b> flag to output residual 
          spectra
     <LI> <b><a href=driver.html#out>*OUT</a></b> optional
      section of driver table to 
     rename/redirect output files 
     <LI> Retrieval diagnostics added to <b>morse.rtv</b> outputs.
     </ul>
<P>
<DT> 19th Nov 2004
<DD> <a href=updates.html#v18NOV04>New version</a> of MORSE:
     <B>LUT</b> and <B>GRD</b> flags no longer required - now switched on
     by default. <B>FGD</b> flag added to switch-off irregular grid instead.
     Also fixes <a href=bugs.html#bug03>Bugs#3&4</a>
<DD> <a href=l1c.html><B>l1c.html</b></a> web-page added, describing the 
      pre-processor to apodise MIPAS spectra and extract microwindows. 

<P>
<DT> 18th Nov 2004
<DD> <a href=updates.html#v18NOV04>New version</a> of MORSE to fix
     <A href=bugs.html#bug02>Bug#02</a> and add optional
      <a href=driver.html#shp>*SHP</a> section to driver table (to specify
      non-Voigt line shapes).

<P>
<DT> 16th Nov 2004
<DD> Add <a href=bugs.html>Bug Reports</a> and <a href=updates.html>Updates</a>
     web-pages. 
<DD> New version of MORSE to fix <a href=bugs.html#bug01>Bug#01</a>

<P>
<DT> 15th Nov 2004
<DD> Start made on <a href=sum.html>Software User's Manual</a>, 
     section on <a href=driver.html>driver table</a> completed.

<P>
<DT> 10th Nov 2004
<DD> Web page <a href=updates.html>updates.html</a> added to keep track
     of updates to source code

<P>
<DT> 2nd July 2004
<DD> Version 1 now released. Source code, L1C spectral microwindows 
and all auxiliary data for pT and H2O retrieval, together with instructions
and sample outputs, available as a tar file.
</dl>
<P>
For more information, please contact Anu Dudhia
(<a href=mailto:dudhia@atm.ox.ac.uk>dudhia@atm.ox.ac.uk</a>).
<hr>
<ul>
<LI><A href="http://envisat.esa.int/instruments/mipas/index.html">MIPAS</a>
<li><a href="http://www-atm.atm.ox.ac.uk/">Atmospheric, Oceanic and Planetary
Physics Home Page</a>
<li><a href="http://www.atm.ox.ac.uk/group/mipas/">AOPP MIPAS Page
</ul>
<p>

</BODY>
</HTML>


eamM el/;M>b>