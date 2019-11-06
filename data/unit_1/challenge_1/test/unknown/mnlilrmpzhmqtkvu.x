Subject: re : var
vince
thanks for the update - especially your point 3 which echoes our own discussion yesterday : i want to clarify responsibilities for maintenance and administration of var .
we need transparency around the process so that mapping decisions , for example , are easily made , supported and reviewed .
it became clear after last friday ' s events , that we are in an awkward paradigm with respect to how we handle var here , particularly at " pressure points " .
i am putting together the scope of a " general overhaul " of the var process , including method and administration , to which i hope we would all buy in , so be assured of our co - operation .
dp
- - - - - original message - - - - -
from : kaminski , vince
sent : wednesday , april 11 , 2001 2 : 49 pm
to : port , david
cc : lavorato , john ; kaminski , vince ; tamarchenko , tanya
subject : var
david ,
during today ' s var coordination meeting we had a discussion of issues
related to mapping of the forward price curves into core locations .
mapping is a necessity dictated by the limitations of the computer system :
we have to reduce the dimensionality of the problem to stay within the bounds
of available cpu memory . also , in some cases the quality of price discovery is poor
and it ' s difficult to model the price curves independently : we solve the problem by mapping
them into more liquid and better behaved core locations curves .
we have agreed on the following :
1 . winston will investigate the it side and determine to what extent we can increase the number
of forward price curves that are simulated as basic ( core ) curves . he will investigate the impact of a larger
number of the core curves on the time required to complete the var run .
2 . the curves associated with the biggest 10 - 20 positions in each commodity should be
modeled as core curves ( i . e . no mapping into other locations ) . it makes sense to monitor
the biggest risks separately and avoid aggregating them into less transparent aggregates .
3 . the results of an automated clustering ( mapping ) procedures should be systematically
monitored by a human and corrected if they misrepresent the risks of the trading positions .
this responsibility should be vested with one person ( right now the responsibility is
dispersed through the organization and this means in practice that nobody
is responsible ) . research can allocate one person to this task ;
cooperation of trading and rac will be critical .
vinceir  nn ap 