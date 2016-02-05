
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup.sh
#  best in cloud 9 to just right click this file and select run



echo "Now install Phonegap Cordova"

npm install -g cordova


echo "Activating apache2 webserver"

service apache2 start



echo "Now make a Phonegap Cordova android apk from a web page"

read=HelloCordova

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


echo "Now lets make an android ant apk file"

read=HelloAnt

ls -l /home/ubuntu/workspace/android-sdk-linux/platforms

echo "Type the number of the target your Android app is for"
echo "See above folders of installed platforms"
echo "Type 20 for --target android-20    Android 4.4W.2 KitKat, type 20"
echo "Type 22 for --target android-22    Android 5.1.1  Lollipop, type 22"
echo "Type 23 for --target android-23    Android 6.0    Marshmallow, type 23"

read=22


#http://socialcompare.com/en/comparison/android-versions-comparison


android create project \
--target android-$myNum \
--name $wow4 \
--path $wow4 \
--activity MainActivity \
--package com.example.$wow4


android update project --name $wow4 --target android-$myNum --path $wow4

cd $wow4

ant clean

ant debug

cd bin

printf "\n\n<a href='$wow4/bin/$wow4-debug.apk'>$wow4/bin/$wow4-debug.apk</a><br>"  >> /home/ubuntu/workspace/index.html

ls -l

echo "Look for you new android $wow4/bin $wow4-debug.apk"
echo "right-click run index.html, then preview-preview running application to view webpage with .apk"

echo "Finally lets make a Gradle Android apk and show the website to download all three"
read=HelloGradle


ls -l /home/ubuntu/workspace/android-sdk-linux/platforms

echo "Type the number of the target your Android app is for"
echo "See above folders of installed platforms"
echo "Type 20 for --target android-20    Android 4.4W.2 KitKat, type 20"
echo "Type 22 for --target android-22    Android 5.1.1  Lollipop, type 22"
echo "Type 23 for --target android-23    Android 6.0    Marshmallow, type 23"

read=22


#Good site to check
#http://socialcompare.com/en/comparison/android-versions-comparison


android create project \
--target android-$myNum \
--name $wow4 \
--path $wow4 \
--activity MainActivity \
--package com.example.$wow4 \
--gradle --gradle-version 0.11.+ 




cd $wow4


chmod a+x gradlew

./gradlew assembleDebug

printf "\n\n<a href='$wow4/build/outputs/apk/$wow4-debug.apk'>$wow4/build/outputs/apk/$wow4-debug.apk</a><br><br>"  >> /home/ubuntu/workspace/index.html

ls -l build/outputs/apk

echo "Setting up an alias for fast folder navigation"
echo ""

echo "Look for your new android $wow4/build/outputs/apk/$wow4-debug.apk"
echo ""


printf "\n\nalias myapk$wow4='cd $wow4/build/outputs/apk && echo \"Your .apk file is in the $wow4/build/outputs/apk folder \"  && echo \"The file list is\" && ls -l'"  >> ~/.profile

echo "Look for your MainActivity.java file at  $wow4/src/main/java/com/example/sss"
echo ""

printf "\n\nalias mysrc$wow4='cd $wow4/src/main/java/com/example/$wow4 && echo \"Your .apk file is in the $wow4/src/main/java/com/example/$wow4 folder \"  && echo \"The file list is\" && ls -l'"  >> ~/.profile


echo "Look for your MainActivity.java file at  $wow4/src/main/java/com/example/$wow4"
echo ""
echo "Your two alias' are myapp and mysrc. Type that in any terminal."
echo ""


echo "type myapp to find your debug .apk and the time it was made"
echo ""
echo "right-click run index.html, then preview-preview running application to view webpage with .apk"
echo "Or just click this link and open the web page"
echo ""
echo ""
echo ""

echo "http://$C9_HOSTNAME"
