module Wordpress
  module AR
    class User < Wordpress::AR::Database
      set_table_name  :users
      set_primary_key :ID
      
      has_many :posts,     :foreign_key => :post_author
      has_many :links,     :foreign_key => :link_owner
      has_many :usermetas
      has_many :comments
      
      validates_length_of :user_login,    :maximum => 60,  :allow_nil => true, :allow_blank => true
      validates_length_of :user_pass,     :maximum => 64,  :allow_nil => true, :allow_blank => true
      validates_length_of :user_nicename, :maximum => 50,  :allow_nil => true, :allow_blank => true
      validates_length_of :user_email,    :maximum => 100, :allow_nil => true, :allow_blank => true
      validates_length_of :user_url,      :maximum => 100, :allow_nil => true, :allow_blank => true
      validates_length_of :display_name,  :maximum => 250, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
