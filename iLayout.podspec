#
# Be sure to run `pod lib lint MyLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "iLayout"
  s.version          = "0.1.0"
  s.summary          = "Framework providing high level and intutive APIs for creating auto layout constraints"
  s.description      = "Framework providing high level and intutive APIs for creating auto layout constraints"
  s.homepage         = "https://github.com/abdullah-chhatra/iDate.git"
  s.license          = 'MIT'
  s.author           = { "Abdulmunaf Chhatra" => "abdullah.chhatra@gmail.com" }
  s.source           = { :git => "https://github.com/abdullah-chhatra/iLayout.git", :tag => s.version.to_s }

  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'iLayout/**/*.swift'

end
