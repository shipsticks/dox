require 'dox/config'
require 'dox/utils/refined_hash'
require 'dox/dsl/attr_proxy'
require 'dox/dsl/action'
require 'dox/dsl/documentation'
require 'dox/dsl/resource_group'
require 'dox/dsl/resource'
require 'dox/dsl/syntax'
require 'dox/entities/action'
require 'dox/entities/example'
require 'dox/entities/resource_group'
require 'dox/entities/resource'
require 'dox/errors/file_not_found_error'
require 'dox/errors/folder_not_found_error'
require 'dox/errors/invalid_action_error'
require 'dox/errors/invalid_resource_error'
require 'dox/errors/invalid_resource_group_error'
require 'dox/formatter'
require 'dox/printers/base_printer'
require 'dox/printers/action_printer'
require 'dox/printers/document_printer'
require 'dox/printers/example_printer'
require 'dox/printers/resource_group_printer'
require 'dox/printers/resource_printer'
require 'dox/version'

module Dox
  class << self
    attr_writer :config
  end

  def self.configure
    yield(config) if block_given?
  end

  def self.config
    @conifg ||= Dox::Config.new
  end
end
