#!/bin/bash

$PROJECT=
csvFIle=$2
reportFIle=$3
docker run --rm -v $WORKSPACE/jmeterPrueba:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/csvFile -n -t /workspace/$projectFile -l /workspace/$reporteFile


docker run --rm -v /home/franco/jmeterPrueba:/workspace swethapn14/repo_perf:JmeterLatest -Jcsvfile=/workspace/cuenta.csv -n -t /workspace/CursoJmetter.jmx -l /workspace/reportejenkins.jtl
