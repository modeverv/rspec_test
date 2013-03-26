# -*- coding:utf-8 -*-

class MessageFilter
  attr_reader :ng_words

  def initialize(*words)
    @ng_words = *words
  end
  
  def detect?(str)
    @ng_words.any?{ |word| str.include? word }
  end
  
end

