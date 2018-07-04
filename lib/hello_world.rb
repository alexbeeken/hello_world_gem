require "hello_world/engine"

module HelloWorld

end

ActiveRecord::Base.class_eval do
  def self.validates_email_format(attr_name, options={})
    validates attr_name, format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end
end
