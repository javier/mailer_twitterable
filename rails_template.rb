gem "twitter"

plugin 'mailer_twitterable', :git => 'git://github.com/javier/mailer_twitterable.git'
generate(:mailer_twitterable_yml)

inside("vendor") do
  puts "\n\nread README under vendor/plugins/mailer_twitterable for instructions and configuration options\n\n"  
end  


