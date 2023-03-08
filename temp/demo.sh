for item in 'ls | grep x.pdf && ls | grep a.mp3

do

   fileName=`echo $item | awk -F. '{ print $1 }'`

        mkdir $fileName

   cp -r $item $fileName

