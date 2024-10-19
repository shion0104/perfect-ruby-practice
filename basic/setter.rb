=begin
セッターは、インスタンス変数に値を設定するためのメソッド。
属性名に=をつけたメソッド名で定義する。
セッターは値の代入を安全に行い、外部からの不正なアクセスを防ぐ役割も果たす。
=end

class Person
    def name=(value)
      @name = value
    end
  end
  
  person = Person.new
  person.name = "Alice"  # => ここでname=セッターメソッドが呼ばれる