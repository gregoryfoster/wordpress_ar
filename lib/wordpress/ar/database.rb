gem 'activerecord', '2.3.5'
require 'active_record'

module Wordpress
  module AR
    class Database < ActiveRecord::Base
      @@table_prefix = ''

      def self.set_table_prefix(prefix)
        @@table_prefix = prefix
      end

    end #class
  end #module
end #module