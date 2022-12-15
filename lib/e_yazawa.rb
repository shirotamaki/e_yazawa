# frozen_string_literal: true

require_relative "e_yazawa/version"
require "tty-prompt"
require_relative "./database"

module EYazawa
  class Error < StandardError; end

  def self.advise
    prompt = TTY::Prompt.new
    your_name = prompt.ask("ホワット ユア ネーム？")
    choices = Message.advise(your_name)
    question = "YAZAWAにアスクしたいことをセレクト！"
    answer = prompt.select(question, choices)
    puts answer
  end
end
