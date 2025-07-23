Pod::Spec.new do |s|
    s.name             = 'ffmpeg_kit_flutter_new'
    s.version          = '2.0.0'
    s.summary          = 'FFmpeg Kit for iOS with full GPL features'
    s.description      = 'FFmpeg Kit for iOS with full GPL features including libx264'
    s.homepage         = 'https://github.com/sk3llo/ffmpeg_kit_flutter'
    s.license          = { :type => 'GPL-3.0' }
    s.author           = { 'FFmpeg Kit' => 'info@ffmpeg.org' }
    s.platform         = :ios, '15.0'
    s.source           = { :path => '.' }
  
    s.vendored_frameworks = [
      'Frameworks/ffmpegkit.xcframework',
      'Frameworks/libavcodec.xcframework',
      'Frameworks/libavdevice.xcframework',
      'Frameworks/libavfilter.xcframework',
      'Frameworks/libavformat.xcframework',
      'Frameworks/libavutil.xcframework',
      'Frameworks/libswresample.xcframework',
      'Frameworks/libswscale.xcframework',
      #'libvideotoolbox.xcframework', # 이 부분도 그대로 유지합니다.
      #'libaudiotoolbox.xcframework' # 이 부분도 그대로 유지합니다.
    ]
  end