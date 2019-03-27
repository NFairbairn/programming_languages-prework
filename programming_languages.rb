require 'pry'

def reformat_languages(languages)
new_hash = {}
  languages.each do |lang_type, value|
    value.each do |language, type_and_value|
      type_and_value.each do |type, type_value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
          new_hash[language] = {type: type_value}
          new_hash[language][:style] ||= []
          new_hash[language][:style] << lang_type

      end
    end
  end
  new_hash
end
