#!/bin/bash
#projectFile=$1
#csvFile=$2
#reportFile=$3
docker run --rm -v $WORKSPACE/jmeterPrueba:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/cuenta.csv -n -t /workspace/CursoJmetter.jmx -l /workspace/$reportejenkins.jtl
