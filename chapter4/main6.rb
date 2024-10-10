# クラスメソッドとインスタンスメソッドの違いがわからなかったので記述
# クラス自体の情報についてはクラスメソッドでインスタンスメソッドは各インスタンスごとの操作や振る舞いを定義する

class Person
    def greet
      "Hello from the class!"
    end

    p self
  end
  
  s = Person.new 
  p s.greet