=begin
クラスの中にクラスを定義する
ネストしたクラスを参照するには::演算子を使う
=end

class Hoge
    class Foo
        p 'aa'
    end
end

# 上記と同義
class Hoge::Foo
end

p Hoge::Foo