
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a00-fix-docker.sh
# best in cloud 9 to just right click this file and select run


sudo /usr/local/android-sdk-linux/tools/android update sdk --filter tools --no-ui --force 
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter platform-tools --no-ui --force
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter android-19 --no-ui --force
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter android-20 --no-ui --force 
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter android-21 --no-ui --force 
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter android-22 --no-ui --force 
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter android-23 --no-ui --force 
sudo /usr/local/android-sdk-linux/tools/android update sdk --filter extra --no-ui --force  
sudo /usr/local/android-sdk-linux/tools/android update sdk --all --filter build-tools-23.0.2 --no-ui --force
