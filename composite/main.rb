require './directory'
require './file'

puts 'making root entires'

rootdir = Directory.new('root')
bindir = Directory.new('bin')
tmpdir = Directory.new('tmp')
usrdir = Directory.new('usr')

rootdir.add(bindir)
rootdir.add(tmpdir)
rootdir.add(usrdir)

bindir.add(FileClass.new('vi', 10000))
bindir.add(FileClass.new('latex', 20000))

rootdir.print_list

puts ''
puts 'makeing user entries'

nori = Directory.new('nori')
hiraki = Directory.new('hiraki')

usrdir.add(nori)
usrdir.add(hiraki)

nori.add(FileClass.new('diary.html', 100))
nori.add(FileClass.new('composite.rb', 200))
hiraki.add(FileClass.new('ruby.doc', 300))

usrdir.print_list