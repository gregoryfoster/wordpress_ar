module Wordpress
  module AR
    class Link < ActiveRecord::Base
      set_table_name  :links
      set_primary_key :link_id
      
      belongs_to :user, :foreign_key => :link_owner
      
      validates_length_of :link_url,         :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :link_name,        :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :link_image,       :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :link_target,      :maximum => 25,  :allow_nil => true, :allow_blank => true
      validates_length_of :link_description, :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :link_visible,     :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :link_rel,         :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :link_rss,         :maximum => 255, :allow_nil => true, :allow_blank => true
    end #class
  end #module
end #module
