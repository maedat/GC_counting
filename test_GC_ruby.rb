#!/usr/bin/env ruby
require 'bio'

# フラットファイルを読み込み、FastaFormat オブジェクトのリストにする

ff = Bio::FlatFile.open(Bio::FastaFormat, "/Users/maedat/Desktop/contigs.fa")

# entryを一つづつ読み込む
ff.each do |entry|
print entry.definition
print "\t"
seq = Bio::Sequence::NA.new(entry.naseq)
p seq.gc_percent

end