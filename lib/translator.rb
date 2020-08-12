# require modules here
require "yaml"

def load_library(yml_file)
  emoticon_hash = YAML.load_file(yml_file)
  emoticon_hash
end

def get_japanese_emoticon(yml_file, jp_emote)
  # code goes here
end

def get_english_meaning
  # code goes here
end