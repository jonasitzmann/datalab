Subject: ds 3 failure and next steps
good afternoon ,
short - history
in case you haven ' t heard , our project to implement a high - bandwidth connection between houston & portland and remove our dependence on terminal server is a failure . to make a long story short , the new ds 3 allowed more data to travel back and forth but the time to get data between houston and portland was 10 times slower than running it through terminal server .
plan b ( thin - client )
so where do we go from here . we are now starting a process to re - architect our trading applications so that they will run just as fast over our wan as they do through terminal server . we will be using an architecture that minimizes the traffic over the wan , utilizes specialized servers to do most of the processing , and implementing more back - end power . to help us in the effort , we need your help to identify which applications should be converted first .
good candidates for conversion
listed below are some attributes for applications well suited for the initial architecture conversion .
1 . runs flaky in terminal server ( access violation errors , application locks - up , etc )
2 . applications primary source of data is located in houston
3 . mission critical time constrained applications
4 . mission critical poor performing applications
5 . heavily utilized applications
feedback from you
please reply back to the email or stop - by if you have any thoughts on which applications you think should be converted in the first - wave .
poston ' s list
i ' ve been hanging around for over a year and i think i have a pretty good idea of what might be some good applications for conversion . here ' s my first cut .
1 . enpower deal scheduling
2 . enpower deal entry
3 . enpower real time position manager
4 . enpower / fsp schedule blotter
5 . new auto - routing application
6 . carp report
7 . sar report
8 . forward obligations report
thanks , david postont.0 ap x