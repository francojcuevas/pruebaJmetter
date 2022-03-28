#!/bin/bash
$PROJECT=$1
CSVFILE=$2
REPORTEFILE=$3
docker run --rm -v $WORKSPACE/jmeterPrueba:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/csvFile -n -t /workspace/$projectFile -l /workspace/$reporteFile
