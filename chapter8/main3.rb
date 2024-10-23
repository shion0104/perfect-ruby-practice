# UnboundMethodクラスについて
# メソッドの処理のみをレシーバとして扱いたいときに使う。

# Module#instance_methodを使う
Array.instance_method(:shift)

# Method#unbindを使う
[].method(:shift).unbind

# Methodクラスと同様に以下のメソッドが使用できる
# Method#owber　   メソッドの定義されたクラス、モジュール
# Method#name　    Methodオブジェクトが作られらメソッド名

obj_array = Array.instance_method(:shift)
obj_array.name
obj_array.owner

# UnboundMethodオブジェクトはcallを呼び出すことだけで実行できない。
# UnboundMeshodオブジェクトが保持する手続きを実行するには、UnboundMethod#bindを使って、Methodオブジェクトを生成する必要がある。
# UnboundMethod#bindは、UnboundMethodが保持する処理のレシーバとなるオブジェクトを引数として指定する。

unbind_shift = [].method(:shift).unbind
unbind_shift.bind([1,2,3])
unbind_shift.bind([1,2,3]).call
