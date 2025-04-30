#====================================
#!/bin/csh -f
 
#        % source setup.csh
setenv MYHOME ./
set cwd=$MYHOME
set owd=$MYHOME
set dirstack=$MYHOME
#set home=$MYHOME/myvirtuoso
 
# Set environment variables for Cadence software,
setenv CDSHOME         /usr/local/cadence6/IC617-701
setenv MMSIMHOME       /usr/local/cadence6/MMSIM15-10-345
setenv QRC_HOME         /usr/local/cadence6/EXT15-20-000
setenv ASSURAHOME       /usr/local/cadence6/ASSURA415-001-617
 
# Set license file location for Cadence software
setenv CDS_LIC_FILE    5280@lm-cadence.ee.uwa.edu.au
setenv CDS_LIC_ONLY
setenv LM_LICENSE_FILE         $CDS_LIC_FILE
 
setenv CDS_AUTO_64BIT ALL
setenv CDS_Netlisting_Mode     Analog
 
# Set your program search path properly ....
# Build up a list of all of the options.
set     localPath = (. ~/bin ~/local/bin /usr/local/pvt /usr/ucb /usr/local \
                /usr/local/bin /usr/local/Public/bin /opt/Acrobat4/bin \
                /usr/lib/openoffice/program /sbin /usr/X11R6/bin )
 
set     cdsPath1 = ($CDSHOME/tools/bin \
                $CDSHOME/tools/dfII/bin \
                $MMSIMHOME/tools/bin \
                $ASSURAHOME/tools/bin \
                $QRC_HOME/tools/bin )
 
set     sysPath = (/usr/ucb /usr/etc /usr/openwin/bin /usr/sbin /usr/bin /bin )
 
set     path=( $localPath $cdsPath1 $sysPath )
 
set     filec
set  history=50
cd $MYHOME
virtuoso&

