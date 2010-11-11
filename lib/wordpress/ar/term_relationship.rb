require 'rubygems'
require 'composite_primary_keys'

module Wordpress
  module AR
    class TermRelationship < Wordpress::AR::Database
      set_table_name   "#{@@table_prefix}term_relationships"
      set_primary_keys :object_id, :term_taxonomy_id

      belongs_to :term_taxonomy
      belongs_to :post, :foreign_key => :object_id, :class_name => 'Wordpress::AR::Post'

    end #class
  end #module
end #module
