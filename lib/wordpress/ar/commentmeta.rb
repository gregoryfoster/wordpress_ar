module Wordpress
  module AR
    class Commentmeta < Wordpress::AR::Database
      set_table_name  :commentmeta
      set_primary_key :meta_id
      
      belongs_to :comment
      
      validates_length_of :meta_key, :maximum => 255, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
