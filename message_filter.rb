# -*- coding:utf-8 -*-

class MessageFilter
  attr_reader :words
  def initialize(*words)
    @words = *words
  end
  
  def detect?(str)
    flg = false
    @words.each do |word|
      flg = str.include? word
      break if flg == true
    end
    flg
  end
  
end

