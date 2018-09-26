
Pod::Spec.new do |s|
  s.name         = "RNFilestack"
  s.version      = "1.0.0"
  s.summary      = "RNFilestack"
  s.description  = <<-DESC
                  RNFilestack
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNFilestack.git", :tag => "master" }
  s.source_files  = "RNFilestack/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  