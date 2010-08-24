module Wordpress
  module AR
    class TermTaxonomy < Wordpress::AR::Database
      set_table_name  "#{@@table_prefix}term_taxonomy"
      set_primary_key :term_taxonomy_id
      
      belongs_to :term
      belongs_to :parent_taxonomy,  :foreign_key => :parent, :class_name => 'Wordpress::AR::TermTaxonomy'
      has_many   :child_taxonomies, :foreign_key => :parent, :class_name => 'Wordpress::AR::TermTaxonomy'
      
      validates_length_of :taxonomy, :maximum => 32, :allow_nil => true, :allow_blank => true
      
    end #class
  end #module
end #module
