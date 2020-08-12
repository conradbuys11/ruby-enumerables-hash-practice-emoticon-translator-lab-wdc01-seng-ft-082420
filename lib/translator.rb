# require modules here
require "yaml"

def load_library(yml_file)
  YAML.load_file(yml_file)
end

def get_japanese_emoticon(yml_file, en_emote)
  
  #keep in mind, for each emotion key, the english emote is index 0 of its array, and the japanese emote is index 1 of its array
  
  load_library(yml_file).each do |emotion, emotes|
    
    if emotes.any?(en_emote)
      return emotes[1]
    end
    
  end
end

def get_english_meaning(yml_file, jp_emote)
  #this is basically the same as get_japanese_emoticon but instead of returning the other emote, we're gonna return the name of the category
  
  load_library(yml_file).each do |emotion, emotes|
    if emotes.any?(jp_emote)
      return emotion.to_s
  end
  
end