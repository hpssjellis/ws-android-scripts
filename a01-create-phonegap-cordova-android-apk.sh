#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a01-create-phonegap-cordova-android-apk.sh
#  best in cloud 9 to just right click this file and select run


#  assumes phonegap or cordova have been installed

echo "Enter a folder name, no spaces, no dashes, underscore allowed, for your app. example: helloCordova"
read wow4

cordova create $wow4 --name $wow4 --id com.$wow4.$wow4


cd $wow4


phonegap platform add android

echo "Changing default Phonegap index.html to simple webpage index.html"

cd ..
cd temp-files

cp index.html /home/ubuntu/workspace/$wow4/www/index.html

cd ..

cd $wow4

phonegap build android


cd platforms/android/build/outputs/apk/

printf "\n\n<a href='$wow4/platforms/android/build/outputs/apk/android-debug.apk'>$wow4/platforms/android/build/outputs/apk/android-debug.apk</a><br>"  >> /home/ubuntu/workspace/index.html

ls -l

cd ~/workspace/$wow4/platforms/android/assets/www

echo "Here is your index.html main webpage in the $wow4/platforms/android/assets/www folder"

ls -l

cd ~/workspace


echo "Look for your new android $wow4/bin/$wow4-debug.apk"
echo "right-click run index.html, then preview-preview running application to view webpage with your apk file"


echo "Or just click this link and open the web page"
echo ""
echo ""
echo ""

echo "http://$C9_HOSTNAME"


