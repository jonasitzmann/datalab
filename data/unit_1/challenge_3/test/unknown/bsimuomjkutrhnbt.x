<HTML>
<title>RFM Downloads</title>
<LINK TYPE="text/css" REL="stylesheet" HREF="./sum/rfm.css">
</HEAD>
<BODY>
<h1 CLASS=bar>RFM Downloads</h1>
<ul>
<li><a href=#atm> Atmospheric Profiles </a> (<a href=./sum/atmfil.html>.atm</a>
files) 
<li><a href=#xsc> Cross-section data </a> (<a href=./sum/xscfil.html>.xsc</a> 
 files) 
<li><a href=#tps> TIPS data </a> (<a href=./sum/tpsfil.html>.tps</a> files) 
<li><a href=#idl> IDL procedures </a> (.pro files)
<li><a href=#for> FORTRAN programs </a> (.for files) 
</ul>

<h6>03OCT05 AD Reformatted </H6>

This web-page contains links to RFM input files.
These are (mostly) text files so you should be able to view the files just by
clicking on the filename, and your web-browser should also be able to 
download them.
<hr>
<a name=atm>
<h2 class=bar>Atmospheric Profiles 
(<a href=./sum/atmfil.html>.atm</a> files) </h2>

<h4>FASCODE/ICRCCM Model Atmospheres </h4>
<UL
<li>Set of profiles distributed with FASCODE, originally from ICRCCM project.
<li> Profiles of T,p,H2O,CO2,O3,N2O,CO,CH4,and O2 
<li> 50 levels from 0-120 km (1km spacing at surface, increasing to 5km at top)
<li> CO2 stratospheric values 330ppmv appropriate for early 1980's
<ul>
<li><a href=tro.atm>tro.atm</a> 1. Tropical
<li><a href=mls.atm>mls.atm</a> 2. Mid-Latitude Summer
<li><a href=mlw.atm>mlw.atm</a> 3. Mid-Latitude Winter
<li><a href=sas.atm>sas.atm</a> 4. Sub-Arctic Summer
<li><a href=saw.atm>saw.atm</a> 5. Sub-Arctic Winter
<li><a href=std.atm>std.atm</a> 6. US Standard Atmosphere
<li><a href=minor.atm>minor.atm</a> 37 additional species not included in the
above
<li><a href=hgt_std.atm>hgt_std.atm</a> Altitude  grid only
</ul>
</ul>
<h4>MIPAS Model Atmospheres (1998) </h4>
<UL>
<li> Profiles constructed at IMK, originally for the MIPAS non-LTE study
(Final Report, Contract 12054/96/NL/CN, ESTEC, 1998). 
<li> Also used for the IRC 2000/RSMA intercomparison.
<li> Profiles of T,p,N2,O2,O3P,CO2,O3,H2O,CH4,N2O,HNO3,CO,NO2,N2O5,ClO,HOCl,ClONO2 and NO.
<li> 121 levels from 0-120 km at 1 km spacing (too fine for most purposes,
suggest using <tt>hgt_std.atm</tt> (above) as first file in 
<a href=./sum/atmsec.html>*ATM</a> section to establish coarser grid)
<li> CO2 stratospheric values 345ppmv appropriate for 1992
<ul>
<li><a href=day_imk.atm>day_imk.atm</a> Mid-Latitude, day-time (similar to US Std)
<li><a href=ngt_imk.atm>ngt_imk.atm</a> Mid-Latitude, night-time
<li><a href=win_imk.atm>win_imk.atm</a> Polar Winter
<li><a href=sum_imk.atm>sum_imk.atm</a> Polar Summer
<li><a href=extra_imk.atm>extra_imk.atm</a> 20 additional species not included
in the above. 
</ul>
</ul>
<h4>MIPAS Model Atmospheres (2001) </h4>
<UL>
<li> Profiles constructed by John Remedios (U.Leicester) 
for MIPAS operational processing - contact 
<a href=mailto:jjr8@leicester.ac.uk>jjr8@leicester.ac.uk</a> with any
queries
<li> Profiles of
T,p,N2,O2,CO2,O3,H2O,CH4,N2O,HNO3,CO,NO2,N2O5,ClO,HOCl,
ClONO2,NO,HNO4,HCN,NH3,F11,F12,F14,F22,CCl4,COF2,H2O2,
C2H2,C2H6,OCS,SO2 and SF6
<li> 121 levels from 0-120 km at 1 km spacing (too fine for most purposes,
suggest using <tt>hgt_std.atm</tt> (above) as first file in 
<a href=./sum/atmsec.html>*ATM</a> section to establish coarser grid)
<li> CO2 stratospheric values 363ppmv appropriate for 2001
<ul>
<li><a href=day.atm>day.atm</a> Mid-Latitude, day-time (similar to US Std)
<li><a href=ngt.atm>ngt.atm</a> Mid-Latitude, night-time
<li><a href=win.atm>win.atm</a> Polar Winter
<li><a href=sum.atm>sum.atm</a> Polar Summer
<li><a href=equ.atm>equ.atm</a> Equatorial, day-time
<li><a href=extra.atm>extra.atm</a> 6 additional species not included
in the above (F13,F21, F113, F114, F115 and CH3Cl) 
</ul>
</ul>

See also:
<ul>
<li><a href=http://cdiac.esd.ornl.gov/trends/co2/nocm-ml.htm> CO2 Trends
from Mauna Loa </a> (<i>NOAA Web-site</i>)
</ul>

<a name=xsc>
<h2 class=bar>Cross-Section Data 
(<A HREF=./sum/xscfil.html>.xsc</a> files) </h2>

These are the cross-sectional data released with HITRAN 1992, HITRAN 1996 and
HITRAN 2000 with slight modifications to convert them to the RFM format (add
extra records starting with '***')<BR><BR>For [52] (h2k), [54] (h2k), [56]
(h2k), [70], [72]-[75], [78]-[79] and [81], the start/end wavenumbers for each
range were lined up to within 0.01 wavenumber. (This resulted in a small amount
of data, representing noise only, being removed from some of the ranges.)

<p>
Suffix '<tt>_h2k</tt>' refers to HITRAN 2000 release, suffix '<tt>_h96</tt>'
refers to HITRAN 1996 release, '<tt>_h92</tt>' refers to HITRAN 1992 release.
<p>

<a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/rfm_xsc.tar.Z>rfm_xsc.tar.Z</a> (4.6 Mb) 
Download all following XSC data as a single compressed tar file
<p><UL>
<li><B>[<a href=index.html#codes>RFM code#</a>] RFM Name</B> (Other chemical
names)
<UL>
<LI><tt>filename</tt> (File size) Data Source
    <uL>
    <li> List of wavenumber ranges of each table<BR>
List of temperatures [K], or (T,p) values for each table [p in Torr]
<LI>Specific corrections made to the original file 
    </ul></UL><BR>
<li><B>[50] Aerosol</B>
<UL><LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/aerosol.xsc>aerosol.xsc</a> (160 bytes) Simple grey absorber,
unity absorption coefficient 1-20000 cm-1 (not HITRAN). 
     <ul>
     <li> 0-20000 cm-1<BR>
293 K
     </ul></UL><BR>
<li><B>[51] F11</B> (CFC-11, CFCl3, CCl3F)
<UL><LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f11.xsc_h92>f11.xsc_h92</a> (320 kb) NCAR
     <ul>
     <li> 830-860, 1060-1107 cm-1<BR>
     293, 273, 253, 233, 213, 203 K
     </ul>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f11.xsc_h96>f11.xsc_h96</a> (6.3 Mb) SUSB-a
     <ul>
     <li> 810-880, 1050-1120 cm-1<BR>
      (296,760), (283,521), (284,710), (284,610),
          (273,760), (273,660), (273,550), (273,460), (261,655), (261,550),
          (261,450), (261,350), (246,445), (246,356), (246,289), (233,198),
          (233,336), (233,250), (226,173), (226,130), (226,100), (226,70),
          (226,40), (216,173), (216,130), (216,100), (216,70), (216,40),
          (208,100), (208,70), (208,40), (201,70), (201,40)  [K,Torr]
     </UL></UL><BR>
<li><B>[52] F12</B> (CFC-12, CF2Cl2)<BR>
<UL><LI> <a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f12.xsc_h92>f12.xsc_h92</a> (680 kb) NCAR
     <UL>
     <LI> 867-937, 1080-1177 cm-1<BR>
     293, 273, 253, 233, 213, 203 K
     </ul>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f12.xsc_h96>f12.xsc_h96</a> (6.3 Mb) SUSB-c
     <UL>
     <LI> 810-965, 1040-1200 cm-1<BR> (296,790), (296,760), (296,700), (284,700), (284,520), (273,660),
          (273,550), (273,460), (273,760), (260,655), (260,350), (245,355),
          (233,335), (233,198), (216,170) [K,Torr]
     </ul>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f12.xsc_h2k>f12.xsc_h2k</A> (21.2 Mb)
<UL><LI>850-950, 1050-1200 cm-1<BR>
(296,760), (284,700), (284,600), (284,520), (273,760), (273,660), 
(273,550), (273,460), (260,655), (260,550), (260,450), (260,350), (245,445),
(245,355), (245,290), (233,335), (233,250), (233,200), (225,170), (225,140),
(225,100), (225,70), (225,40), (216,170), (216,130), (216,100), (216,70),
(216,40), (208,70), (201,70), (273,8), (260,8), (245,8), (233,8), (225,75),
(225,8), (216,75), (216,40), (216,20), (216,8), (208,75), (208,40), (208,20),
(200,75), (200,40), (200,20), (200,8), (190,75), (190,40), (190,20), (200,8) 
[K,Torr]</UL></UL><BR>

<li><B>[53] F13</B> (CFC-13, CCL3F3)
<UL><LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f13.xsc>f13.xsc</a> (740 kb) (=CFC-13, CCl3F3) NCAR
     <UL>
     <LI> 765-805, 1065-1140, 1170-1235 cm-1<BR>
     293, 273, 253, 233, 213, 203 K
     </ul></UL><BR>
<li><B>[54] F14</B> (CFC-14, CF4)
<UL><LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f14.xsc>f14.xsc</a> (140 kb) (=CFC-14, CF4) NCAR
     <UL>
     <LI> 1255-1290 cm-1<BR>
      293, 273, 253, 233, 213, 203 K
     </UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f14.xsc_h2k>f14.xsc_h2k</A> (3.9 Mb) (=CFC-14, CF4)
<UL>
<LI> 1250-1290 cm-1<BR>
(296,760), (296,635), (284,760), (284,600), (284,520), (273,760),
(273,660), (273,550), (273,460), (273,8), (260,650), (260,550), (260,450), 
(260,350), (260,8), (245,445), (245,355), (245,290), (245,8), (233,335),
(233,255), (233,195), (233,8), (225,170), (225,140), (225,100), (225,70),
(225,40), (225,8), (216,170), (216,130), (216,100), (216,70), (216,40),
(216,38), (216,25), (216,8), (208,75), (208,40), (208,38), (208,25),
(205,8), (200,70), (200,40), (200,38), (200,25), (190,75), (190,40), 
(190,38), (190,25), (190,8), (180,75), (180,40), (180,25), (180,8)
<LI>Correction made to the original file: A space separating two 
data points in the file, that was missing, was added. 
</UL></UL><BR>
<li><B>[55] F21</B> (CFC-21, CHCl2F)
<UL><LI> <a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f21.xsc_h92>f21.xsc_h92</a> (50 kb) DU
     <UL>
     <LI> 785-840, 296 K</UL>
     </ul><BR>
<li><B>[55] F21</B> (CFC-21, CHCl2F)
<UL><LI> <a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f21.xsc>f21.xsc</a> (97 kb) DU (extra band added to h92 data)
     <UL>
     <LI> 785-840, 1050-1100 cm-1 
      296 K</UL>
     </ul><BR>
<LI><B>[56] F22</B> (CFC-22, CHCLF2)
<UL><LI>
<a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f22.xsc>f22.xsc</a> (720 kb) NCAR
     <UL>
     <LI> 780-840, 1080-1150, 1290-1335 cm-1<BR>
     293, 273, 253, 233, 213, 203 K
     </ul>
<LI>
<a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f22.xsc_h96>f22.xsc_h96</a> (4.8 Mb) SUSB-c
     <UL>
     <LI> 760-860 cm-1
     (294,760), (273,574), (253,401), (240,308), (236,270), (216,177),
          (216,41) [K,Torr]
     <li> A couple of corrections have been made to the original of this file,
          <tt>cfc22.xsc</tt> on the HITRAN 96 CD:
          <ol>
	  <li> the wavenumber range appears to be shifted by about 10cm-1 for
                the (216K,176.8Torr) tabulation - reset to same as others
          <li> remove spurious '<tt>x</tt>' character in the
               (216K,40.9Torr) tabulation
	  </ol>
     </ul>
<LI>
<a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f22.xsc_h2k>f22.xsc_h2k</a> (12.5 Mb)
<UL><LI> 760-860 cm-1<BR>
(297,765), (294,760), (273,575), (253,400), (246,310), (237,270), 
(225,140), (225,100), (225,75), (225,40), (216,75), (216,50), (216,40), 
(216,20), (208,50), (208,40), (208,20), (201,50), (201,40), (201,20), 
(190,75), (190,40), (190,20), (181,70), (181,40), (181,20) [K,Torr]
<LI> 1070-1195 cm-1<BR>
(296,760), (296,660), (273,600), (251,345), (251,270), (233,310), (233,265),
(233,195), (225,180), (225,150), (225,100), (225,40), (216,170), (216,140),
(216,100), (216,75), (216,40), (216,20), (208,75), (208,40), (208,20), 
(200,75), (200,40), (200,20), (190,75), (190,40), (190,20), (181,75), 
(181,40), (181,20)
<LI> 1275-1380 cm-1<BR>
287, 270, 253 K
<LI>Corrections made to original file:<ol>
<LI>The data beginning with the header for wavenumbers 1070-1195, at (225K,75 Torr), was removed as a large section of the data was corrupted.
<LI>The data beginning with the headers for wavenumbers 765-855 and 1060-1210, at standard pressure ('0.000'), was removed. 
</OL>
</UL>
</UL><BR>
<li><B>[57] F113</B> (CFC-113, C2Cl3F3)
<UL><LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f113.xsc>f113.xsc</a> (55 kb) NCAR
     <UL>
     <LI> 780-995, 1005-1232 cm-1<BR>
     293, 273, 253, 233, 213, 203 K
     </ul></UL><BR>
<li><B>[58] F114</B> (CFC-114, C2Cl2F4)<UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f114.xsc>f114.xsc</a> (1.5 Mb) NCAR
     <UL>
     <LI> 815-860, 870-960,1030-1067, 1095-1285 cm-1
     <BR> 293, 273, 253, 233, 213, 203 K
     </ul></UL><BR>
<li><B>[59] F115</B> (CFC-115, C2ClF5)<UL>
<LI> <a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f115.xsc>f115.xsc</a> (770 kb) NCAR
     <UL>
     <LI> 955-1015, 1110-1145, 1167-1260 cm-1<BR>
293, 273, 253, 233, 213, 203 K
     </ul></UL><BR>
<li><B>[60] CCl4</B><UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/ccl4.xsc_h92>ccl4.xsc_h92</a> (19 kb) DU
     <ul>
     <li> 786-806 cm-1<BR>
     296 K
     </ul>
<li><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/ccl4.xsc_h96>ccl4.xsc_h96</a> (510 kb) NCAR-b
     <ul>
     <li> 770-810 cm-1<BR>
     310, 298, 273, 248, 223, 170 K
     </ul>
<li><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/ccl4.xsc_h2k>ccl4.xsc_h2k</a> (2.0 Mb)
     <ul>
     <li> 750-812 cm-1<BR>
     (297,758), (283,760), (283,605), (283,518), 
     (273,656), (273, 553), (273,470),
     (259,451), (259,361),
     (245,450), (245,379), (245,279),
     (233,348), (233,258), (233,200),
     (225,176), (225,147), (225,113), (225,40), (225,20), (225,8),
     (216,71), (216,20), (216,15), 
     (208,72), (208,40), (208,15), (208,8)
     </ul></UL><BR>
<li><B>[61] ClONO2</B><UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/clono2.xsc>clono2.xsc</a> (270 kb) RAL
     <ul>
     <li> 740-840,  1240-1340, 1680-1790 cm-1<BR>
     296, 213 K
     </ul>
<li><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/clono2.xsc_h96>clono2.xsc_h96</a> (74 kb) ORSAY-ORPHAL
     <ul>
     <li> 1265-1325 cm-1
     <BR>201, 211, 222 K
     </UL>
<li><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/clono2.xsc_mip>clono2.xsc_mip</a> (62 Mb) IMK/RAL
     <ul>
     <li> 750-830 cm-1 IMK <BR>
     (297,71), (297,53), (297,34), (297,26), (297,18), (297,9), (297,4), (297,0), 
     (274,111), (274,74), (274,53), (274,41), (274,26), (274,20), (274,9), (274,4), (274,0),
     (250,111), (250,74), (250,53), (250,41), (250,26), (250,20), (250,9), (250,4), (250,0),
     (235,116), (235,70), (235,53), (235,40), (235,26), (235,20), (235,10),
     (235,4), (235,0),
     (219,116), (219,71), (219,53), (219,40), (219,26), (219,20), (219,10),
     (219,4), (219,0),
     (204,118), (204,71), (204,53), (204,34), (204,26), (204,19), (204,10),
     (204,4), (204,0), 
     (189,117), (189,71), (189,53), (189,34), (189,26), (189,19), (189,10),
     (189,4), (189,0),
     <li> 1260-1330 cm-1 IMK <BR> 
     (297,71), (297,53), (297,34), (297,26), (297,18), (297,9), (297,4), (297,0), 
     (274,111), (274,74), (274,53), (274,41), (274,26), (274,20), (274,9), (274,4), (274,0),
     (250,111), (250,74), (250,53), (250,41), (250,26), (250,20), (250,9), (250,4), (250,0),
     (235,116), (235,70), (235,53), (235,40), (235,26), (235,20), (235,10),
     (235,4), (235,0),
     (219,116), (219,71), (219,53), (219,40), (219,26), (219,20), (219,10),
     (219,4), (219,0),
     (204,118), (204,71), (204,53), (204,34), (204,26), (204,19), (204,10),
     (204,4), (204,0), 
     (189,117), (189,71), (189,53), (189,34), (189,26), (189,19), (189,10),
     (189,4), (189,0),
     <LI> 1680-1790 cm-1 RAL <BR> 
     296, 213 K
     </UL></UL><BR>
<li><B>[62] N2O5</B><UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/n2o5.xsc_h92>n2o5.xsc_h92</a> (22 kb) NCAR
     <UL>
     <LI> 555-600, 720-765, 1210-1275, 1680-1765 cm-1
     <BR>293, 273, 253, 233 K
     </ul></UL><BR>
<li><B>[63] HNO4</B><UL> (HO2NO2)
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/hno4.xsc_h92>hno4.xsc_h92</a> (55 kb) DU
     <ul>
     <li> 770-830 cm-1<BR>
     268 K
     </ul></UL><BR>
<li><B>[64] SF6</B><UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/sf6.xsc>sf6.xsc</a> (1.3 Mb) 
     <ul>
     <li> 925-955 cm-1<BR>
     (295,760), (273,550), (245,453), (245,355)  (245,287), (233,331), (233,255), 
     (233,190), (225,171), (225,134), (225,100),  (225,78),  (225,41),  (225,21), 
     (216,170), (216,140), (216,100),  (216,90),  (216,75),  (216,48),  (216,41),  
      (216,25),  (216,20),  (200,76),  (200,40),  (200,21),  (190,75),  (190,41),  
      (190,25),  (180,75),  (180,36),  (180,20)
     </ul></UL><BR>
<li><B>[70] F123</B> (CFC-123, CHCl2CF3)<UL>
<LI><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/f123.xsc_h2k>f123.xsc_h2k</A> (1.8 Mb)
<ul><li>740-900, 1080-1450 cm-1<BR>
253, 270, 287 K</UL></UL><BR>
<LI><B>[71] F124</B> (CFC-124, CHClFCF3)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f124.xsc_h2k>f124.xsc_h2k</A> (663 kb)
<UL><LI>675-715, 790-920, 1035-1430 cm-1<BR>
287 K</UL></UL><BR>
<LI><B>[72] F141b</B> (CFC-141b, CH3CCl2F)<UL><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f141b.xsc_h2k>f141b.xsc_h2k</A> (1.9 Mb)
<UL><LI>710-790, 895-1210, 1325-1470 cm-1
<BR>253, 270, 287 K</UL></UL><BR>
<LI><B>[73] F142b</B> (CFC-142b, CH3CClF2)<UL><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f142b.xsc_h2k>f142b.xsc_h2k</A> (2.0 Mb) 
<UL><LI>650-705, 875-1265, 1360-1470 cm-1
<LI>253, 270, 287 K</UL></UL><BR>
<LI><B>[74] F225ca</B> (CFC-225ca, CHCl2CF2CF3)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f225ca.xsc_h2k>f225ca.xsc_h2k</A> (2.0 Mb)
<UL><LI>695-865 cm-1<BR>
253, 270, 287 K
<LI>Correction made to the original file: The data was truncated at both ends and interpolated, equating the resolutions.</UL></UL><BR>
<LI><B>[75] F225cb</B> (CFC-225cb, CClF2CF2CHClF)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f225cb.xsc_h2k>f225cb.xsc_h2k</A> (2.3 Mb)
<UL><LI>715-1375 cm-1<BR>
253, 270, 287 K</UL></UL><BR>
<LI><B>[76] F32</B>  (HFC-32, CH2F2)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f32.xsc_h2k>f32.xsc_h2k</A> (3.8 Mb)
<UL><LI>995-1235, 1385-1475 cm-1<BR>
297, 253, 207 K (at 750, 150, 37.5 Torr)<BR>
297, 287, 264, 253, 243, 222, 212, 203 K</UL></UL><BR>
<LI><B>[77] F125</B> (HFC-125, CHF2CF3) <UL><LI> <A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f125.xsc_h2k>f125.xsc_h2k</A> (587 kb)
<UL><LI>700-745, 840-890, 1060-1465 cm-1
<BR>287K</UL></UL><BR>
<LI><B>[78] F134</B> (HFC-134, CHF2CHF2)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f134.xsc_h2k>f134.xsc_h2k</A> (6.6 Mb) 
<UL><LI>600-1700 cm-1
<LI>297 K (at 750, 150, 37.5 Torr)<BR>
297, 273, 253, 233, 213, 203 K
<LI>Correction made to the original file: The pressures were entered incorrectly in the headers for 297 K.</UL></UL><BR>
<LI><B>[79] F134a</B> (HFC-134a, CFH2CF3) <UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f134a.xsc_h2k>f134a.xsc_h2k</A> (17.9 Mb)
<UL><LI>815-865, 940-1030, 1350-1485 cm-1
<BR>287, 270, 253 K
<LI>1035-1130, 1135-1340 cm-1
<BR>(296,760), (284,760), (284,600), (284,500), (273,760), (273,560), 
(273,460), (261,650), (261,550), (261,450), (245,455), (245,275), 
(233,255), (233,195), (225,140), (225,100), (226,70), (225,40), (225,20), 
(216,140), (216,100), (216,70), (216,40), (216,20), (208,75), (208,40), 
(208,20), (200,40), (200,20), (190,40), (190,20) [K,Torr]</UL></UL><BR>
<LI><B>[80] F143a</B> (HFC-143a, CF3CH3)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f134a.xsc_h2k>f134a.xsc_h2k</A> (4.5 Mb)
<UL><LI>580-630, 750-1050, 1100-1500 cm-1
<BR>297 K (at 750, 150, 37.5 Torr)<BR>
297, 273, 253, 233, 213, 203 K</UL></UL><BR>
<LI><B>[81] F152a</B> (HFC-152a, CH3CHF2)<UL>
<LI><A HREF=ftp://ftp.atm.ox.ac.uk/pub/RFM/f152a.xsc_h2k>f152a.xsc_h2k</A> (1.7 Mb)
<UL><LI>840-995, 1050-1205, 1320-1490 cm-1<BR>
287, 270, 253 K</UL>
</UL></UL>

<a name=tps>
<h2 class=bar>TIPS Data </h2>

This are the HITRAN Partition Sum data for each molecule/isotope combined
into a single file suitable for input to the RFM using the
<a href=./sum/tpsflg.html>TPS</a> option (default is to calculate partition
sums using polynomial approximations).
<dl>
<dt><a href=ftp://ftp.atm.ox.ac.uk/pub/RFM/rfm.tps.Z>rfm.tps.Z</a>
<dd> (Compressed)
TIPS file for all molecules/isotopes downloaded from the HITRAN ftp
site on 13FEB03
</dl>
<p>

<a name=idl>
<h2 class=bar>IDL Procedures  </h2>

Various useful IDL procedures (=subroutines) for reading RFM files
<dl>
<dt><a href=rfmrd.pro>rfmrd.pro</a>
<dd> Read RFM spectrum
<dt><a href=reaprf.pro>reaprf.pro</a>
<dd> Read atmospheric profile
</dl>

<a name=for>
<h2 class=bar>FORTRAN Programs </h2>
Some useful fortran programs for creating/examining HITRAN binary files
<DL>
<a name=hitbin>
<DT> <A HREF=hitbin.for>hitbin.for</a> (v1.10) 
<DD> Convert HITRAN ASCII file to binary format. This is a 
simplified version of the GENLN2 program HITLIN with the same output format.
Compile with <tt>"f77 hitbin.for -o hitbin"</tt>, then dialogue is as follows:
<dl>
<dt><tt> R-HITBIN: Running HITBIN v1.01  </tt>
<dd> Output identifying program and version being run
<dt><tt> Input HITRAN ASCII file:  </tt>
<dd> Insert name of file to be converted (plus directory paths), up to C*80
<dt><tt>Wavenumber range (cm-1) [&lt;CR&gt;=all]:</tt>
<dd> Insert lower, upper wavenumber limits to be extracted from ASCII file.
Default (pressing the carriage return key) is to use complete range in file.
<DT><TT>HITRAN ID#s of gases to use (-ve=exclude) [&lt;CR&gt;=use all]:</TT>
<dd> Enter a list of indices (see <a href=index.html#codes>Appendix E</a>) of
absorbers to be selected (if all positive) or excluded (if all negative)
from ASCII file. Default is to include everything. NB: cannot mix positive
and negative indices.
<dt><tt>Record Length for binary file (22=DEC, 88=others) [&lt;CR&gt;=88]:</tt>
<dd>Binary files are created with 88-byte records. However in the FORTRAN OPEN
statement, DEC machines define the keyword RECL to represent words of 
4-bytes, whereas most other machines define RECL to be bytes.
See also <a href=./sum/rfm_installation.html#f77>RECLEN</a> parameter 
in the RFM module
<tt>reclen.inc</tt>.
<dt><tt>New binary file:</tt>
<dd> Name of the new binary file to be created, up to C*80
<dt><tt>Header for new file (up to 48 chars):</tt>
<dd> Comment to be inserted in Record#1 of new binary file, default=none.
<dt><tt>Merge with existing binary file, filename [<CR>=none]:</tt>
<dd>Existing binary file in which to insert ASCII data (optional).
Default is to perform simple ASCII to binary conversion.
<DT><TT>Status of new ASCII data (.GE.10) [<CR>=10]:</TT> (no merge)
<DT><TT>Status of new ASCII data (.GE.10) [<CR>=increment]:</TT> (merge)
<Dd> Different versions of line transition data in the binary files 
are identified by a status number (LSTAT) 10 or more. If merging an ASCII
file with existing binary data only the transition with the highest status
number is preserved and the lower status line is removed from the output
file (the GENLN2 program HITLIN acts slightly differently
in retaining the lower status line but converting LSTAT to negative).
This is to allow partial updates of a binary file. Default for simple
ASCII to binary conversion is LSTAT=10, default for merging is to first
check through the old binary file for the highest status and then assign
new lines with a status of +1 higher.
</dl>
Remaining outputs are diagnostic information.
Successful completion is indicated by the line
<pre>
<tt> R-HITBIN: Successful completion </tt>
</pre>
Internally identified failure conditions are indicated by output beginning
<pre>
<tt> F-xxxxxx</tt> 
</pre>
where <tt>xxxxxx</tt> is the subroutine in which the
error occurred.

<P>
<a name=exabin>
<dt> <A HREF=exabin.for>exabin.for</a>
<dd> Examine binary line data file, eg HITBIN output.
Prompts user for filename and either a range of record numbers or a wavenumber
range. Output to terminal is then a simple listing of each record (converted
back into HITRAN-like format for transition data records).
<BR>
<font color="red">NB: Ensure that RECLEN at the start of the program 
is set to the appropriate size for your machine 
(22=DEC, 88=others)</font>

<a name=hitfmt>
<dt> <A HREF=hitfmt.for>hitfmt.for</a>
<dd> Reformat new HITRAN2004 as old format ASCII files, 
suitable for conversion to
binary file by <a href=#hitbin><b>hitbin</b></a>.
This is a fairly crude program which simply strips out much of the information
in the HITRAN 2004 file (C*160 records) 
and writes the minimal set required for RFM calculations
into the old-style C*100 records. 
The Global Quantum Numbers are all set to 0 and the Local Quantum Number
fields are set to blank, so there is no line-identification information.
This lack of line identification imposes some restrictions on the use of
the converted file
<UL>
<LI> <b>hitbin</b> cannot be used to merge two files since it uses the line
identification to avoid duplicate lines
<LI> The <b>RFM</B> options to select vibrational levels and non-LTE
calculations cannot be used.
</ul>
</dl>
<HR>
<ul>
<li> <a href=index.html>RFM home page</a>
</ul>
</BODY>
</HTML>

er )seL"rd