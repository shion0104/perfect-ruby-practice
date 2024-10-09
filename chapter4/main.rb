# クラスの継承

class Parent
    def greet
        puts 'Hi'
    end
end

# Childがサブクラス。Parentがスーパークラス

class Child < Parent
end

Child.superclass
child = Child.new
p child.greet

# インスタンス変数は@fooは継承されないけど、インスタンスメソッドの中で定義されているものについてはスーパークラスと同じ名前のインスタンス変数が定義される
class Parent
    @foo
    def initialize
        @ivar = 'content'
    end
end

class child < Parent
end

Parent.new
Child.new

