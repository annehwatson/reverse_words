def reverse_words(sentence)
  return nil if sentence == nil || sentence.length == 0

  word_start = 0
  word_end = 0
  i = 0

  while i < sentence.length - 1

    until sentence[i] != " "
      word_start += 1
      i += 1
    end

    i = word_start
    word_end = word_start

    until sentence[i] == " " || i == sentence.length
      word_end += 1
      i += 1
    end

    sentence[word_start...word_end] = string_reverse(sentence[word_start...word_end])

    word_start = word_end
    i = word_end
  end
  return sentence
end

def string_reverse(my_string)
  return my_string if my_string.length == 1

  idx_alpha = 0
  idx_beta = my_string.length - 1

  while idx_alpha < idx_beta
    temp = my_string[idx_alpha]
    my_string[idx_alpha] = my_string[idx_beta]
    my_string[idx_beta] = temp
    idx_alpha += 1
    idx_beta -= 1
  end
  return my_string
end
