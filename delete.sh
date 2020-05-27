ps -ef | egrep 'ippeveprinter|ippserver' | grep -v grep | awk '{print $2}' | xargs kill
