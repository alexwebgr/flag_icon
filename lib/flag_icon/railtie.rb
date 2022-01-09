require 'rails'
require "flag_icon/helpers"

module FlagIcon
  class Railtie < ::Rails::Railtie
    initializer "flag_icon.helpers" do
      ActionView::Base.send :include, FlagIcon
    end
  end
end
