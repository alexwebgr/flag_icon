module FlagIcon
  # It returns the language name
  #
  # @param code -> language locale
  # @example language_name('el') # => Greek
  # @return String
  def language_name(code)
    FlagIcon::Countries::LANGUAGES[code.to_sym]
  end

  # It returns the country name
  #
  # @param code -> country iso code
  # @example country_name('gr') # => Greece
  # @return String
  def country_name(code)
    FlagIcon::Countries::NAMES[code.to_sym]
  end

  # It returns the country iso code
  #
  # @param code -> language locale
  # @example language_flag('el') # => gr
  # @return String
  def language_flag(code)
    FlagIcon::Countries::LANGUAGE_FLAGS[code.to_sym] || 'xx'
  end

  # It returns an array that can be used in the select tag
  #
  # @example select_language
  # @return Array
  def select_language
    available_languages.map { |lang| [language_name(lang), lang] }
  end

  # It returns an hash of arrays that can be used in the select tag
  #
  # @param popular -> title of the popular group
  # @param available -> title of the available group
  # @example grouped_select_language(popular: 'Popular', available: 'Available')
  # @return Hash
  def grouped_select_language(popular: 'Popular', available: 'Available')
    {
      popular => popular_languages,
      available => available_languages.map { |lang| [language_name(lang), lang] }
    }
  end

  # It returns HTML element with country icon and title
  #
  # @param code -> language locale
  # @example language_icon('el')
  # @return String
  def language_icon(code, title: "Audio language - #{language_name(code)}")
    "<span class='flag-icon flag-icon-#{language_flag(code)}' title='#{title}'></span>"
  end

  # It returns HTML element with country icon and title
  #
  # @param code -> country iso code
  # @example country_icon('gr')
  # @return String
  def country_icon(code, title: "Available in #{country_name(code)}")
    "<span class='flag-icon flag-icon-#{code}' title='#{title}'></span>"
  end

  # Define in your application_helper to override the popular languages
  # Default: [['English', :en], ['Spanish', :es]]
  #
  # @example
  #   def popular_languages
  #     [['English', :en], ['Spanish', :es]]
  #   end
  # @return Array
  def popular_languages
    [['English', :en], ['Spanish', :es]]
  end

  # Define in your application_helper to override the available languages
  # @example [['English', :en], ['Spanish', :es]] #default
  # @example
  #   def available_languages
  #     Language.all.order(:language_locale).pluck(:language_locale)
  #   end
  # @return Array
  def available_languages
    @languages ||= FlagIcon::Countries::LANGUAGES.keys
  end

  # exposed methods for testing
  module_function :language_name
  module_function :country_name
  module_function :language_flag
  module_function :select_language
  module_function :grouped_select_language
  module_function :language_icon
  module_function :country_icon
  module_function :popular_languages
  module_function :available_languages
end
