#!/bin/bash
./gitcompile
sudo make install

# 1 = FASTRPC_MODE_DEBUG - load testsignature
# 8 = FASTRPC_MODE_UNSIGNED_MODULE - load unsigned shell

# DSP_TESTSIG=1 - added this to 'recreate' the testsig prop

if [[ $@ =~ "-u" ]] ; then
    sudo ADSP_PROCESS_ATTRS=8 LD_LIBRARY_PATH=/usr/local/lib/ ADSP_LIBRARY_PATH=/dsp/ /usr/local/bin/cdsprpcd ${1}
else
    sudo LD_LIBRARY_PATH=/usr/local/lib/ ADSP_LIBRARY_PATH=/dsp/ /usr/local/bin/cdsprpcd ${1}
fi