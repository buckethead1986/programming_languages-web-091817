require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each {|oo_or_functional, language_name_list|
    language_name_list.each {|language_name, data|
      data.each {|type_key, type_value|
        if new_hash.include?(language_name)
          new_hash[language_name][:style] << oo_or_functional #duplicate language names just need :oo/functional added to :style array. else, make a new one.
        else
        new_hash[language_name] = {type_key => type_value, :style => [oo_or_functional]} #using collect does not store the language_name symbol in the collected array. interesting.
      end
      }
    }
  }
  new_hash
end
