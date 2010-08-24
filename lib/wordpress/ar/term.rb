module Wordpress
  module AR
    class Term < Wordpress::AR::Database
      set_table_name  "#{@@table_prefix}terms"
      set_primary_key :term_id
      
      validates_length_of :name, :maximum => 200, :allow_nil => true, :allow_blank => true
      validates_length_of :slug, :maximum => 200, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
