#!/bin/bash

# 이 스크립트는 'scripts' 폴더 안에 있습니다.
# 복사된 프레임워크와 podspec 파일이 들어갈 최종 목적지입니다.
# ffmpeg_kit_flutter/ios/CustomFFmpegKit 경로가 됩니다.
TARGET_DIR="$(dirname "$0")/../ios/Frameworks"

# 당신의 커스텀 빌드된 FFmpeg-Kit XC 프레임워크와 podspec 파일이 있는 원본 경로를 정확히 입력하세요.
# (당신이 ls 명령어를 실행하셨던 그 폴더의 절대 경로입니다.)
SOURCE_DIR="/Users/flex/Documents/ffmpeg/ios/ffmpeg-kit/prebuilt/bundle-apple-xcframework-ios"

echo "Custom FFmpeg-Kit XCframeworks 및 podspec 파일 통합 스크립트 시작..."

echo "기존 $TARGET_DIR 디렉토리 삭제 중..."
rm -rf "$TARGET_DIR"

echo "대상 디렉토리 생성 중: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

echo "원본 $SOURCE_DIR 에서 모든 파일 복사 중..."
# SOURCE_DIR 안의 모든 파일과 폴더를 TARGET_DIR로 복사합니다.
# 이렇게 하면 .xcframework 파일들과 함께 ffmpeg_kit_flutter_new.podspec 파일도 같이 복사됩니다.
cp -R "$SOURCE_DIR"/* "$TARGET_DIR/"

echo "모든 파일 복사 완료!"
echo "이제 'ffmpeg_kit_flutter/ios/ffmpeg_kit_flutter_new.podspec' 파일이"
echo "'ffmpeg_kit_flutter/ios/Frameworks/ffmpeg_kit_flutter_new.podspec'의 내용을 사용하도록"
echo "심볼릭 링크 또는 내용 복사가 필요할 수 있습니다."
echo "그러나, 일반적으로 Flutter 패키지에서는 'ios/' 바로 아래에 있는 podspec을 사용하므로, 다음 단계를 확인해주세요."

echo "---------------------------------------------------------"
echo "다음 단계: podspec 파일 경로 확인 및 Flutter 프로젝트 설정"
echo "---------------------------------------------------------"














#!/bin/bash

# # Download and unzip iOS framework
# IOS_URL="https://github.com/sk3llo/ffmpeg_kit_flutter/releases/download/6.0.2/ffmpeg-kit-full-gpl-6.0.LTS-ios-framework.zip"
# mkdir -p Frameworks
# curl -L $IOS_URL -o frameworks.zip
# unzip -o frameworks.zip -d Frameworks
# rm frameworks.zip

# # Delete bitcode from all frameworks
# xcrun bitcode_strip -r Frameworks/ffmpegkit.framework/ffmpegkit -o Frameworks/ffmpegkit.framework/ffmpegkit
# xcrun bitcode_strip -r Frameworks/libavcodec.framework/libavcodec -o Frameworks/libavcodec.framework/libavcodec
# xcrun bitcode_strip -r Frameworks/libavdevice.framework/libavdevice -o Frameworks/libavdevice.framework/libavdevice
# xcrun bitcode_strip -r Frameworks/libavfilter.framework/libavfilter -o Frameworks/libavfilter.framework/libavfilter
# xcrun bitcode_strip -r Frameworks/libavformat.framework/libavformat -o Frameworks/libavformat.framework/libavformat
# xcrun bitcode_strip -r Frameworks/libavutil.framework/libavutil -o Frameworks/libavutil.framework/libavutil
# xcrun bitcode_strip -r Frameworks/libswresample.framework/libswresample -o Frameworks/libswresample.framework/libswresample
# xcrun bitcode_strip -r Frameworks/libswscale.framework/libswscale -o Frameworks/libswscale.framework/libswscale