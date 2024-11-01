# setライブラリ
# 重複を取り除きたいとき・集合演算をしたいときなどに使われる

require 'set'

set = Set.new([1, 2, 2, 3, 4, 4, 5])

# setオブジェクトの生成
set = Set.new

# setの追加と削除
set.add(1)
set.add(2)
set.delete(1)

# 配列の重複を取り除く
array = [1, 2, 3, 4, 4, 5]
unique_array = Set.new(array).to_a

# unique_array => [1, 2, 3, 4, 5] 重複が取り除かれている

