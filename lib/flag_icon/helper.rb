require "flag_icon/countries"

module FlagIcon
  def language_name(code)
    FlagIcon::Countries::LANGUAGES[code.to_sym]
  end

  def language_flag(code)
    FlagIcon::Countries::LANGUAGE_FLAGS[code.to_sym]
  end

  def languages
    @languages ||= FlagIcon::Countries::LANGUAGES.keys
  end

  def select_language
    {
      'Popular' => [['English', :en], ['Spanish', :es]],
      'Available' => languages.map { |lang| [language_name(lang), lang] }
    }
  end

  def flag_icon(code)
    "<span class='flag-icon flag-icon-#{language_flag(code)}' title='Audio language - #{language_name code}'></span>"
  end
end
