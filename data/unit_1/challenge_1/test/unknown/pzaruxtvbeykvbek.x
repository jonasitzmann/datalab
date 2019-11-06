Subject: re : eol pricing algorithm
hi bob ,
some comments :
1 . you request enron position after successful market order , but not after limit order - - you may want it after limit order as well to be consistent . i am not clear on how you would use enron position . it is possible that the trading desk will have a target position in mind and they will set bids and offers in such a way as to try to achieve that target position , but this target position probably changes continuously and is not stored anywhere , and without this target position there is nothing to compare actual enron position to . of course , enron position may still provide some insights .
2 . you request bid - mid - ask prices for each trade - - - given that a successful trade may execute later than time of order ( especially for limit orders ) , would you need the evolution or range of bid - mid - ask over this time interval ( time of order to time of execution ) ? also , for failed trades , you may need the evolution or range of bid - mid - ask over the time interval from time of order to time of rejection . this again mainly applies to limit orders , as the time intervals may not be significant for market orders given the speed of execution ( something to check ) .
- - - - - original message - - - - -
from : lee , bob
sent : monday , april 23 , 2001 8 : 33 am
to : kaminski , vince ; shanbhogue , vasant ; barkley , tom
cc : lu , zimin ; huang , alex ; gibner , stinson
subject : eol pricing algorithm
a draft data request for eol data we would use to study p & l patterns for the " george " pricing algorithm is attached for your review .
i would like to send this to andy zipper and jay webb this afternoon .
bob
> t p dgitgn,ab