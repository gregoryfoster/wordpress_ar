# Require all model files.
require 'wordpress/ar/database'

# Configure table prefix from global or environment variable.
prefix = WORDPRESS_TABLE_PREFIX.blank? ?
  (ENV['WORDPRESS_TABLE_PREFIX'].blank? ? '' : ENV['WORDPRESS_TABLE_PREFIX']) :
  WORDPRESS_TABLE_PREFIX
Wordpress::AR::Database.set_table_prefix(prefix)

require 'wordpress/ar/user'
require 'wordpress/ar/usermeta'
require 'wordpress/ar/post'
require 'wordpress/ar/postmeta'
require 'wordpress/ar/comment'
require 'wordpress/ar/commentmeta'
require 'wordpress/ar/link'
require 'wordpress/ar/term'
require 'wordpress/ar/term_taxonomy'
require 'wordpress/ar/term_relationship'