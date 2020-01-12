require './directory'
require './file'
require './list_visitor'

puts 'Making root entries ...'

rootdir = Directory.new('root')
bindir = Directory.new('bin')
tmpdir = Directory.new('tmp')
usrdir = Directory.new('usr')

rootdir.add(bindir)
rootdir.add(tmpdir)
rootdir.add(usrdir)

bindir.add(FileClass.new('vi', 10000))
bindir.add(FileClass.new('latex', 20000))
rootdir.accept(ListVisitor.new)

puts 'Making user entries ...'
hiraki = Directory.new('hiraki')
nori = Directory.new('nori')

usrdir.add(hiraki)
usrdir.add(nori)

hiraki.add(FileClass.new('diary.html', 100))
nori.add(FileClass.new('memo.html', 200))

rootdir.accept(ListVisitor.new)
