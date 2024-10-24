# オブジェクトにメソッドが定義されているかを確認する
# Object#respond_to?メソッドを使うとオブジェクトに指定したメソッドが定義されているかを確認できる

class HaveMethod
    def has_method
        'has_method'
    end
end

class NotHaveMethod; end

have_method = HaveMethod.new
not_have_method = NotHaveMethod.new

have_method.respond_to? :has_method
not_have_method.respond_to? :has_method

# privateメソッドの確認
class HasPrivateMethod
    private
    def private_method
        'private_method'
    end
end

has_private_method = HasPrivateMethod.new

has_private_method.respond_to? :private_method

# 第二引数をtrueにするとプライベートメソッドに指定したメソッドが定義されているか確認できる
p has_private_method.respond_to? :private_method, true

