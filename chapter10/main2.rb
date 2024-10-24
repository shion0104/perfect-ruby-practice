class ParentClass
    def super_public_method; end

    private
    def super_private_method; end

    protected
    def super_protected_method; end
end

class ChildClass < ParentClass
    def public_method; end

    private
    def private_method; end

    protected
    def protected_method; end
end

child = ChildClass.new

def child.singleton_method; end

# プライベートメソッド以外のメソッドを取得する
child.methods

# オブジェクトの持つパブリックメソッドを取得する
child.public_methods

# オブジェクトの持つプライベートメソッドを取得する
child.private_methods

# オブジェクトの持つプロテクテッドメソッドを取得する
child.protected_methods

# オブジェクトの持つ特異メソッドを取得する
child.singleton_methods