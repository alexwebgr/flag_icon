require 'rails'
require "flag_icon/helper"

module FlagIcon
  class Railtie < ::Rails::Railtie
    # initializer "flag_icon.helper" do
    #   ActionView::Base.send :include, FlagIcon
    # end
  end
end
