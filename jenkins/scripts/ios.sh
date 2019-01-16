#!/usr/bin/env sh


set -x
echo $pwd

cd ios
echo $pwd
sleep 2
fastlane beta

