# オブジェクトの変更を禁止
o = Object.new

o.freeze
o.frozen?

# オブジェクトのコピー
original = Object.new

original.object_id
original.freeze

copy_dup = original.dup
copy_dup.object_id
copy_dup.frozen?    # frozenはコピーされない

copy_clone = original.clone
copy_clone.object_id
copy_clone.frozen? # frozenもコピーされる

value = 'foo'
array = [value]

array_dup = array.dup
array_clone = array.clone

p value.object_id
p array_dup[0].object_id