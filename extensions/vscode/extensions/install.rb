::File.open('./extensions.txt', 'r') do |file|
  file.each_line do |plugin|
    `code --install-extension #{plugin.strip!}`
  end
end
