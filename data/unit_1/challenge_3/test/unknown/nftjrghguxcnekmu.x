<HTML>
<HEAD>
<TITLE> MORSE Driver Table</TITLE>
<LINK TYPE="text/css" REL="stylesheet" HREF="morse.css">
</HEAD>
<BODY>
<H1 CLASS=PAGE>MORSE Software User's Manual: Driver Table</h1>
<H6>11NOV05</H6>
<HR>
When MORSE is run it reads a file in the local directory
called <b>morse.drv</b>. This 'driver table' is an editable file
determining other input/output files and how MORSE is run.
In this sense it is similar to the 
<a href=http://www.atm.ox.ac.uk/RFM/>RFM</a>, however there are 
certain important differences <font color="green">indicated in
green</font>.
Changes with respect to <A HREF=./v2/driver.html>MORSE v2</a> are 
<font color="maroon">indicated in maroon</font>
<P>
<TABLE ALIGN=center>
<CAPTION><B>Section structure of MORSE Driver Table</B></CAPTION>
<TH CLASS=M COLSPAN=2>Mandatory sections
<TBODY>
<TR> <TD><A href=#hdr><B>*HDR</b></a>
     <TD> 1. Comment record written to output file headers
<TR> <TD><a href=#flg><B>*FLG</b></a> 
     <TD> 2. Option flags
<TR> <TD><a href=#l1c><B>*L1C</b></a> 
     <TD> 3. Input spectra
<TR> <TD><a href=#rtv><B>*RTV</b></a> 
     <TD> 4. Target quantities to be retrieved
<TR> <TD><a href=#lev><B>*[LEV]</b></a> 
     <TD> 5. Retrieval levels 
(<b>*ALT</B>, <b>*PRE</B>, <b>*SWP</B> or <b>*TAN</B>)
<TR> <TD><a href=#mwl><B>*MWL</b></a> 
     <TD> 6. Microwindow list files 
<TR> <TD><a href=#mdb><B>*MDB</b></a> 
     <TD> 7. Microwindow Database files
<TR> <TD><a href=#cli><B>*CLI</b></a> 
     <TD> 8. Climatological profiles
<TR> <TD><a href=#ils><B>*ILS</b></a> 
     <TD> 9. Instrument Line Shape files
<TR> <TD><a href=#fov><B>*FOV</b></a> 
     <TD> 10. Field of View Shape (omitted if nadir-viewing)
<TR><TH CLASS=O COLSPAN=3>Optional sections
<TR> <TD><a href=#acc><B>*ACC</b></a>
        <TD>Accuracy settings
<TR> <TD><a href=#acv><B>*ACV</b></a>
        <TD>A Priori Covariance
<TR> <TD><a href=#asd><B>*ASD</b></a>
        <TD>A Priori Standard Deviation
<TR> <TD><a href=#cld><B>*CLD</b></a>
        <TD>Cloud Detection Criteria
<TR> <TD><a href=#cnv><B>*CNV</b></a>
        <TD>Convergence Criteria
<TR> <TD><a href=#fmz><B>*FMZ</b></a>
        <TD>Forward Model Altitudes
<TR> <TD><a href=#hit><B>*HIT</b></a>
        <TD>HITRAN Database
<TR> <TD><a href=#l2p><B>*L2P</b></a>
        <TD>Level 2 Input Profiles
<TR> <TD><a href=#lut><B>*LUT</b></a>
        <TD>Directories for Look Up Tables
<TR> <TD><a href=#nte><B>*NTE</b></a>
        <TD>Vibrational Temperatures for non-LTE forward model
<TR> <TD><a href=#out><B>*OUT</b></a>
        <TD>Rename Output Files
<TR> <TD><a href=#shp><B>*SHP</b></a>
        <TD>Specify line shapes for line-by-line calculations
<TR> <TD><a href=#xsc><B>*XSC</b></a>
        <TD>Directories for Molecular Cross Sections
<TR> <TH CLASS=M COLSPAN=2>Termination Record
<TR> <TD><B>*END</b>
</TABLE>
<P>
<DL>
<DT><B>Sections</b>
<DD> The <B>driver table</b> consists of a number of <B>sections</b>
identified by records starting with an asterisk followed by 3 characters
<blockquote>
  <b><font color=red>*ABC</font></b>
</blockquote>
where <b>ABC</b> is some code (case-insensitive)
defining the contents of the section. These 4 characters have to occupy
the first 4 positions in the record. 
<P>
The driver table is terminated with
<blockquote>
  <b><font color=red>*END</font></b>
</blockquote>
(remember to add a <B>&lt;CR&gt;</b> after the <B>*END</b>)
<P>
The first 10 sections (<b>*HDR ... *FOV</b>)
are mandatory and the sequence is fixed (or 9 sections for nadir-viewing
geometry since FOV is not specified for nadir-viewing).
Thereafter sections are optional and in any order, terminated 
with the <B>*END</B> record.


<P>
Only the first 4 characters of any record starting with <TT><B>*</b></tt>
are read, so comments may be added to these records without any exclamation
mark if you need to remind yourself what each does
<P>
<DT><B>Records</b>
<DD> Each <B>section</b> consists of one or more 
<B>records</b>:
<UL>
<LI> Anything beyond 80 characters is ignored
<LI> Anything beyond an exclamation mark '<b>!</b>' is ignored - 
useful for adding
   comments or 'commenting out' records
<LI> Empty records (ie containing only space characters) are also ignored.
</ul>

<P>
<DT><B>Fields</b>
<DD>
Each <B>record</b> is usually divided into one or more <b>fields</b> 
separated by spaces:
<UL>
<LI> Case is not significant except where referring to filenames or
      directories
<LI> Spaces are not significant except to separate fields
<LI> The various fields can be distributed over an arbitrary number of records
<LI> Order <i>may be</i> significant - depends on the type of section.
</ul>

<P>
<DT><B><font color=maroon>MORSE v2 Differences</b>
<DD> Main differences with respect to the structure of the MORSE v2
driver table
<UL>
<LI> <B><a href=scn>*SCN</a></b> section 
(originally #3) is no longer required since the 
information is now carried in the L1C file itself
<LI> <B><a href=scn>*L1C</a></b> section is now #3 instead of #8 in order to 
introduce the data originally in the <B><a href=scn>*SCN</a></b> section via 
the L1C file itself. Also includes updated pointing information
(via a <b>morse.swp</b> file).
<LI> <B><a href=scn>*RTV</a></b> section is now specified before the 
<B><a href=scn>*LEV</a></b> section (#5 and #6 instead of #3 and #4)
in order to allow different retrieval grids for different species
<LI> <B><a href=scn>*LEV</a></b> section is redefined as one of 
<B>*ALT</b>, <B>*PRE</b>, <B>*SWP</B> or <B>*TAN</B>, 
depending on how the retrieval grid is to be specified.
</ul>
</font>
<P>
<DT><b><font color=green>RFM Differences </font></b>
<DD> <font color=green>Main differences with respect to the RFM driver table
<b>rfm.drv</b>
<ul>
<LI> 'Optional sections' in the RFM are usually 
ignored unless activated by a 
corresponding Flag in the *FLG section, but in
MORSE the general principle is to use every section that is present in the
driver table without requiring a corresponding Flag, ie the presence of
the section in the driver table acts as the Flag.
<LI> Also, while the
RFM has fairly specific formats for each section of the driver table, 
with MORSE I've tried to simplify things using a generic PARAMETER=VALUE
structure wherever possible.
</ul>
</font>

<P>
<DT><b>Examples</b>
<DD> <a href=morse_pt.drv><b>morse_pt.drv</b></a> Pressure/Temperature Retrieval
<DD> <a href=morse_h2o.drv><b>morse_h2o.drv</b></a> Water Vapour Retrieval
</dl>
<P>

The rest of this document describes the contents 
of each section.

<a name=hdr>
<h2 class=m>*HDR Section (#1)</h2>
<P>
<DL>
<DT><b>Description</b>
<DD> Text passed directly to <a href=outputs.html>output files</a> 
as the second 'comment' record
in the <a href=outputs.html#common>file headers</a>,
eg to identify driver table used to generate output files.

<P>
<DT><b>Format</b>
<DD> Single record

        <TABLE class=sec>
        <TR><TH>Field<TH>Type<TH>Description
        <TR><TD><b><font color=red>HDRREC</font></b>
            <TD>C*79 <TD> Text for <a href=rfm_outputs.html>output file</a>
                           headers
        </TABLE>

<P>
<DT><b>Notes</b>
  <OL>
  <LI> In the output file headers, an exclamation mark (<b>!</b>) is written 
       as the first character (to identify a comment record), with the
       text string following, hence the truncation to 79 characters rather than
       the full 80 which could fit in the driver table section.
  <LI> Although the record is read as a single string, the usual rules for
       driver table entries still apply: completely blank records are ignored
       and the record is truncated at the first exclamation mark.
  <LI> The version of the MORSE software used (variable <B>VIDHDR</b> set
       at the start of module <b>morse.for</b>)  is automatically written into
       the <i>first</i> header record of output files so there is no need to
       include this information in the <B>*HDR</b> section.
  </ol>

<P>
<DT><B>Example</b>
<DD> <BLOCKQUOTE><div class="drvbox">
<pre>*HDR
  O3 Rtvl generated with morse.drv 14NOV04 ! [and this part won't be written] 
</pre></div></BLOCKQUOTE
</dl>

<a name=flg>
<h2 class=m>*FLG Section (#2)</h2>
<P>
<DL>
<DT><b>Description</b>
<DD> A series of 3-letter codes indicating various MORSE options to be
'switched on' (all switched off by default)
<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, any order, limited set of values.
        <TABLE class=sec>
        <TR><TH>Field<TH>Type<TH>Value<TH>Description
        <TR><TD><b><font color=red>FLG</font></b> <TD>C*3 
        <TD> <B>ACC</B> <TD> 
More stringent default accuracy/convergence criteria
      <TD>  <font color=maroon>New in v3</font>
  <TR><TD><TD><TD><B>AHY</b><TD> Suppress hydrostatic equilibrium
  <TR><TD><TD><TD><B>APR</b><TD> Output A Priori information
         (<a href=outputs.html#apr><B>morse.apr</b></a>)
  <TR><TD><TD><TD><B>CLD</b><TD> Use cloud detection
  <TR><TD><TD><TD><B>COV</b><TD> Output covariance matrix
         (<a href=outputs.html#cov><B>morse.cov</b></a>)
  <TR><TD><TD><TD><B>CTM</b><TD> Use molecular (eg H2O) continuum data
  <TR><TD><TD><TD><B>DIA</b><TD> Output iteration diagnostics
         (<a href=outputs.html#dia><B>morse.dia</b></a>)
  <TR><TD><TD><TD><B>FGD</b><TD> Use full, as opposed to irregular, grid
  <TR><TD><TD><TD><B>FIX</b><TD> Assume fixed relative altitudes 
            (eg detector array)
      <TD>  <font color=maroon>New in v3</font>
  <TR><TD><TD><TD><B>FMW</b><TD> use full microwindow (ie set all masks = TRUE)
      <TD>  <font color=maroon>New in v3</font>
  <TR><TD><TD><TD><B>FVZ</b><TD> Suppress FOV distortion due to refraction
  <TR><TD><TD><TD><B>GEO</b><TD> Use geometric (ie non-refractive) ray paths
  <TR><TD><TD><TD><B>LIN</b><TD> Assume VMR varies linearly with 
         altitude rather than logarithmically
  <TR><TD><TD><TD><B>MWO</b><TD> Write 
           <a href=outputs.html#mwo>outputs</a> for each microwindow
  <TR><TD><TD><TD><B>QAD</b><TD> Use simple quadratic fit to line wings 
           rather than inverse quadratic
  <TR><TD><TD><TD><B>RES</b><TD> Output residual spectra 
         (<a href=outputs.html#res><B>morse.res</b></a>)
  </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> <font color="green">There are a number of other RFM options
which should work in principle but have not been tested, plus a number
of RFM options such as FOV and ILS which are assumed <i>always</i> enabled
for MORSE so are not explicitly specified - 
see modules <B>flgcom.inc</b> and <b>drvflg.for</b>]</font>
   <LI> <font color="maroon">The following v2 flags are no longer used
       <DL>
       <DT><B><FONT COLOR="RED">NOM</font></b> 
           Use nominal sweep altitudes instead of actual
       <DD> Now always assumed true
       <DT><B><FONT COLOR="RED">HYD</font></b>  
             Use hydrostatic constraint (PRE + TEM retrieval only)
       <DD> Now assumed true whenever applicable, use new 
            <B><FONT COLOR="RED">AHY</font></b> to switch off
       <DT><B><FONT COLOR="RED">TRA</font></b>  
            Use transmittance rather than radiance measurements
       <DD> Now determine type of spectra from info L1C file itself
       </DL> </font>
   </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*FLG
  CLD APR RES   ! Use cloud-detection, generate A Priori and Residuals files
</pre></DIV></BLOCKQUOTE>
</div>

</dl>

<a name=l1c>
<h2 class=m>*L1C Section (#3)</h2>

<P>
<DL>
<DT><B>Description</b>
<DD> Input spectral data, 
plus optional modification to
tangent heights.

<P>
<DT><B>Format</b>
<DD> Single field, followed by optional second field.
Fields identified by order.
        <TABLE class=sec>
        <TR><TH>Field<TH>Type<TH>Description<TH>Requirement
        <TR><TD>1. <b><font color=red>L1CFIL</font></b> <TD>C*80 
            <TD> Name of <a href=inputs.html#l1c><B>L1C</b></a> file 
            <TD> Mandatory
        <TR><TD>2. <b><font color=red>SWPFIL</font></b> <TD>C*80 
            <TD> Name of <A href=inputs.html#swp><B>.swp</B></a> file
            <TD> Optional
        </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> For MORSE v3, <a href=http://www.atm.ox.ac.uk/group/mipas/L1C>L1C
   format</a>  must be v2.0 or later - this contains
       an additional record identifying the viewing geometry and resolution
       which are read by MORSE v3.
   <LI> L1C files can be generated by IDL program
        <b><a href=l1c.html>l1c.pro</a></b> using MIPAS L1B files 
          (full, unapodised spectra for complete orbits) as input.
   <LI> If the sweep tangent heights have been modified
       by a previous pT retrieval, the name of the 
       <a href=outputs.html#swp><B>.swp</b></a> 
       output file from the pT retrieval (containing a <B>*HGT_RTV</B> profile)
       should inserted into the driver table immediately after the 
       L1C file and the sweep altitudes will be updated
<font color=maroon>(In v2, the sweeps were updated via the <a
   href=inputs.html#atm><B>.atm</B></a> file in 
     the <a href=#l2p><B>*L2P</b></a> 
section)</font>
       
   </ol>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*L1C
  L1C_02081_SCAN#13   ! Scan#13, orbit 2081
  ../pt/morse.swp     ! Modified Sweep altitudes from pT retrieval output</pre>
</div></blockquote>

</dl>


<a name=rtv>
<h2 class=m>*RTV Section (#4)</h2>
<P>
<DL>
<DT><B>Description</b>
<DD> The list of parameters to be retrieved.

<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, any order, limited set of values.

<DD> <TABLE CLASS=SEC>
     <TR><TH>Field<TH>Type<TH>Value<TH>Description<TH>Units<TH>Restrictions
     <TR><TD><FONT COLOR=RED><B>RTV</B></FONT <TD> C*10
          <TD><B>TEM</B><TD> Temperature  <TD> [K]
     <TR><TD><TD><TD><B>PRE</B><TD> Pressure     <TD> [mb]
         <TD> Not on <a href=#lev><B>*PRE</B></a> levels
     <TR><TD><TD><TD><B>POI</B><TD> Pointing     <TD> [km]
         <TD> Not on <A href=#lev><B>*TAN</B></a> or 
                     <a href=#lev><B>*SWP</B></a> levels
     <TR><TD><TD><TD><B>CTM</B><TD> Continuum    <TD> [/km]
     <TR><TD><TD><TD><B>AEROSOL</B><TD> Aerosol <TD> [/km]
     <TR><TD><TD><TD><B>SFT</B><TD> Surface Temperature 
               <TD> [K] 
     <TR><TD><TD><TD><B>SFP</B><TD> Surface Pressure 
               <TD> [mb] 
     <TR><TD><TD><TD><B>OFF</B><TD> Radiometric Offset
        <TD> [nW/(cm2.sr.cm<sup>-1</sup>)]
     <TR><TD><TD><TD>[gas]<TD> Molecule VMR
        <TD> [ppmv] <TD> [gas] from <a
     href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>List of gases</a> 
     <TR><TD><TD><TD>[gas]<B>(</B>[iso]<b>)</b><TD> Isotopomeric VMR
        <TD> [ppmv] <TD> [iso] from 
    <a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_isolist.html>List of isotopes
           </a> 
     <TR><TD><TD><TD>[gas]<B>(</B>[iso]<b>)</b><B>(</B>[vib]<b>)</b>
      <TD> Vibrational Temperature
        <TD> [ppmv] <TD> [vib] is HITRAN Global Quantum Number (1=ground state)
     </TABLE>

<P>
<DT><B>Notes</b>
  <OL>
  <LI> <font color=maroon><b>POI</b>, <B>SFT</B> and <B>SFP</B> are all new in 
        MORSE v3</FONT>
  <LI> The hydrostatic constraint is assumed whenever temperature (<B>TEM</B>)
     and pressure (<B>PRE</B> or <B>SFP</B>) are retrieved 
       together. The <a href=#flg><B>AHY</B></a> Flag suppresses this
       <font color=maroon>(in MORSE v2 it was necessary to explicitly specify
        the hydrostatic constraint using the <B>HYD</B> flag)</font>
  <LI> Continuum and offset are retrieved independently for each microwindow.
       The <a href=#flg><B>MWO</b></a> Flag
       needs to be set if the output of these parameters is required as
<a href=outputs.html#rtv><b>morse.rtv_MWn</b></a> files 
(the offset value is written in the file header).

  <LI> By default (set in subroutine <b>levvec.for</b>) the continuum is
       only retrieved to a maximum altitude of 30km (or minimum pressure of
       10mb on <B>*PRE</B> levels).
       See <a href=#lev><B>*LEV</B></a> section notes for how to change this.
  <LI> <B>AEROSOL</B> (introduced in MORSE v08NOV05 onwards) 
       differs from <B>CTM</B> in that a single profile is 
       retrieved for all microwindows, rather than an independent profile for
       each microwindow separately. Effectively AEROSOL is treated just like
      any other retrieved gas. Note that the a priori covariances for AEROSOL
       and CTM differ, so even if AEROSOL is retrieved for a single microwindow
       over the same altitude range as CTM the results will differ.
  <LI> The retrieved values of scalar quantities such as 
      <B>SFT</B> and <B>SFP</B> are written into
      the header of the <a href=outputs.html#rtv><b>morse.rtv</b></a> file
  <LI> <B>[gas]</B> Molecules can either be specified as 
        <A href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>formula, 
          HITRAN index or (for CFCs) 'F' number</a>. However, internally these
          are stored as formulae or (for CFCs) 'F' number, all lower case.
  <LI> For isotopic retrievals add <b>(iso)</b> 
      to the molecule name where  <B>iso</b> is the 
       <a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_isolist.html>HITRAN isotope
       ID</a>  
       (1=most abundant, 2=second most, etc), eg for 
        H2 18O use <B>H2O(2)</b>.
  <LI> For Vibrational Temperature retrievals (v01MAY07 or later), 
    add <B>(vib)</B> to the
        molecule/isotope where <B>vib</B> is the HITRAN Global Quantum
      number identifying the vibrational level, eg for 
       CO 1st excited level (vib=2) for the most abundant isotope use
        <B>CO(1)(2)</B>. 
  <LI> For VT retrievals there is also an option to retrieve the same
      vibrational temperature for all isotopes together. For this, use 
      a <B>*</B> symbol instead of the isotope ID, eg <B>CO(*)(2)</B>.
  </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*RTV
  TEM PRE CTM O3 H2O(1) H2O(2)  ! Joint pT, O3, ctm and main two H2O isotopes</pre>
</div></blockquote>

</dl>


<a name=lev>
<h2 class=m>*ALT, *PRE, *SWP or *TAN Section (#5) </h2>
<P>
<DL>
<DT><B>Description</b>
<DD> The retrieval grid
<DD> The section header itself defines the grid type

<P>
<DT><B>Format</b>
<DD> Multiple fields or PARAMETER=VALUE settings, order is significant
<DD> Structure:
     <TABLE CLASS=SEC>
     <TR><TD> <B>*LEV </B>      <TD> Mandatory
         <TD> Section Header defines grid type
     <TR><TD> <B>GRD</B>(i)  <TD> Mandatory
         <TD> Repeat for i=1:ngrd retrieval grid levels
     <TR><TD> <B>SUBSET=</B>[rtv(j)]   <TD> Optional
          <TD> Start Repeat for j=1:nrtv retrieved parameters 
     <TR><TD> <B>IDXSUB</B>(k,j) <TD> Optional
           <TD> Repeat for k subset levels of parameter j
     <TR><TD> <TD> <TD> End Repeat for j
     <TR><TD> <B>REFLEV=</B>[rlev] <TD>Optional  <TD> Insert at any point
     <TR><TD> <B>REFSWP=</B>[rswp] <TD>Optional  <TD> Insert at any point
     </TABLE>

<DD> <TABLE CLASS=SEC>
     <TR><TH>Field<TH>Type<TH>Value<TH>Description     
     <TR><TD><B><FONT COLOR=RED>*LEV</FONT></B> <TD> C*4 
              <TD><B>*ALT</B><TD> Altitudes [km]
     <TR><TD><TD><TD><B>*PRE</B><TD> Pressures [mb]
     <TR><TD><TD><TD><B>*SWP</B><TD> Tangent points,
       specified by Sweep indices 
     <TR><TD><TD><TD><B>*TAN</B><TD> Tangent points, 
       specified by Nominal altitudes [km]
     <TR><TD><B><FONT COLOR=RED>GRD</FONT></B> <TD> R*4 
         <TD> <TD> Retrieval Grid levels (*ALT, *PRE, *TAN)
     <TR><TD><TD ALIGN=CENTER>I<TD><TD> Retrieval Grid Sweep indices (*SWP)
     <TR><TD><B><FONT COLOR=RED>SUBSET=</FONT></B> <TD> C*8 
         <TD> [rtv] <TD> Define subset for retrieved parameter [rtv]
     <TR><TD><B><FONT COLOR=RED>IDXSUB</FONT></B> <TD ALIGN=CENTER> I
         <TD> <TD> Index of <B>GRD</B> for retrieval subset level
     <TR><TD><B><FONT COLOR=RED>REFLEV=</FONT></B> <TD ALIGN=CENTER> I
         <TD> [rlev] <TD> Index of retrieval level used as reference 
     <TR><TD><B><FONT COLOR=RED>REFSWP=</FONT></B> <TD ALIGN=CENTER> I 
         <TD> [rswp] <TD> Index of sweep used as reference 
    </TABLE>

<P>
<DT><B>Notes</b>
  <OL>
  <LI> <font color=maroon>This section is radically different from the 
      v2 <B>*LEV</B> section </font>
  <LI> Both the <B>*SWP</B> and 
       <B>*TAN</B> grids are tangent point grids,
       just specifying the tangent points in different ways. However, with
       the <B>*TAN</B> grid it is also possible to
       specify one additional level above the highest sweep (eg at 76km).
  <LI> The <B>GRD</b> retrieval levels must be specified in order of
       increasing altitude, decreasing pressure, or sweep indices whose
       associated tangent point altitudes increase.
  <LI> For the <B>*SWP</B> and 
<B>*TAN</B> the <b>GRD</b> values must correspond to tangent point
information associated with sweeps in the 
<A HREF=inputs.html#l1c><B>L1C</B></A> file.
  <LI> For nadir-viewing <A HREF=inputs.html#l1c><B>L1C</B></A> spectra, only the 
      <B>*ALT</B> and <B>*PRE</B> grids
      may be used (since 'tangent point' is meaningless in the nadir viewing 
      geometry).

  <LI> With retrievals on <B>*PRE</B> pressure levels, if the first listed
      level is <B>0</B> this is intepreted as having a retrieval level at
       the surface (defined as altitude z=0km).
<LI> If no retrieval grid <B>SUBSET</B> is defined, default is to retrieve 
everything on full retrieval grid apart from continuum - see Note in 
<a href=#rtv><B>*RTV</B></A> section
<LI> If a <B>SUBSET</B> is defined, the following values must be indices
in increasing order in the range 1:(No.<B>GRD</B> values). 
<LI> If no <B>REFLEV</B> value is defined, the reference level is taken as
      <B>REFLEV=1</B>, ie the lowest <B>GRD</B> level in altitude
<LI> If no <B>REFSWP</B> value is defined, the reference sweep is taken as
    the index of the sweep with the lowest nominal altitude.
  </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>
*TAN
  12 15 18 21 24 27 30 33 36 39 42 47 52 60 68 ! Retrieve 12-68km tan.pts
  76                                           ! plus extra level at 76km
  SUBSET=SF6
  12 15 18 30 42            ! Retrieve SF6 on fewer levels
  REFLEV=3                  ! Use nominal 18km sweep as reference level
  SUBSET=CTM                
  12 15 18 21               ! Only retrieve continuum to 21km
</pre></DIV></BLOCKQUOTE>

</dl>


<a name=mwl>
<h2 class=m>*MWL Section (#6) </h2>

<P>
<DL>
<DT><B>Description</b>
<DD> List of microwindows to be used and, optionally, absorbers for 
each microwindow.

<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, order is significant.
    <TABLE CLASS=SEC>
    <TR><TH>Field <TH> Type <TH> Description
    <TR><TD><FONT COLOR=RED><B>FILMWL<B></FONT> <TD> C*80 
        <TD> Names of <a href=inputs.html#mwl><b>.lst</b></a> files
    </TABLE>
<P>
<DT><B>Notes</b>
<OL>
<LI> MORSE processes the microwindows sequentially in the order 
in which they appear in each <B>MWLFIL</B> file,
and in 
the order in which each <B>MWLFIL</B> file
appears in this section. In theory the end result should not be
sensitive to the order in which microwindows are used but in practice
there are always small  differences due to convergence, etc.
<LI> The C*8 microwindow labels and wavenumber boundaries in the 
<b>MWLFIL</b> files must match those in the <B>MW*DAT</b> 
database files included in the <B><a
href=#mdb>*MDB</a></b> in order to identify a matching microwindow 
<LI> The tangent altitude range in the
<b>MWLFIL</b> file overrides that in the database file
<LI> If <i>any</i>
absorber indices are included in the <b>MWLFIL</b> file
these replace <i>all</i>
the absorbers in the database file 
- a useful way of reducing the cpu time/array space
        by reducing the number of absorbers considered (the retrieved species
       are automatically considered as absorbers in every microwindow whether
       explicitly listed or not)
<LI> Normally, the microwindow list would only identify the microwindow 
       to be used (combination of code and wavenumber boundaries) and 
       the applied tangent height range, with other information coming
       from the Microwindow Database file. However it is also possible to
       use the microwindow list to fully specify the microwindow -
       see use of <b>*</b> character in <a href=driver.html#mdb><b>*MDB</b></a>
        section of the driver table
</ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*MWL
  pt_000.lst  ! pT microwindows
  h2o_000.lst ! plus H2O microwindows for a joint retrieval with pT</pre>
</div></BLOCKQUOTE>

</dl>

<a name=mdb>
<h2 class=m>*MDB Section (#7)</h2>

<P>
<DL>
<DT><B>Description</b>
<DD> Microwindow Database File(s) containing further information on
microwindows: spectral masks, irregular grids and full list of absorbers

<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, any order.
    <TABLE CLASS=SEC>
    <TR><TH>Field <TH> Type <TH> Description
    <TR><TD><FONT COLOR=RED><B>MDBFIL<B></FONT> <TD> C*80 
        <TD> Names of <a href=inputs.html#mdb><b>MW*DAT</b></a> files
    </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
  <LI> The MW database files <B>MDBFIL</B> generally 
    contain information for all microwindows of which only a subset is
       required, as specified in the <a href=#mwl><b>*MWL</b></a> 
     section 
   <LI> An asterisk <B>*</b> in this section (in character position 2
       or later) indicates that, if the microwindow
        cannot be found in a database file (or no database files are provided)
        the complete microwindow information is determined from the 
        entry in the <a href=inputs.html#lst><b>.lst</b></a> file in the
        <a href=#mwl><B>*MWL</B></A> section. 
        This implies no spectral masks or irregular
        grids, which are only stored in database files, but is useful for
        running retrievals with ad-hoc 'hand selected' microwindows.
   <LI> If you want to remove all spectral masks <i>but</i> still use the
        irregular grids, use the normal <B>MDBFIL</B> files but add the 
        <B>FMW</B> Flag in the <a href=#flg><B>*FLG</B></a> section.
   </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*MDB
  MW_PT__103.DAT MW_H2O_103.DAT  ! pT & H2O microwindows
  *         ! construct any other MWs from .lst file
</pre></BLOCKQUOTE></DIV>

</dl>

<a name=cli>
<h2 class=m>*CLI Section (#8)</h2>

<P>
<DL>
<DT><B>Description</b>
<DD> Atmospheric profiles, eg from climatology, used to specify
both <i>a priori</i> for retrieved species and fixed values for
unretrieved species.

<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, order is significant

    <TABLE CLASS=SEC>
    <TR><TH>Field <TH> Type <TH> Description
    <TR><TD><FONT COLOR=RED><B>CLIFIL<B></FONT> <TD> C*80 
        <TD> Names of <a href=inputs.html#cli><b>.atm</b></a> files
    </TABLE>

<P>
<DT><B>Notes</b>
  <OL>
  <LI> The altitude grid of the first file determines the altitude grid on
which all subsequent files are interpolated and stored, so should typically
span 0-120km at 1km intervals <font color="green">[however, this is not
the same as the internal forward model altitude grid which is what appears
in the <a href=../outputs.html#atm><b>morse.atm</b></a> output file - 
see <B><a href=#FMZ>*FMZ</A></b> section]</font>
  <LI> If profiles for any species are repeated, 
      subsequent files overwrite the earlier
        profiles <font color="green">[however, unlike the RFM, the profile is
        only replaced within the altitude range of the new profile].</font>
  <LI> Previously retrieved profiles within the same scan, and therefore
       on the same altitude grid as the retrieval (eg pT), should be
       input via the <B><a href=#l2p>*L2P</a></b> section rather than here
       in order to avoid unecessary interpolation.
  </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*CLI
  day.atm     ! Mid-latitude dayime profiles
  aerosol.atm ! zero extinction aerosol profile 
  h2o.atm     ! H2O retrieved from previous scan (so different alt.grid)
</pre></DIV></BLOCKQUOTE>

</dl>

<a name=ils>
<h2 class=m>*ILS Section (#9)</h2>

<DL>
<DT><B>Description</b>
<DD> Apodised Instrument Line Shape 

<P>
<DT><B>Format</b>
<DD> Multiple fields of single type, any order.

    <TABLE CLASS=SEC>
    <TR><TH>Field <TH> Type <TH> Description
    <TR><TD><FONT COLOR=RED><B>ILSFIL<B></FONT> <TD> C*80 
        <TD> Names of <a href=inputs.html#ils><b>.ils</b></a> files
    </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> A generic lineshape can be supplied for all microwindows and/or
        separate files for particular spectral regions (the valid 
        spectral range is included in the <a href=ilsfil.html><b>.ils</b></a> 
        header)
   </ol>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*ILS
  mipas_a.ils  ! MIPAS A band AILS
  mipas_ab.ils ! MIPAS AB band AILS
  nbstrong.ils ! Idealised Norton-Beer Strong ILS for other bands
</pre></div></blockquote>

</dl>

<a name=fov>
<h2 class=m>*FOV Section (#10) </h2>

<DL>
<DT><B>Description</b>
<DD> Field of View Shape
<DD> This section is omitted for nadir-viewing spectra (as determined
by the <A HREF=inputs.html#l1c><B>L1C</B></A> file).

<P>
<DT><B>Format</b>
<DD> Single field
    <TABLE CLASS=SEC>
    <TR><TH>Field <TH> Type <TH> Description
    <TR><TD><FONT COLOR=RED><B>ILSFIL<B></FONT> <TD> C*80 
        <TD> Name of <a href=inputs.html#fov><b>.fov</b></a> file
    </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> It is (currently) assumed that the MIPAS FOV shape has no spectral 
        dependence so only a single shape is used for all bands
   <LI> By default, the FOV is allowed to distort with refraction at low
       altitudes. This can be switched off by adding the <B>FVZ</B> flag in 
       the <B><a href=#flg>*FLG</a></b> section.
   <LI> <font color=green>Since only one sweep is processed at a time, there
       is no particular advantage in having a FOV representation which
       matches the retrieval grid spacing</FONT>
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*FOV
  rfm_1km5.fov ! 5 pt representation of MIPAS FOV @1.5km spacing</pre>
</div></BLOCKQUOTE>

</dl>

<a name=acc>
<h2 class=o>*ACC Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Change Accuracy settings

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, any order

     <TABLE CLASS=SEC>
    <TH>Field<TH> Type <TH> Description <TH> Default
    <TR><TD ALIGN=RIGHT><font color="red"><b>NGJACC=</b></font> 
        <TD ALIGN=CENTER> I
        <TD> Number of gases for which Jacobians are computed 
        <TD> No. rtvd species
    <TR><TD ALIGN=RIGHT><font color="red"><b>PGCACC=</b></font> <TD> R*4
        <TD> Fractional change in pressure requiring new C-G path calc
        <TD> 0.01
    <TR><TD ALIGN=RIGHT><font color="red"><b>TGCACC=</b></font> <TD> R*4
        <TD> Change in temperature [K] requiring new C-G path calc
         <TD> 0.1
    <TR><TD ALIGN=RIGHT> <font color="red"><b>JCPACC=</b></font><TD> R*4 
        <TD> Fraction of Jacobian perturbation requiring additional path 
        <TD> 0.01
    <TR><TD ALIGN=RIGHT> <font color="red"><b>JCCACC=</b></font><TD> R*4 
        <TD> Fraction of Jacobian perturbation requiring new C-G path calc
        <TD> 0.5
    </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> Default values are set in module <b>mseini.for</b>, except for
        <B>NGJACC</b> which is set in <b>drvrtv.for</b>
   <LI> For the default setting of <B>NGJACC</b>, TEM and PRE both count as
        'retrieved species' so Jacobians are only calculated
        for the primary (and secondary, in the case of TEM+PRE) absorbing 
        molecules in each microwindow
   <LI> Default values can be made more stringent simply by adding the
       <B>ACC</B> Flag in the <A href=#flg><B>*FLG</B></A> section, in which
       case <B>NGJACC</B> becomes the total number of absorbers and the
       other parameters are all reduced by a factor 10. Any settings in this
       section will then override these new defaults.
   </OL>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*ACC
    NGJACC=4  TGCACC=0.2
</pre></div></blockquote>
</dl>

<a name=acv>
<h2 class=o>*ACV Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Specify A Priori Covariance

<P>
<DT><B>Format</b>
<DD> Single mandatory field plus optional PARAMETER=VALUE setting,
any order.
    <TABLE CLASS=SEC>
    <TH>Field<TH> Type <TH> Description <TH> Default
    <TR><TD ALIGN=RIGHT><font color="red"><b>ACVFIL</b></font> 
        <TD ALIGN=CENTER> C*80
        <TD> A Priori Covariance Matrix
        <TD> 
    <TR><TD ALIGN=RIGHT><font color="red"><b>RELAX=</b></font> 
        <TD ALIGN=CENTER> R*4
        <TD> Relaxation parameter 
        <TD> 0
    </TABLE>
                          (optional, default=0)
<P>
<DT><B>Notes</b>
   <OL>
   <LI> This section can be used either to specify a more complicated 
        {\it a priori}
       covariance than can be set by the <a href=#asd><B>*ASD</b></a> section,
       or to use a previously retrieved covariance partially relaxed to 
       climatological covariance as part of a Kalman filter along the orbit.
   <LI> The A Priori Covariance file only applies to the main target 
         parameters, ie excluding continuum and offset, and is in the same
        format as <a href=outputs.html#cov><b>morse.cov</b></a> (or 
       <a href=outputs.html#acv><b>morse.acv</b></a>) 
        output by the <a href=#flg><b>COV</b></a> Flag.
        The only check on the file is to make sure that the matrix dimensions
        agree with the current retrieval.
   <LI> The relaxation parameter <b>RELAX=</b>[R] is defined as 
<BLOCKQUOTE>
         SA' = SA*EXP(-R) + SC*(1-EXP(-R)) 
</BLOCKQUOTE>
       where SA' is the A Priori covariance actually used to 
       start of the retrieval,
       SA is the covariance read from the file specified in this section,
       and SC is the climatological covariance constructed in the same way as
       the default a priori (including modifications in the 
        <A href=#asd><B>*ASD</B></a> section). A value RELAX=0.0 (which is
       the default) means that the specified A Priori covariance is used
       exactly as supplied, a value RELAX=0.1 implies relaxing to
       climatological covariance with a 1/e time constant equivalent to 
       10 scans, 0.01 is a hundred scans, etc.

   </OL>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*ACV
    morse.cov   ! Use previous output covariance
    relax=0.05  ! Climiatological relaxation length: 20 profiles, or ~1/4 orbit
</pre></div></blockquote>
</dl>

<a name=asd>
<h2 class=o>*ASD Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Change A Priori Covariance Matrix 

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, any order
<DD> <TABLE CLASS=SEC>
     <TR><TH> Field <TH> Type <TH> Description <TH> Units <TH> Range <TH> Default
     <TR><TD ALIGN=RIGHT><font color="red"><b>CORREL=</b></font> <TD>R*4
         <TD> Correlation length <TD> [km] <TD> 0:100 <TD> 50km
     <TR><TD ALIGN=RIGHT><font color="red"><b>TEM=</b></font> <TD>R*4 
         <TD> Temperature SD <TD> [K] <TD>0.1:1000 <TD> 10K <TD>R*4
     <TR><TD ALIGN=RIGHT><font color="red"><b>PRE=</b></font> <TD>R*4
         <TD> Pressure SD <TD> [%] <TD> 0.1:1000 <TD> 50% <TD> 
     <TR><TD ALIGN=RIGHT><font color="red"><b>[gas]=</b></font> <TD>R*4
         <TD> VMR SD <TD> [%] <TD> 0.1:1000 <TD> 100% 
     </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> Default values are set in module <b>mseapr.for</b>
   <LI> [gas] has to be given as 'F' number for CFCs, formula for other
       species
   <LI> Currently there is no way of changing the continuum or offset
        a priori covariance via the driver table 
        (apart from the continuum correlation length, which follows
        <B>CORREL</b>). These are set explicitly in <b>micapr.for</b>.
        The continuum a priori extinction SD [/km] is given by 1E-3*(p/500) 
        where p is the pressure in [mb] (eg +/-0.02/km at 100mb) while the
        offset SD [nW] is the same as the average NESR value for the
        microwindow. 
   </OL>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*ASD
    CORREL=0 ! Uncorrelated A Priori
    CH4=10   ! Change CH4 to 10% uncertainty
</pre></div></blockquote>
</dl>

<a name=cld>
<h2 class=o>*CLD Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Change Cloud Detection Criteria

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, any order
     <TABLE CLASS=SEC>
     <TR><TH>Field<TH>Type<TH> Description <TH> Default
     <TR><TD ALIGN=RIGHT><font color="red"><b>IDXCLD=</b></font> <TD>R*4
         <TD> Maximum Cloud Index  (-1 or positive) <TD>1.8
     <TR><TD ALIGN=RIGHT><font color="red"><b>RADCLD=</b></font> <TD>R*4
         <TD> Minimum Cloud Radiance (-1 or positive) <TD> 125.0 
              [nW/(cm2.sr.cm<SUP>-1</SUP>)]
     <TR><TD ALIGN=RIGHT><font color="red"><b>TOPCLD=</b></font> <TD>R*4
         <TD> Maximum Cloud Altitude (-1 or positive) <TD> 30.0 [km]
     </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> These settings only have any effect on the retrievals if the
       <b>CLD</b> Flag in the <A href=#flg><B>*FLG</b></a> section is 
        set, otherwise the only effect is on the thresholds for which warning
        messages on possible cloud contamination are sent to the 
         <a href=outputs.html#log><b>morse.log</b></a> file.
   <LI> <B>IDXCLD</b> is the <i>maximum</i>  
         value of the U.Leicester Cloud Index 
         for which the sweep will be assumed cloud-contaminated
        (ie assumed cloud free for higher values). Note that
         a Cloud Index of 0.0 in the <a href=inputs.html#l1c><B>L1C</b>
         input file</a> is assumed cloud-free.
   <LI> <B>RADCLD</B> is the <i>minimum</i> radiance in the 
         cloud detection channel (960.7cm<sup>-1</sup>) for which the sweep 
          will be assumed cloud contaminated,
          (ie assumed cloud-free for lower values).
   <LI> Clouds are flagged if <i>either</i> the Cloud Index <I>or</I> the
       Cloud Radiance tests indicate a cloud. Set values of <b>-1</b> to 
       turn off either or both tests.
   <LI> <B>TOPCLD</b> sets the maximum altitude for which a cloud can be
         flagged. This is necessary because Cloud Index values become a bit
          random at high altitudes due to noise.
         Setting this to <b>-1</b> turns off any altitude limit, but is 
      not recommended unless <b>IDXCLD=-1</b> also.
   <LI> Default values are set in module <b>mseini.for</b> and reported
        at the start of the <a href=outputs.html#log><B>morse.log</b></a> file.
   </OL>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*CLD
    RADCLD=-1    ! Remove Cloud Radiance threshold test
    CLDIDX=2.2   ! Set more stringent Cloud Index threshold
</pre></div></blockquote>
</dl>

<a name=cnv>
<h2 class=o>*CNV Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Change Convergence Criteria

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, any order

<P>
<DT><B>Values</b>
<DD> <TABLE CLASS=SEC>
     <TR><TH>Field<TH>Type<TH> Description <TH> Default
     <TR><TD ALIGN=RIGHT><font color="red"><b>MAXITR=</b></font> 
         <TD ALIGN=CENTER> I
         <TD> Maximum number of iterations (GE 1) <TD>10
     <TR><TD ALIGN=RIGHT><font color="red"><b>CHILIM=</b></font> <TD>R*4
         <TD> Minimum value of ChiSq for convergence <TD> 1.0
     <TR><TD ALIGN=RIGHT><font color="red"><b>DELCHI=</b></font> <TD>R*4
         <TD> Minimum Change in ChiSq for convergence <TD> 0.1
     </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> Default values are set in module <b>mseini.for</b>, but can
        also be modified by setting the <B>ACC</B> Flag in the 
        <a href=#flg><B>*FLG</B></a> section: <B>MAXITR</B> multiplied by 10
        and other parameters divided by 10.
   <LI> The retrieval is stopped when <i>any</i> 
   of the above criteria are satisfied (tested in <b>swprtv.for</b>)
   <LI> The ChiSq statistic is the sum of the contributions from the
       A priori and Measurements, evaluated in module <b>chisq.for</b>, and
       then divided by the number of measurements in <b>swprtv.for</b>, 
       i.e. should equal about 1 if only the instrument noise is the 
       limiting factor.
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*CNV
    CHILIM=2.0 MAXITR=5
</pre></DIV></BLOCKQUOTE>
</div>
</dl>

<a name=fmz>
<h2 class=o>*FMZ Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Change internal forward model altitude grid

<P>
<DT><B>Format</b>
<DD> Multiple fields, single type, order is significant
     <TABLE CLASS=SEC>
     <TR><TH>Field<TH>Type<TH> Description
     <TR><TD><FONT COLOR=RED><B>FMZ</B></FONT> <TD> R*4 <TD>
      Nominal Foward Model Altitudes [km] <TD> (increasing monotonically)
     </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> The main purpose of this section is to allow a finer (eg 1km)   
       forward model grid to be used to investigate problems with
       3km representation of the true atmospheric profile, or to set
       default altitudes to match different scan pattern tangent points.
   <LI> Typically the forward model should have a level 3km below the 
        lowest retrieval level and 5-20km spacing above the
        highest retrieval level up to 120km (which is the default forward
        model grid)
   <LI> Additional altitudes will be inserted for nominal
        retrieval levels which do not match the forward model
   <LI> For pT retrievals on a tangent point grid, altitudes will be
        adjusted to maintain hydrostatic balance.
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*FMZ
    3 4 5 6 7 8 9 10 11 12 13 14 15 18 21 24 27 30 33 36 39 42
    47 52 60 68 76 85 100 120
</pre></DIV></BLOCKQUOTE>
</dl>

<a name=hit>
<h2 class=o>*HIT Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Spectroscopic Database file (eg HITRAN binary)

<P>
<DT><B>Format</b>
<DD> Single Field
    <TABLE CLASS=SEC>
    <TR><TH>Field<TH>Type<TH>Description
    <TR><TD><font color="red"><b>HITFIL</b></font> <TD> C*80
    <TD> Name of <a href=inputs.html#hit>binary spectroscopic 
          database file</a> 
    </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> A spectroscopic database file is required if any absorbing molecules
        have <a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>HITRAN ID
       </a> less than 50 (which will usually be the case) AND 
      corresponding <a href=#lut>Look Up Tables</a> are <I>not</i> available.
   <LI> The binary file is the same format as used by the RFM and
        GENLN2, and can be created from a HITRAN ASCII file using
        program <a href=http://www.atm.ox.ac.uk/RFM/rfm_downloads.html#for><b>hitbin.for</b></a>
   <LI> The reading of the binary file is machine-dependent, and the
        appropriate record size needs to be set in module
        <b>reclen.inc</b> (88 for most machines, 22 for alphas).
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*HIT
    ../morse_files/hitran_mipas.bin
</pre></div></blockquote>

</dl>

<a name=l2p>
<h2 class=o>*L2P Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Previously retrieved Level 2 profiles

<P>
<DT><B>Format</b>
<DD> Multiple fields, single type, order is significant
   <TABLE CLASS=SEC>
   <TR><TH>Field <TH> Type <TH> Description 
   <TR><TD> <font color="red"><b>L2PFIL</b></font> <TD> C*80
       <TD> Name of <a href=inputs.html#l2p><b>.atm</b></a> file  
     generated by <B>MORSE</b> for the same limb scan.
    </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> These replace the existing profiles input in the 
        <B><a href=cli>*CLI</a></b>
        section (which still have to be supplied) but the difference is that
        these profiles will usually be represented directly 
        on the retrieval altitudes
       (assuming they are all retrieved from the same scan)
        and therefore not interpolated to the climatology grid and
        then reinterpolated to the retrieval grid (as happens to files in the
         *CLI section).
   <LI> <font color=green>Original profiles are only replaced over the 
        altitude range of the subsequent profile, unlike in the RFM where
        the entire profile is overwritten. </font>
   <LI> Profiles retrieved in a different scan, ie on different
        altitudes, should be included in the 
        <B><a href=cli>*CLI</a></b> section.
   <LI> In theory the <b>morse.rtv</b> files could also be used here but it is
        better to use the full profile to ensure a consistent representation
        of the upper atmosphere (especially pT) in each retrieval.
   <LI> <font color=maroon>The <B>*SWEEP</b> profile, if present, is 
       ignored in MORSE v3 - see the <a href=#l1c><B>*L1C</B></a> section
       for updating L1C tangent altitudes.</font>
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*L2P
    morse_pt.atm          ! Input retrieved pT profile
    morse_h2o.atm         ! Input retrieved H2O profile
</pre></div></blockquote>
</dl>

<a name=lut>
<h2 class=o>*LUT Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Directories for Look Up Tables 

<P>
<DT><B>Format</b>
<DD> Multiple fields, single type, order is significant (Note 1)
    <TABLE CLASS=SEC>
    <TR><TH> Field <TH> Type <TH> Description
    <TR><TD> <font color="red"><b>LUTDIR</b></font> <TD> C*80
        <TD> Directory to be searched for 
           <a href=inputs.html#lut><B>CS*DAT</b> files</a>
    </TABLE>
<DD>
 <font color="green">[This is different from the RFM
        which uses either explicit filenames
or a generic filename including a '*' character for 
the microwindow/molecule name]</font>

<P>
<DT><B>Notes</b>
   <OL>
  <LI> If the <B>*LUT</b> section is present in
       the driver table, <B>MORSE</B> first attempts to find the LUTs for all
        combinations of microwindow/absorber and, if any LUTs are not found,
       will then use either the HITRAN 
      <a href=inputs.html#hit><b>.bin</b> file</a> specified in the
       <a href=#hit><B>*HIT</b> section</a> 
      (if <a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>HITRAN
       Index</a> of the absorber is &lt;50), or search for the 
        the <a href=outputs.html#xsc><b>.xsc</b> file</a> in directories
       specified in the <a href=#xsc><b>*XSC</b> section</a>
      (<a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>HITRAN
       Index</a> .GE. 50)
   <LI> The directories are searched in order for the first
        occurrence of the LUT. If a file of the same name occurs in
       any subsequent directories it is ignored.
   <LI> Use <b>./</b> to indicate the current directory
   <LI> Trailing '<B>/</b>' on <B>LUTDIR</B> is optional
   </OL>
<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*LUT
    ../morse_files/CS/pt/ ! pT LUTs
    ../morse_files/CS/o3/ ! O3 LUTs
</pre></div></BLOCKQUOTE>
</dl>


<a name=nte>
<h2 class=o>*NTE Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Vibrational temperature filenames

<P>
<DT><B>Format</b>
<DD> Multiple fields, single type, order is not significant.
    <TABLE CLASS=SEC>
    <TR><TH> Field <TH> Type <TH> Description
    <TR><TD> <font color="red"><b>NTEFIL</b></font> <TD> C*80
        <TD> Name of <a href=inputs.html#nte><b>.nte</b> file</a>  
     </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
  <LI> If the <B>*NTE</b> section is present in
       the driver table, <B>MORSE</B> will use the non-LTE form of
       radiative transfer equation, even if no vibrational temperatures 
       are supplied.
  <LI> Look Up Tables (<a href=#lut><B>*LUT</b> section</a>) cannot be used
      in conjunction with non-LTE calculations.
   <LI> <font color=green>
For non-LTE, MORSE (v01MAY07 or later) will accept vibrational temperatures
using either the RFM .nte files or within standard .atm files using
the *gas(iso)(vib) label. For VT retrievals, the output is written
to the .atm and .rtv files in this format.</font>
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*NTE
    co2_day_amil2da.nte  ! Use mid-lat daytime vib.temps
    h2o_day_amil2da.nte
    o3_day_amil2da.nte
</pre></div></blockquote

</dl>

<a name=out>
<h2 class=o>*OUT Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Rename <a href=outputs.html>Output Files</a>

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, any order. 
     <TABLE CLASS=SEC>
     <TR><TH> Field <TH> Type <TH> Description <TH> Default
     <TR><TD><font color="red"><b>DIR=</b></font> <TD> C*76
         <TD> Output directory 
         <TD> [local directory]
     <TR><TD> <font color="red"><b>ACV=</b></font> <TD> C*76
         <TD> A Priori Covariance 
         <TD> <b><a href=outputs.html#acv>morse.acv</a></b>
     <TR><TD> <font color="red"><b>APR=</b></font> <TD> C*76
         <TD> A Priori Vector 
         <TD> <b><a href=outputs.html#apr>morse.apr</a></b>
     <TR><TD> <font color="red"><b>ATM=</b></font> <TD> C*76
         <TD> Retrieved Atmosphere 
         <TD> <b><a href=outputs.html#atm>morse.atm</a></b>
     <TR><TD> <font color="red"><b>COV=</b></font> <TD> C*76
         <TD> Retrieval Covariance 
         <TD> <b><a href=outputs.html#cov>morse.cov</a></b>
     <TR><TD> <font color="red"><b>DIA=</b></font> <TD> C*76
         <TD> Diagnostics 
         <TD> <b><a href=outputs.html#dia>morse.dia</a></b>
     <TR><TD> <font color="red"><b>RES=</b></font> <TD> C*76
         <TD> Residual Spectra 
         <TD> <b><a href=outputs.html#res>morse.res</a></b>
     <TR><TD> <font color="red"><b>RTV=</b></font> <TD> C*76
         <TD> Retrieval Vector 
         <TD> <b><a href=outputs.html#rtv>morse.rtv</a></b>
     <TR><TD> <font color="red"><b>SWP=</b></font> <TD> C*76
         <TD> Sweep Diagnostics 
         <TD> <b><a href=outputs.html#swp>morse.swp</a></b>
     </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> The <B>DIR=</b>VALUE (a 
        trailing '<b>/</b>' character is added if it is not supplied) 
        simply added to the start of all the output filename strings,
        so what works and what doesn't depends slightly on the operating 
        system. Used on its own, it will simply redirect the standard MORSE
        output files to a different directory.
   <LI> Renamed output files are listed in the <b>morse.log</b> file when this
        section of the driver table is read.
   <LI> Default filenames are set in module <b>mseini.for</b>, these are
       not listed in the <b>morse.log</b> file.
   <LI> This section cannot be used to change the name or location of
        the log file, which is always <b>morse.log</b> written in the
         current directory (the reason being that this file is opened before
        the driver table is read - see module <b>mselog.for</b> if you really
        do need to change it).
   <LI> If the <B><a href=#flg>MWO</a></b> Flag is used, the string
       <B>_MW[nn]</b> will be appended to the new names
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*OUT
    APR=morse_pt.apr
    cov=./cov/morse_pt.cov
    dir=../Morse_Outputs/
</pre></div></blockquote>

</dl>

<a name=shp>
<h2 class=o>*SHP Section (Optional)</h2>

<DL>
<DT><B>Description</b> 
<DD> Specify alternative (ie non-Voigt) line shapes for 
line-by-line calculation

<P>
<DT><B>Format</b>
<DD> Multiple PARAMETER=VALUE fields, limited set of VALUEs, any order
     <TABLE CLASS=SEC>
     <TR><TH> Field <TH> Type <TH> Value <TH> Description
     <TR><TD><font color="red"><b>[gas]=</b></font> <TD> C*3 
         <TD><B>VOI</B> <TD> Voigt line shape
     <TR><TD> <TD>
         <TD><B>CHI</B> <TD> Chi Factor
     <TR><TD> <TD> 
         <TD><B>LOR</B> <TD> Lorentz line shape
     <TR><TD> <TD>  
         <TD><B>DOP</B> <TD> Doppler line shape
     </TABLE>

<P>
<DT><B>Notes</b>
   <OL>
   <LI> <font color=green>Although this section
         performs the same function as the 
         *SHP section in the RFM driver table, the syntax and defaults are
         quite different so don't assume anything based on RFM experience
         </font>
   <LI> The <B>[gas]</b> parameter values are the chemical formulae of 
        any 'line' molecule 
       (<a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>ID &lt;50</a>)
   <LI> The lineshapes VALUES are converted to lower case and truncated to the 
        first 3 characters so, for example, <B>DOPPLER</b>, <b>doppler</b> and 
        <b>DoP1234</b> are all interpreted as <B>DOP</b>
   <LI> The <B>[gas]</B> parameter can be replaced by an asterisk <b>*</b> 
        which will set all remaining molecules to a particular lineshape. 
        If it isn't used, 
        the Voigt lineshape is used by default (so <b>*=VOI</b> has 
        no effect).
   <LI> These line shapes are only applied to the molecules for which 
         line-by-line calculations are performed, there is no effect on
        molecules whose cross-section is read from <a href=#lut>LUTs</a>.
   </OL>

<P>
<DT><B>Example</b>
<DD><BLOCKQUOTE><div class="drvbox">
<pre>*SHP
  co2=chi      ! Chi factor for CO2
  o3=doppler  h2o=dop     ! Doppler for O3 and H2O
  *=lorentz      ! Lorentz for everything else
</pre></div></blockquote>
</dl>

<a name=xsc>
<h2 class=o>*XSC Section (Optional)</h2>

<DL>
<DT><B>Description</b>
<DD> Directories for Heavy Molecule  Cross Section files

<P>
<DT><B>Format</b>
<DD> Character strings, order is significant (Note 1)
     <TABLE CLASS=SEC>
     <TR><TH>Field <TH> Type <TH> Description
     <TR><TD> <font color="red"><b>XSCDIR</b></font> <TD> C*80
         <TD> Directories for <a href=inputs.html#xsc><b>.xsc</b></a> files
     </TABLE>
<P>
<DT><B>Notes</b>
   <OL>
   <LI> The directories are searched in order for the first
        occurrence of the <b>.xsc</b> file. If a file of the same name
        occurs in any subsequent directories it is ignored.
   <LI> <font color="green">This is different from the RFM
        which uses either explicit filenames
or a generic filename including a '*' character for 
the molecule name</font>
   <LI> Use <b>./</b> to indicate the current directory
   <LI> A trailing '<B>/</B>' character is added if none is present.
   <LI> The molecular cross section files are assumed to have names of the
        form <b>ggg.xsc</b> where <b>ggg</b> is the 
       lower case name of a cross-section molecule 
(ie <a href=http://www.atm.ox.ac.uk/RFM/sum/rfm_gaslist.html>Index GE 50</a>),
using 'F' numbers for CFC's (eg <b>f12.xsc</b>)

   <LI> Having located the appropriate file, it is not actually opened
       until the driver table is fully read in case there are LUTs which
       can be used instead (and to avoid unnecessarily large array spaces which
       are sometimes required to accomodate the data in <b>.xsc</b> files)
   </OL>

<P>
<DT><B>Example</b>
<DD><blockquote><div class="drvbox">
<pre>*XSC
    ./                 ! just aerosol.xsc in current directory
    ../morse_files/    ! directory for all other .xsc files 
</pre></div></blockquote>
</dl>
<HR>
<P>
<UL>
<LI><a href=index.html>Back to MORSE Index</a>
</UL>
</BODY>
</HTML>


nr l,g1 _fe"r5 