module FlagIcon
  class << self
    def language_name(code)
      FlagIcon::Countries::LANGUAGES[code.to_sym]
    end

    def country_name(code)
      FlagIcon::Countries::NAMES[code.to_sym]
    end

    def language_flag(code)
      FlagIcon::Countries::LANGUAGE_FLAGS[code.to_sym]
    end

    def select_language
      {
        'Popular' => popular_languages,
        'Available' => available_languages.map { |lang| [language_name(lang), lang] }
      }
    end

    def language_icon(code)
      "<span class='flag-icon flag-icon-#{language_flag(code)}' title='Audio language - #{language_name(code)}'></span>"
    end

    def flag_icon(code)
      "<span class='flag-icon flag-icon-#{code}' title='Available in #{country_name(code)}'></span>"
    end

    def popular_languages
      [['English', :en], ['Spanish', :es]]
    end

    def available_languages
      @languages ||= FlagIcon::Countries::LANGUAGES.keys
    end
  end
end
