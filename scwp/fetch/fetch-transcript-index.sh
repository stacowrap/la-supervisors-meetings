#!/bin/sh
DATADIR=data/stashed/transcripts
SRCURL='https://api.lacounty.gov/searchAPIWeb/searchapi?&type=newsopsearch&PageNum=1&Sort=&database=SOP&sdDatabase=SOP-Supdocs&querytext=*&server=searchnlb.isd.lacounty.gov&SearchTerm=1&sop=&supDoc=&motionDoc=&transcript=1&FromDate=01%2F01%2F2000&ToDate=12%2F31%2F2020&PStart=1&PEnd=10000&_=1565334652529'
mkdir -p ${DATADIR}
curl ${SRCURL} | \
    jq '.' > ${DATADIR}/last-800-index.json
