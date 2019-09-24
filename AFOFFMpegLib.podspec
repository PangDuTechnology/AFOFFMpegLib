Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AFOFFMpegLib"
  s.version      = "0.0.21"
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
  s.subspec 'include' do |include|
      include.subspec 'libavcodec' do |avcodec|
        avcodec.source_files = 'FFmpeg/include/libavcodec/*.h' 
        avcodec.public_header_files = 'FFmpeg/include/libavcodec/*.h'  
      end 

      include.subspec 'libavformat' do |avformat|
        avformat.source_files = 'FFmpeg/include/libavformat/*.h' 
        avformat.public_header_files = 'FFmpeg/include/libavformat/*.h'  
      end 

      include.subspec 'libavutil' do |avutil|
        avutil.source_files = 'FFmpeg/include/libavutil/*.h' 
        avutil.public_header_files = 'FFmpeg/include/libavutil/*.h'  
      end

      include.subspec 'libswresample' do |libswresample|
        swresample.source_files = 'FFmpeg/include/libswresample/*.h' 
        swresample.public_header_files = 'FFmpeg/include/libswresample/*.h'  
      end 

      include.subspec 'libswscale' do |swscale|
        swscale.source_files = 'FFmpeg/include/libswscale/*.h' 
        swscale.public_header_files = 'FFmpeg/include/libswscale/*.h'  
      end 
    end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.header_mappings_dir = "FFmpeg/include"
  s.preserve_paths = "FFmpeg/**/**"
  s.vendored_libraries = "FFmpeg/lib/libavcodec.a","contains/FFmpeg/lib/libavformat.a","contains/FFmpeg/lib/libavutil.a","contains/FFmpeg/lib/libswscale.a","contains/FFmpeg/lib/libswresample.a"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = ["CoreMedia", "AVFoundation","AudioToolbox","VideoToolbox"]
  s.libraries = ["c", "c++","z","iconv","bz2"]

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = true
   s.static_framework = true
   s.xcconfig = { 'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/FFmpeg/include/**/*.h"',
                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/FFmpeg/lib"'
  }
end
