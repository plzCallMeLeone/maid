#!/bin/zsh

# maid ver 0.0.0.1
# 기능
# 1. ~/Download 폴더 자동 정리.
# 2. Music, Image 등등 개인 파일을 담은 폴더 자동 백업(rclone 같은걸 끼얹나?)
# 솔직히 이정도는 해야지 ㅇㅅㅇ.

mkdir -p ~/Music/voice
mkdir -p ~/Documents/pdf
mkdir -p ~/Images


find ~/Downloads -type d -name "RJ*" -exec mv '{}' ~/Music/voice ';'
find ~/Downloads -type f -name "*.mp3" -exec mv '{}' ~/Music ';'

find ~/Downloads -type f -name "*.pdf" -exec mv '{}' ~/Documents/pdf ';'
find ~/Downloads \( -type f -name "*.jpg" \) -or \
    \( -type f -name "*.png" \) -exec mv '{}' ~/Images ';'

