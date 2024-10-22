# Procオブジェクトの復習
double = Proc.new{ |x| x * 2}
double.(1)

# Meshodオブジェクトの取得
array = [1,2,3,4,5]
array_shift = array.method(:shift)
array_shift.call
array

# 引数の数
# 引数の数を知りたい場合はMethod#arityを使用する

class Arity
    def arity_0; end
    def arity_1(x); end
    def arity_2(x, y); end
end

arity_obj = Arity.new
arity_obj.method(:arity_0).arity
arity_obj.method(:arity_1).arity
arity_obj.method(:arity_2).arity

# 引数の情報
# Method#parametersを使うと、Meehodオブジェクトが保持している情報を配列で取得できる
# :req 必須の引数
# :opt デフォルト値が指定されている引数
# :rest 引数宣言時に*がつけられた可変町引数
# :block 引数宣言時に&で指定されたブロック引数

class MethodParameter
    def arity0(); end
    def arity1(x); end
    def arity1_and_default_val(x = 1); end
    def arity1_and_valiable_arg(x, *y); end
    def arity1_and_block_arg(x, &y); end
end

method_params = MethodParameter.new

method_params.method(:arity0).parameters
method_params.method(:arity1).parameters
method_params.method(:arity1_and_default_val).parameters
method_params.method(:arity1_and_valiable_arg).parameters
method_params.method(:arity1_and_block_arg).parameters

# Mthodオブジェクトから取得できるメソッド
# Method#owber　   メソッドの定義されたクラス、モジュール
# Method#name　    Methodオブジェクトが作られらメソッド名
# Method#receiver  Methodオブジェクトから作られたインスタンス

class MethodInfo
    def sample_method; end
end

obj = MethodInfo.new
sample_method = obj.method(:sample_method)

sample_method.owner

sample_method.name

sample_method.receiver
    


