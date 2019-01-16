#!/usr/bin/env sh


set -x
echo $pwd

cd android
echo $pwd
sleep 2
fastlane beta

