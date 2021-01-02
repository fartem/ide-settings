#!/usr/bin/ruby

vundle_const = '[DIR_VUNDLE]'
bundle_const = '[DIR_BUNDLE]'
backup_const = '[DIR_BACKUP]'

vundle_dir = ARGV[0]
bundle_dir = ARGV[1]
backup_dir = ARGV[2]
output_file = ARGV[3]

vimrc_template = File.read('./vimrc_template')
specified_vimrc = vimrc_template
  .gsub(vundle_const, vundle_dir)
  .gsub(bundle_const, bundle_dir)
  .gsub(backup_const, backup_dir)

File.open(output_file, 'w') do |file|
  file.write(specified_vimrc)
end
