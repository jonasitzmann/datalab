<HTML><HEAD><TITLE>Oxford University: AOPP: yau: index:</TITLE>
<STYLE TYPE="text/css">
<!--
        H1,H2,H3,H4 {font-weight: bold; text-align: left;
        vertical-align: top; color: #000099;}
        H1 {font-size: 20pt;}
        H2 {font-size: 12pt;}
        H3 {font-size: 10pt;}
        H4 {font-size: 8pt;}

        BODY,P,TD {font-weight: normal; font-size: 10pt;
        text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #555555;}
        A {font-weight: normal; font-size: 10pt; text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #5555ff;}
        P.Small {font-size: 8pt;}

        STRONG {color: #000099}

        TABLE,TR,TD {vertical-align: top; }
        TABLE,TR,TD {text-align: left;}
        TD.Bottom {vertical-align: bottom;}
        TD.Bottomright {vertical-align: bottom; text-align: right;}
        TD.Middle {vertical-align: middle;}
        TD.Center {text-align: center;}
        TD.Right {text-align: right;}
        TD.TopMenu {text-align: center; vertical-align: middle;
        background-color:#E7E7FF}

        A:link { color: #5555ff; }
        A:visited { color: #0000aa; }
        A:hover { color: #0000ff; }
        A.Small {font-size: 8pt}

-->
</STYLE></HEAD><BODY>

<center><H2>The EODG Cluster - YAU</H2><hr></center>

<p>This page is a basic introduction to using the cluster for running
computationally intensive tasks that can be easily split into many
smaller fragments OR can be left for extended periods (days not
months!) without tying up your own machine.</p>

<p>As a user of the cluster, all you need to know is that you should only
ever need to log into yau and that all the directories that begin
/home/crun are visible to your programs running on the cluster. It is
good practice, however, to copy files onto the cluster (ssh/scp)
unless there is a good reason for direcly accesing crun (e.g. legacy
code with hard coded paths, requirement for automatic updating of
input files, etc). Likewise, for efficiency, outputs should be made to
the cluster disk (/home/yau/...) and moved off after completion.</p>

<p>To run something on the cluster it needs to be submitted into the
queueing system. (It is worth doing a quick test run before submitting
a big job at 4.59 on Friday and going on holiday for a fortnight.) To
submit, you use a utility called: 'qsub'. To follow the progress of
your job, you can use a program called: 'qstat', which lists all the
queued and running jobs. If you screw up or the
network\nfs\crun\whatever breaks your program then you can remove a
job fro the queue with 'qdel <jobnumber>'. On the cluster there are
three different queue lengths (telling the manager how long your job
will take), short, medium and the default (long). In practice, use the
long queue for everything unless you have a very good reason. The
short queue is great for debugging or an interactive session (use
'qlogin') as your job will almost certainly be run straight away. It
WILL pause a long job as a consequence, so it is a way of bypassin the
'fair' queueing system. This queueing system mainly applies to the
default (long) queue and it considers the fact that user 'fred' has
been running lots of jobs for a month, so if you submit your job into
the long queue, wait a minute and use 'qstat' you will see the queuing
system has put your job at the front of all 'fred's' pending
jobs. Yours will run as soon as the first of 'fred's' finishes.</p>

<p>The outputs from yor job that would have been shown on the screen
(standard out and standard error) will be put into a file
YourProgName.o<jobnumber> and YourProgName.e<jobnumber> in your home
directory on yau. The man pages (man qstat, qsub etc) are your
friends. Also try searching the web if you have unusual problems.</p>


<h3> Part I
Using an arbitrary executable file (e.g. MORSE)</h3>


<p>Example:</p>

<P> <HR> <P>
<pre>
yau:~> qsub -v OptionalScriptOption=1 -N OptShortProgName YourProgramWrapperScript.sh
Job 1234 submitted at 03:20:00 04/05/2005

yau:~> qstat
job-ID  prior name       user         state submit/start at     queue      master 
----------------------------------------------------------------------------------
  1234      0 OptShortP  fred         r     04/05/2005 03:20:04 node1.q    MASTER

yau:~> ls
OptShortP.o1234 OptShortP.e1234

yau:~> qdel 1234
Job 1234 registered for deletion.

yau:~> qstat
job-ID  prior name       user         state submit/start at     queue      master 
----------------------------------------------------------------------------------
</pre>

<p>The wrapper script contains extra options, such as getting the cluster to email you if there is a problem, or when it completes. An example script:</p>

<P> <HR> <P>
<pre>
#!/bin/csh

### SGE OPTIONS: To get the cluster to read the option, 
###              it must start '#$' then the option.
### There are many other options!! But I've not needed them.

###   Submit the job as being 'short' (i.e. CPU time < 3 hours). 
###   Medium queue is max runtime 24h. Default = unlimited (but be fair)
###  
###$ -l short
###$ -l medium

###   The job name (IF NOT set on qsub command line)
#$ -N OptShortProgName       

###   Send emails when job is aborted/rescheduled, and when it ends
#$ -m ae
#$ -M your.email.address@atm.ox.ac.uk

#Sun Grid Engine header This Prints to OptShortProgName.o<jobnumber>
echo The job begun at: `date`
echo The execution host is: $HOSTNAME
echo The user ID of the job is: $USER
echo The home directory on execution host is: $HOME
echo The current working directory is: `pwd`
echo The current job ID is: $JOB_ID
echo The current job name is: $JOB_NAME


cd /to/where/your/morse.drv/is
/PathToMorse/MORSEVERSION >  morse.stdout     

#(this stores the output of morse in /to/where/your/morse.drv/is/
# NOT in the cluster output file OptShortProgName.o<jobnumber>)
</pre>
<P> <HR> <P>

<h3> Part II
Using Yau with IDL</h3>

<p>IDL breaks the cluster if you dont have 'cpu, tpool_nthreads = 1
' (without quotes!) as the first command in
your main idl routine (the one you execute from the command
line). Please be careful of this. Apart from this, IDL is easy to use,
just as for a regular executable. Just make sure it does not require
any manual intervention: you will waste lots of time and a cluster
slot if your program is merrily waiting for an input from you for a
week, doing nothing. On your workstation, compile your program and
save to an IDL save file. Copy this to the cluster. Check all the data
files are visible to the cluster and you have no silly hard-coded
paths to your /home/crun/users2/randomIDLworkingDir/, uless your
really intend for them to be there. I think that there are other IDL
versions on the cluster, too - check with us@atm if you get
problems. Then you can qsub the following script:</p>

<P> <HR> <P>
<pre>
#!/bin/csh

### SGE OPTIONS: <<This section as before!>>


cd /to/where/YourIDLSaveFile/is

#
#Run the file  in the idl runtime mode
# For more details on generating the
# runtime code see /usr/local/PACK/idl-5.6/help/runtime.pdf.

/usr/local/PACK/idl-5.6/bin/idl -rt=YourIDLSaveFile.sav
</pre>
<P> <HR> <P><p>


To make an IDL save file:
On your workstation, compile your program and save to an IDL save file
(using, SAVE, /ROUTINES, FILENAME=YourIDLSaveFile.sav)."

Or even more explicitly put:
<pre>
IDL> .compile YourIDL_program
IDL> resolve_all
IDL> save, /routines, filename='YourIDL_program.sav'
IDL> exit
</pre>

I think it works best if the save file name is the same as the IDL procedure name. In fact I think it only works if this is the case.
<P> <HR> <P><p>



</body>


</BODY></HTML>


=sSn=rP_M 1