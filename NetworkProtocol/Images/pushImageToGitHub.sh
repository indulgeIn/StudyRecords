#!/bin/bash

imgPath=$1
imgName=`basename $imgPath`

targetDir="/Volumes/Transcend/我的独立项目/StudyRecords/NetworkProtocol/Images"

cp $imgPath $targetDir

cd $targetDir

git add $imgName
git commit -m "[file] creat $imgName."
git push -u origin master

/usr/local/bin/node -e "console.log(encodeURI('https://raw.githubusercontent.com/indulgeIn/StudyRecords/master/NetworkProtocol/Images/$imgName'))" | pbcopy


