=begin
ゲッターは、オブジェクトのインスタンス変数の値を取得するためのメソッド。
Rubyでは単に属性名と同じメソッド名でゲッターを定義することが一般的。
=end


class Person
    def name
      @name
    end
  end
  
  person = Person.new
  person.name # => ここでnameゲッターメソッドが呼ばれる