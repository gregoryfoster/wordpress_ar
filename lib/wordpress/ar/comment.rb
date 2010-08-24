module Wordpress
  module AR
    class Comment < Wordpress::AR::Database
      set_table_name  "#{@@table_prefix}comments"
      set_primary_key :comment_id
      
      belongs_to :post,           :foreign_key => :comment_post_ID
      has_many   :commentmetas
      belongs_to :parent_comment, :foreign_key => :comment_parent, :class_name => 'Wordpress::AR::Comment'
      has_many   :child_comments, :foreign_key => :comment_parent, :class_name => 'Wordpress::AR::Comment'
      belongs_to :user
      
      validates_length_of :comment_author_email, :maximum => 100, :allow_nil => true, :allow_blank => true
      validates_length_of :comment_author_url,   :maximum => 200, :allow_nil => true, :allow_blank => true
      validates_length_of :comment_author_IP,    :maximum => 100, :allow_nil => true, :allow_blank => true
      validates_length_of :comment_approved,     :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :comment_agent,        :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :comment_type,         :maximum => 20,  :allow_nil => true, :allow_blank => true

    end #class
  end #module
end #module
