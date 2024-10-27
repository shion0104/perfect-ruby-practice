# クラスやモジュールからインスタンスメソッドを未定義にする
# Module#undef_methodと言うメソッドを用いる

class SuperClass 
    def super_method 
        :super_method
    end
end

class InheriteClass < SuperClass
    def super_method
        :inherite
    end
end

InheriteClass.new.super_method

class InheriteClass
    undef_method :super_method
end

# InheriteClass.new.super_method 未定義のためエラーになる