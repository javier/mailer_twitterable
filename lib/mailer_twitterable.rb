# MailerTwitterable
class MailerTwitterable
  mattr_accessor :config    
  
  def self.load_config
    self.config=YAML::load(ERB.new(IO.read(File.join(RAILS_ROOT,'config','mailer_twitterable.yml'))).result) rescue nil
  end
  
  def self.user
    self.config['users'][RAILS_ENV]['username'] rescue nil
  end
  
  def self.password
    self.config['users'][RAILS_ENV]['password'] rescue nil
  end
  
  def self.format
    self.config['users'][RAILS_ENV]['format'] rescue nil
  end
  
  def self.models
    self.config['models'] rescue []
  end
    
end