# require modules here
require "yaml"

def load_library(yml_file)
  YAML.load_file(yml_file)
end

def get_japanese_emoticon(yml_file, en_emote)
  emote_library = load_library(yml_file)
  emote_library.each
end

def get_english_meaning
  # code goes here
end