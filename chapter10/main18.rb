# メソッドが削除されたら処理をする実装

class MethodRemovedClass
    def first_method; end
    def second_method; end
    def third_method; end
    def forth_method; end

    class << self
        private 
        def method_removed(method_name)
            puts "method removed: #{method_name}"
        end
    end
end

class MethodRemovedClass
    remove_method :second_method, :third_method
end

# メソッドが未定義にされたら発火する処理

class MethodUndefinedClass
    def first_method; end
    def second_method; end
    def third_method; end
    def forth_method; end

    class << self
        private
        def method_defined(method_name)
            puts "method undefined: #{method_name}"
        end
    end
end

class MethodUndefinedClass
    undef_method :second_method, :third_method
end

