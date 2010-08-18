require 'rubygems'
require 'composite_primary_keys'

module Wordpress
  module AR
    class TermRelationship < Wordpress::AR::Database
      set_table_name   :term_relationships
      set_primary_keys :object_id, :term_taxonomy_id
      
      belongs_to :term_taxonomy

    end #class
  end #module
end #module
