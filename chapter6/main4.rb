class Klass; end

klass = Klass.new

# 特異クラスが存在しない場合は呼び出されたタイミングで作られる
klass.singleton_class

KLASS_OBJECT  = klass
p class << klass; self; end == KLASS_OBJECT.singleton_class
