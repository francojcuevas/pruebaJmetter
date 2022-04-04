#!/bin/bash
csvFile=$1
projectName=$2
reportFile=$3
docker run --rm -v $WORKSPACE:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeterengine.stopfail.system.exit=true -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/$csvFile -n -t /workspace/$projectName -l /workspace/$reportFile
#if grep "false" $WORKSPACE/reportejenkins.jtl
#then 
#echo El test fallo
#exit 1
#fi

if grep "false" $reportFile > $WORKSPACE/resultadoemail.txt || $JOB_NAME > $WORKSPACE/resultadoemail.txt || $DATE > $WORKSPACE/resultadoemail.txt
then
echo El test fallo
exit 1
else grep "true" $WROKSPACE/$reportFile > resultadoemail.txt
echo El test finalizo correctamente
exit 0
fi
