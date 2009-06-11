class MailerTwitterableYmlGenerator < Rails::Generator::Base 
  def manifest 
    record do |m| 
      m. file 'mailer_twitterable.yml', 'config/mailer_twitterable.yml', :collision => :ask  
    end 
  end
  
  def file_name
    "mailer_twitterable"
  end
end
