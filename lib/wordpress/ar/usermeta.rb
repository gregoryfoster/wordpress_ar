module Wordpress
  module AR
    class Usermeta < Wordpress::AR::Database
      set_table_name  :usermeta
      set_primary_key :umeta_id
      
      belongs_to :user
      
      validates_length_of :meta_key, :maximum => 255, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
