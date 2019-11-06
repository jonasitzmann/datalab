Subject: re : clustering for power
tanya ,
as we discussed in the last meeting , to simulate secondary power curve we
need correlated jump sizes . this is totally different from the current
secondary price curve simulation which assume the perfect correlation and
also totally different from the secondary gas basis curve simulation which is
based on the hedging ratio .
there are two more issues on my side i need to resolve :
1 . i want resolve the power basis curve issue . currently all power position
on these basis curve are actually price positions . we are hard coding this :
if power basis we add basis to corresponding region curve . i am trying to
remove this hard coding by asking loading the price curve for all these basis
locations .
2 . same is true for all those power f curves . these curves looks similar to
those basis curves . currently we just directly map these f curves to the
corresponding region curves . i would also prefer to load the price curves
instead of the price differences .
from research , i need those jump size correlations .
clearly , all these involve many new development , unless we want to use
simpler way to simulate secondary power curves .
regards ,
winston
- - - - - original message - - - - -
from : tamarchenko , tanya
sent : monday , april 16 , 2001 9 : 17 am
to : lew , jaesoo
cc : gorny , vladimir ; jia , winston ; kaminski , vince
subject : re : clustering for power
jaesoo ,
as we discussed last week on wednesday meeting can you , please ,
implement clustering for power curves by geographical region . this involves
the following :
1 . deciding together with risk control how many geographical regions we want
to use
and which enron ' s curves belong to each region .
2 . deciding together with risk control how to choose core curves for each
region . this decision can
be maid based on the a ) position size ; b ) statistical analysis . there might
be other considerations .
3 . doing regression analysis for each curve versus the corresponding core
curve .
winston ,
can is it possible to run var for the clustering results obtained by jaesoo
with clustering done by sas ?
should we wait for the stage re - fresh and what is the status on this ?
tanya .ltvt 