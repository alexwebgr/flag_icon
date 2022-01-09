# frozen_string_literal: true

RSpec.describe FlagIcon do
  subject { FlagIcon }

  it "has a version number" do
    expect(FlagIcon::Rails::VERSION).not_to be_nil
  end

  describe '#language_name' do
    it 'returns the language name' do
      expect(subject.language_name('es')).to eq 'Spanish'
    end
  end

  describe '#country_name' do
    it 'returns the country name' do
      expect(subject.country_name('es')).to eq 'Spain'
    end
  end

  describe '#language_flag' do
    it 'returns a country with official language the language code provided' do
      expect(subject.language_flag('es')).to eq 'es'
    end

    it 'returns a country with official language the language code provided Greenlandic' do
      expect(subject.language_flag('kl')).to eq 'gl'
    end

    it 'returns a country with official language the language code provided Galician' do
      expect(subject.language_flag('gl')).to eq 'es-ga'
    end

    context 'when a flag cannot be found' do
      it 'returns the default' do
        expect(subject.language_flag('missing')).to eq 'xx'
      end
    end
  end

  describe '#select_language' do
    it 'returns the language name' do
      expect(subject.select_language).to eq([["Akan", :ak],
                                             ["Igbo", :ig],
                                             ["Abkhazian", :ab],
                                             ["Afar", :aa],
                                             ["Afrikaans", :af],
                                             ["Albanian", :sq],
                                             ["Amharic", :am],
                                             ["Arabic", :ar],
                                             ["Armenian", :hy],
                                             ["Assamese", :as],
                                             ["Aymara", :ay],
                                             ["Azerbaijani", :az],
                                             ["Bashkir", :ba],
                                             ["Basque", :eu],
                                             ["Bengali (Bangla)", :bn],
                                             ["Bhutani", :dz],
                                             ["Bihari", :bh],
                                             ["Bislama", :bi],
                                             ["Breton", :br],
                                             ["Bulgarian", :bg],
                                             ["Burmese", :my],
                                             ["Bambara", :bm],
                                             ["Byelorussian (Belarusian)", :be],
                                             ["Cambodian", :km],
                                             ["Catalan", :ca],
                                             ["Chinese", :cn],
                                             ["Chinese (Traditional)", :zh],
                                             ["Corsican", :co],
                                             ["Croatian", :hr],
                                             ["Czech", :cs],
                                             ["Danish", :da],
                                             ["Dutch", :nl],
                                             ["English", :en],
                                             ["Esperanto", :eo],
                                             ["Estonian", :et],
                                             ["Faeroese", :fo],
                                             ["Farsi", :fa],
                                             ["Fiji", :fj],
                                             ["Finnish", :fi],
                                             ["French", :fr],
                                             ["Frisian", :fy],
                                             ["Galician", :gl],
                                             ["Gaelic (Scottish)", :gd],
                                             ["Gaelic (Manx)", :gv],
                                             ["Georgian", :ka],
                                             ["German", :de],
                                             ["Greek", :el],
                                             ["Greenlandic", :kl],
                                             ["Guarani", :gn],
                                             ["Gujarati", :gu],
                                             ["Hausa", :ha],
                                             ["Hebrew", :he],
                                             ["Hindi", :hi],
                                             ["Hungarian", :hu],
                                             ["Icelandic", :is],
                                             ["Indonesian", :id],
                                             ["Interlingua", :ia],
                                             ["Interlingue", :ie],
                                             ["Inuktitut", :iu],
                                             ["Inupiak", :ik],
                                             ["Irish", :ga],
                                             ["Italian", :it],
                                             ["Javanese", :ja],
                                             ["Kannada", :kn],
                                             ["Kashmiri", :ks],
                                             ["Kazakh", :kk],
                                             ["Kinyarwanda (Ruanda)", :rw],
                                             ["Kirghiz", :ky],
                                             ["Kirundi (Rundi)", :rn],
                                             ["Korean", :ko],
                                             ["Kurdish", :ku],
                                             ["Laothian", :lo],
                                             ["Latin", :la],
                                             ["Latvian (Lettish)", :lv],
                                             ["Limburgish ( Limburger)", :li],
                                             ["Lingala", :ln],
                                             ["Lithuanian", :lt],
                                             ["Luxembourgish", :lb],
                                             ["Macedonian", :mk],
                                             ["Malagasy", :mg],
                                             ["Malay", :ms],
                                             ["Malayalam", :ml],
                                             ["Maltese", :mt],
                                             ["Maori", :mi],
                                             ["Marathi", :mr],
                                             ["Moldavian", :mo],
                                             ["Mongolian", :mn],
                                             ["Nauru", :na],
                                             ["Nepali", :ne],
                                             ["Norwegian", :no],
                                             ["Bokmål", :nb],
                                             ["Occitan", :oc],
                                             ["Oriya", :or],
                                             ["Oromo (Afan, Galla)", :om],
                                             ["Pashto (Pushto)", :ps],
                                             ["Polish", :pl],
                                             ["Portuguese", :pt],
                                             ["Punjabi", :pa],
                                             ["Quechua", :qu],
                                             ["Rhaeto-Romance", :rm],
                                             ["Romanian", :ro],
                                             ["Russian", :ru],
                                             ["Samoan", :sm],
                                             ["Sangro", :sg],
                                             ["Sanskrit", :sa],
                                             ["Serbian", :sr],
                                             ["Serbo-Croatian", :sh],
                                             ["Sesotho", :st],
                                             ["Setswana", :tn],
                                             ["Shona", :sn],
                                             ["Sindhi", :sd],
                                             ["Sinhalese", :si],
                                             ["Siswati", :ss],
                                             ["Slovak", :sk],
                                             ["Slovenian", :sl],
                                             ["Somali", :so],
                                             ["Spanish", :es],
                                             ["Sundanese", :su],
                                             ["Swahili (Kiswahili)", :sw],
                                             ["Swedish", :sv],
                                             ["Tagalog", :tl],
                                             ["Tajik", :tg],
                                             ["Tamil", :ta],
                                             ["Tatar", :tt],
                                             ["Telugu", :te],
                                             ["Thai", :th],
                                             ["Tibetan", :bo],
                                             ["Tigrinya", :ti],
                                             ["Tonga", :to],
                                             ["Tsonga", :ts],
                                             ["Turkish", :tr],
                                             ["Turkmen", :tk],
                                             ["Twi", :tw],
                                             ["Uighur", :ug],
                                             ["Ukrainian", :uk],
                                             ["Urdu", :ur],
                                             ["Uzbek", :uz],
                                             ["Vietnamese", :vi],
                                             ["Volapük", :vo],
                                             ["Welsh", :cy],
                                             ["Wolof", :wo],
                                             ["Xhosa", :xh],
                                             ["Yiddish", :yi],
                                             ["Yoruba", :yo],
                                             ["Zulu", :zu]]
                                         )
    end
  end

  describe '#grouped_select_language' do
    it 'returns the language name' do
      expect(subject.grouped_select_language).to eq({
                                                      "Available" => [["Akan", :ak], ["Igbo", :ig], ["Abkhazian", :ab], ["Afar", :aa], ["Afrikaans", :af], ["Albanian", :sq], ["Amharic", :am], ["Arabic", :ar], ["Armenian", :hy], ["Assamese", :as], ["Aymara", :ay], ["Azerbaijani", :az], ["Bashkir", :ba], ["Basque", :eu], ["Bengali (Bangla)", :bn], ["Bhutani", :dz], ["Bihari", :bh], ["Bislama", :bi], ["Breton", :br], ["Bulgarian", :bg], ["Burmese", :my], ["Bambara", :bm], ["Byelorussian (Belarusian)", :be], ["Cambodian", :km], ["Catalan", :ca], ["Chinese", :cn], ["Chinese (Traditional)", :zh], ["Corsican", :co], ["Croatian", :hr], ["Czech", :cs], ["Danish", :da], ["Dutch", :nl], ["English", :en], ["Esperanto", :eo], ["Estonian", :et], ["Faeroese", :fo], ["Farsi", :fa], ["Fiji", :fj], ["Finnish", :fi], ["French", :fr], ["Frisian", :fy], ["Galician", :gl], ["Gaelic (Scottish)", :gd], ["Gaelic (Manx)", :gv], ["Georgian", :ka], ["German", :de], ["Greek", :el], ["Greenlandic", :kl], ["Guarani", :gn], ["Gujarati", :gu], ["Hausa", :ha], ["Hebrew", :he], ["Hindi", :hi], ["Hungarian", :hu], ["Icelandic", :is], ["Indonesian", :id], ["Interlingua", :ia], ["Interlingue", :ie], ["Inuktitut", :iu], ["Inupiak", :ik], ["Irish", :ga], ["Italian", :it], ["Javanese", :ja], ["Kannada", :kn], ["Kashmiri", :ks], ["Kazakh", :kk], ["Kinyarwanda (Ruanda)", :rw], ["Kirghiz", :ky], ["Kirundi (Rundi)", :rn], ["Korean", :ko], ["Kurdish", :ku], ["Laothian", :lo], ["Latin", :la], ["Latvian (Lettish)", :lv], ["Limburgish ( Limburger)", :li], ["Lingala", :ln], ["Lithuanian", :lt], ["Luxembourgish", :lb], ["Macedonian", :mk], ["Malagasy", :mg], ["Malay", :ms], ["Malayalam", :ml], ["Maltese", :mt], ["Maori", :mi], ["Marathi", :mr], ["Moldavian", :mo], ["Mongolian", :mn], ["Nauru", :na], ["Nepali", :ne], ["Norwegian", :no], ["Bokmål", :nb], ["Occitan", :oc], ["Oriya", :or], ["Oromo (Afan, Galla)", :om], ["Pashto (Pushto)", :ps], ["Polish", :pl], ["Portuguese", :pt], ["Punjabi", :pa], ["Quechua", :qu], ["Rhaeto-Romance", :rm], ["Romanian", :ro], ["Russian", :ru], ["Samoan", :sm], ["Sangro", :sg], ["Sanskrit", :sa], ["Serbian", :sr], ["Serbo-Croatian", :sh], ["Sesotho", :st], ["Setswana", :tn], ["Shona", :sn], ["Sindhi", :sd], ["Sinhalese", :si], ["Siswati", :ss], ["Slovak", :sk], ["Slovenian", :sl], ["Somali", :so], ["Spanish", :es], ["Sundanese", :su], ["Swahili (Kiswahili)", :sw], ["Swedish", :sv], ["Tagalog", :tl], ["Tajik", :tg], ["Tamil", :ta], ["Tatar", :tt], ["Telugu", :te], ["Thai", :th], ["Tibetan", :bo], ["Tigrinya", :ti], ["Tonga", :to], ["Tsonga", :ts], ["Turkish", :tr], ["Turkmen", :tk], ["Twi", :tw], ["Uighur", :ug], ["Ukrainian", :uk], ["Urdu", :ur], ["Uzbek", :uz], ["Vietnamese", :vi], ["Volapük", :vo], ["Welsh", :cy], ["Wolof", :wo], ["Xhosa", :xh], ["Yiddish", :yi], ["Yoruba", :yo], ["Zulu", :zu]],
                                                      "Popular" => [["English", :en], ["Spanish", :es]]
                                                    })
    end
  end
end
