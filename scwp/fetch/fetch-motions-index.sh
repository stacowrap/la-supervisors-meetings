#!/bin/sh
DATADIR=data/stashed/motions
SRCURL='https://api.lacounty.gov/searchAPIWeb/searchapi?&type=newsopsearch&PageNum=1&Sort=&database=SOP&sdDatabase=SOP-Supdocs&querytext=*&server=searchnlb.isd.lacounty.gov&SearchTerm=1&sop=&supDoc=&motionDoc=1&transcript=&FromDate=01%2F01%2F2010&ToDate=12%2F31%2F2020&PStart=1&PEnd=10000&_=1565336539080&results=json'
mkdir -p ${DATADIR}
curl ${SRCURL} | \
    jq '.' > ${DATADIR}/since-2010-index.json
