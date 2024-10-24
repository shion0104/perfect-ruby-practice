# Object#sendメソッドを使うと任意のメソッドを実行できる

class Hello
    def hi
        'hi'
    end

    def hello(name)
        "hello #{name}"
    end
end

hello = Hello.new
hello.send :hi
hello.send :hello, "中澤"

class Hello

    protected
    def protected_hello
        "protected_hello"
    end

    private
    def pribate_hello
        "private_hello"
    end
end

hello = Hello.new

#アクセスできないのでエラーになる
# hello.protected_hello 

hello.send :protected_hello

#アクセスできないのでエラーになる
# hello.private_hello

p hello.__send__ :pribate_hello



