begin
 require 'twitter'
rescue MissingSourceFile
  puts "twitter gem not found. Needed for mailer_twitterable plugin"
end

MailerTwitterable.load_config

ActionMailer::Base.class_eval do
    
    def deliver_with_twitterable!(mail=@mail)
      begin        
        if MailerTwitterable.models.include?(self.class.to_s)          
          unless MailerTwitterable.user.blank? || MailerTwitterable.password.blank?            
            twit=Twitter::Base.new MailerTwitterable.user, MailerTwitterable.password
            twit.update "#{Time.now.utc.strftime('%Y%m%d %H%M%S')} #{mail.subject}"
          end
        end
      rescue
        nil
      end
      deliver_without_twitterable!   
    end
  alias_method_chain :deliver!, :twitterable
end

