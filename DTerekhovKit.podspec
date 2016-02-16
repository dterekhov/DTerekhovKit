Pod::Spec.new do |spec|
  spec.name = "DTerekhovKit"
  spec.version = "0.0.5"
  spec.summary = "Simple framework contains helpers"
  spec.homepage = "https://github.com/dterekhov/DTerekhovKit"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Dmitry Terekhov" => 'dimanter@gmail.com' }
  spec.social_media_url = "https://www.facebook.com/profile.php?id=100010690424403"

  spec.platform = :ios, "7.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/dterekhov/DTerekhovKit.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "DTerekhovKit/**/*.{h,m}"

  spec.dependency "MBProgressHUD"
  spec.dependency "GoogleAnalytics"
end