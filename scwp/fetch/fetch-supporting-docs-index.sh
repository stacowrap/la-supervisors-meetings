#!/bin/sh
DATADIR=data/stashed/supporting-docs
SRCURL='https://api.lacounty.gov/searchAPIWeb/searchapi?type=newsopsearch&PageNum=1&Sort=&database=SOP&sdDatabase=SOP-Supdocs&querytext=*&server=searchnlb.isd.lacounty.gov&SearchTerm=1&sop=&supDoc=1&motionDoc=&transcript=&FromDate=08%2F08%2F2017&ToDate=08%2F08%2F2019&PStart=1&PEnd=100000&_=1565327579743&results=json'
mkdir -p ${DATADIR}
curl ${SRCURL} | \
    jq '.' > ${DATADIR}/last-3000-index.json
