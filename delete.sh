ps -ef | grep ippeveprinter | grep -v grep | awk '{print $2}' | xargs kill
