#!/usr/bin/ruby

File.open('./extensions.txt', 'r') do |f|
  f.each_line do |plugin|
    `code --install-extension #{plugin.strip!}`
  end
end

