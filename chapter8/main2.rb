class OriginalClass
    def hello
        'hello'
    end
end

class OverrideClass < OriginalClass
    def hello 
        'hello hello'
    end
end
    
hello_method = OverrideClass.new.method(:hello)

hello_method
hello_method.call

hello_method.super_method.call