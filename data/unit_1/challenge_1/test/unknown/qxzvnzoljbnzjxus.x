Subject: gtv weekly status update
please find below the weekly status update for the gas trading vision project and the attached file for the updated project timelines .
gtv status meeting attendees : zhiyong wei , russ severson , jeremy wong , geoff storey , jay krish , mike swaim , george grant , bill fortney , chuck ames .
accomplishments :
? incorporating physical deal positions in tds :
o changes for the view aggregation have been completed .
o expandable total in cash position has been completed .
? single point of deal entry for term deals :
o released to production .
? gas daily deals :
o revisions for changes to portcalc application to create gdi calc in erms are in user test .
o the development for the curve shift reports has been completed .
o change cpr portcalc to value outer month positions is in test .
? live feeds for gas daily / intra - month curves :
o released to production .
? saving different views in tds :
o completed and is currently in test .
? capability for desk roll - ups on an ad hoc basis ( phase 2 ) :
o new process for roll - up aggregators has been completed .
? option grid ( phase 2 ) :
o released to production .
? gas daily options ( phase 2 ) :
o released to production .
? basis options ( phase 2 ) :
o development of deal entry type for basis options has been completed in tagg .
o development of loading correlation curves has been completed .
? transport deal capture & valuation ( phase 2 ) :
o creation of new deal entry type & database changes has been completed .
plans for the week ending 6 / 29 / 01 :
? continue it development of phase i items .
o optimize the position manager ' s performance .
? continue it development of phase ii issues .
o change portcalc to value spread options .
o option reports ( pl reports ) .
o change to tagg / erms translator for transport deal capture .
issues :
none
notes
? position roll - up process hangs sometimes in the production environment . this bug has been fixed in the parallel environment . the developer is now applying the fix to the production code .
? the performance of loading curve to the position manager has been improved in the parallel environment . the same change will be applied to the production code .
? we need to look into the current way of computing curve shift for gas daily options because it creates a large second order amount .
thanks
zhiyong (ltgi1g