Subject: fw : sitara eol bridge problem today
fyi > > > we were also monitoring the eol to sitara bridge during this time to inform our traders and other desks of the situation and status . . . all deals bridged over by 10 : 30 ish . thanks
- - - - - original message - - - - -
from : truong , dat
sent : thursday , october 25 , 2001 11 : 11 am
to : moorer , torrey ; lamadrid , victor ; severson , russ ; grant , george
cc : husain , karima ; lim , francis s . ; saluja , gurdip ; sweitzer , tara
subject : sitara eol bridge problem today
the problem we faced today was due to 2 eol deal packets ( 2098073 , 2099764 ) not having startdate and enddate . missing these 2 tibco message fields caused the bridge to bounce and resulted in the queue to build up while the bridge is starting up . ( the bridge takes 2 minute for startup ) . each time these deals are sent / resent , it continuously cause the sitarar eolbridge to restart , thus magnifying the buildup of the queue .
the corrective action we are taking at our end is to build a rejection logic when eol packets do not have start and / or enddate .
- dat truong egd lnnr dn