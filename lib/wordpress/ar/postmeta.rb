module Wordpress
  module AR
    class Postmeta < Wordpress::AR::Database
      set_table_name  "#{@@table_prefix}postmeta"
      set_primary_key :meta_id
      
      belongs_to :post
      
      validates_length_of :meta_key, :maximum => 255, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
