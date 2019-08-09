#!/bin/sh
DATADIR=data/stashed/sops
SRCURL='https://api.lacounty.gov/searchAPIWeb/searchapi?type=newsopsearch&PageNum=1&Sort=&database=SOP&querytext=*&server=&SearchTerm=1&sop=1&supDoc=&motionDoc=&transcript=&FromDate=01%2F01%2F2001&ToDate=12%2F03%2F2020&PStart=1&PEnd=10000&_=1559587727896&results=json'
mkdir -p ${DATADIR}
curl ${SRCURL} | \
    jq '.' > ${DATADIR}/since-2001-index.json



