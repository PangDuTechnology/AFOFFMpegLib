Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOFFMpegLib"
  s.version      = "0.0.20"
  s.summary      = "decoding."

  # This description is used to generate tags and improve search results.
  s.description  = 'Use soft decode to decode video.'
  s.homepage     = "https://github.com/PangDuTechnology/AFOFFMpegLib.git"
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/AFOFFMpegLib.git", :tag => s.version.to_s }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "FFmpeg/include/**/*.h"
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.header_mappings_dir = "FFmpeg/include"
  s.preserve_paths = "FFmpeg/**/**"
  s.vendored_libraries = "FFmpeg/lib/libavcodec.a","FFmpeg/lib/libavformat.a","FFmpeg/lib/libavutil.a","FFmpeg/lib/libswscale.a","FFmpeg/lib/libswresample.a","x264/lib/libx264.a"
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = ["CoreMedia", "AVFoundation","AudioToolbox","VideoToolbox"]
  s.libraries = ["c", "c++","z","iconv","bz2"]
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
   s.static_framework = true
   s.xcconfig = { 'HEADER_SEARCH_PATHS'=> '$(SDKROOT)/FFmpeg/include/**/*.h' ,
                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/FFmpeg/lib"'
  }
end
