#!/bin/bash
csvFile=$1
projectName=$2
reportFile=$3
var_date=$(date +%c)
rm $reporFile
docker run --rm -v $WORKSPACE:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeterengine.stopfail.system.exit=true -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/$csvFile -n -t /workspace/$projectName -l /workspace/$reportFile
if grep "false" $reportFile > resultadoemail.txt && $JOB_NAME > resultadoemail.txt && $DATE > resultadoemail.txt
then
echo El test fallo
exit 1
else grep "true" $reportFile > resultadoemail.txt && echo "Nombre de proyecto:" $JOB_NAME >> resultadoemail.txt && echo "Fecha y hora de ejecucion:" $var_date >> resultadoemail.txt
echo El test finalizo correctamente
exit 0
fi
