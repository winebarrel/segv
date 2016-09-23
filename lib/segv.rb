require 'segv/version'
require 'segv_core'

module Segv
  def segv
    Segv::Core.segv
  end
  module_function :segv
end
