#!/bin/bash
#projectFile=$1
#csvFile=$2
#reportFile=$3
cat cuenta.csv
docker run --rm -v $WORKSPACE:/workspace swethapn14/repo_perf:JmeterLatest jmeterengine.force.system.exit=true -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/cuenta.csv -n -t /workspace/CursoJmetter.jmx -l /workspace/$reportejenkins.jtl

#docker run --rm -v $WORKSPACE/jmeterPrueba:/workspace swethapn14/repo_perf:JmeterLatest -Jjmeter.save.saveservice.output_format=xml -Jcsvfile=/workspace/cuenta.csv -n -t /workspace/CursoJmetter.jmx -l /workspace/$reportejenkins.jtl
