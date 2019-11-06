Subject: var
david ,
during today ' s var coordination meeting we had a discussion of issues
related to mapping of the forward price curves into core locations .
mapping is a necessity dictated by the limitations of the computer system :
we have to reduce the dimensionality of the problem to stay within the bounds
of available cpu memory . also , in some cases the quality of price discovery
is poor
and it ' s difficult to model the price curves independently : we solve the
problem by mapping
them into more liquid and better behaved core locations curves .
we have agreed on the following :
1 . winston will investigate the it side and determine to what extent we can
increase the number
of forward price curves that are simulated as basic ( core ) curves . he will
investigate the impact of a larger
number of the core curves on the time required to complete the var run .
2 . the curves associated with the biggest 10 - 20 positions in each commodity
should be
modeled as core curves ( i . e . no mapping into other locations ) . it makes sense
to monitor
the biggest risks separately and avoid aggregating them into less
transparent aggregates .
3 . the results of an automated clustering ( mapping ) procedures should be
systematically
monitored by a human and corrected if they misrepresent the risks of the
trading positions .
this responsibility should be vested with one person ( right now the
responsibility is
dispersed through the organization and this means in practice that nobody
is responsible ) . research can allocate one person to this task ;
cooperation of trading and rac will be critical .
vincetme  c. f