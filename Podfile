use_frameworks!
platform :ios, '14.0'
target 'Nucleo' do
  pod 'IQKeyboardManagerSwift'
  pod 'MBProgressHUD'
  pod 'Alamofire', '~> 4.6'
  pod 'ObjectMapper','3.5.3'
  pod 'SDWebImage'
  pod 'SKCountryPicker'
  pod 'ADDatePicker'
  pod 'SDWebImage'
  pod 'GoogleMaps', '3.1.0'
  pod 'FSCalendar'
  pod 'razorpay-pod', '~> 1.1.17'
  pod 'Charts'
  pod 'TinyConstraints'
  pod 'AWSS3'
  pod 'JGProgressHUD'
  pod 'GooglePlaces', '3.1.0'
  pod 'TwilioVideo', '~> 5'
#  pod 'Google-Maps-iOS-Utils'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |configuration|
      target.build_settings(configuration.name)['ONLY_ACTIVE_ARCH'] = 'NO'
    end
  end
end














