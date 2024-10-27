# クラスに定義されたクラスメソッドを調べる
# クラスメソッドを調べたい場合は、、調べたいクラスやモジュールに対してObject#methodsを呼び出すことで実現できる

class ChildClass
    class << self
        def class_method
        end
    end

    def instance_method
    end
end

ChildClass.methods
# [:class_method, :allocate, :superclass, .....

ChildClass.methods(false)
# [:class_method]