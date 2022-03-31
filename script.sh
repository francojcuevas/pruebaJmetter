#!/bin/bash
#projectFile=$1
#csvFile=$2
#reportFile=$3
cat cuenta.csv
docker run --rm -v $WORKSPACE:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeterengine.stopfail.system.exit=true -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/cuenta.csv -n -t /workspace/falla.jmx -l /workspace/reportejenkins.jtl
if grep "false" $WORKSPACE/reportejenkins.jtl
then 
echo El test fallo
exit 1
fi

