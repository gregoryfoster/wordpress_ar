module Wordpress
  module AR
    class Post < Wordpress::AR::Database
      set_table_name  "#{@@table_prefix}posts"
      set_primary_key :ID

      belongs_to :author,      :foreign_key => :post_author, :class_name => 'Wordpress::AR::User'
      has_many   :postmetas
      has_many   :comments,    :foreign_key => :comment_post_ID
      belongs_to :parent_post, :foreign_key => :post_parent, :class_name => 'Wordpress::AR::Post'
      has_many   :child_posts, :foreign_key => :post_parent, :class_name => 'Wordpress::AR::Post'
      has_many   :term_relationships, :foreign_key => :object_id, :class_name => 'Wordpress::AR::TermRelationship'

      validates_length_of :post_status,    :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :comment_status, :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :ping_status,    :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :post_password,  :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :post_name,      :maximum => 200, :allow_nil => true, :allow_blank => true
      validates_length_of :guid,           :maximum => 255, :allow_nil => true, :allow_blank => true
      validates_length_of :post_type,      :maximum => 20,  :allow_nil => true, :allow_blank => true
      validates_length_of :post_mime_type, :maximum => 100, :allow_nil => true, :allow_blank => true

      # post_status: publish, pending, draft, auto-draft, future, private, trash, inherit
      # comment_status: open, closed, registered_only
      # ping_status: open, closed
      # post_name: is the post slug.

      # Find or create the requested term relationship.
      def establish_term_relationship(taxonomy_name, term_name)
        # Retrieve the corresponding term taxonomy.
        term = Wordpress::AR::Term.find_by_name(term_name)
        term_taxonomy = Wordpress::AR::TermTaxonomy.find_by_term_id_and_taxonomy(term.id, taxonomy_name)

        # Establish a term relationship.
        Wordpress::AR::TermRelationship.find_or_create_by_object_id_and_term_taxonomy_id(self.ID, term_taxonomy.id)
      end

    end #class
  end #module
end #module
