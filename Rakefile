require 'rake'
require 'erb'

dotfiles = Dir.glob('*/**{.symlink}')

desc 'Bootstrap a new Mac with dotfiles'
task :install do
  Rake::Task['dotfiles'].invoke
end

desc 'Creates symlinks in ~'
task :dotfiles do
  dotfiles.each do |file|
    filename = file.split('/').last.split('.').first
    target = "#{ENV["HOME"]}/.#{filename}"

    if File.exists?(target) || File.symlink?(target)
      puts "~/.#{filename} already exists! Do you want to [o]verwrite or [s]kip this file?"

      case STDIN.gets.chomp
        when 'o'
          system "rm -rf #{target}"
          link_file(file, filename, target)
        else
          puts "Skipping ~/.#{filename}"
      end
    else
      link_file(file, filename, target)
    end
  end
end

def link_file(file, filename, target)
  if file =~ /.erb.symlink$/
    puts "Generating ~/.#{filename}..."

    File.open(target, 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "Linking ~/.#{filename}"
    system "ln -fs $PWD/#{file} #{target}"
  end
end