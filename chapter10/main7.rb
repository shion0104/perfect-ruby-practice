# クラスが持つメソッドを調べる

class ParentClass
    def super_public_method; end

    private
    def super_private_method; end

    protected
    def super_protected_method; end
end

class ChildClass < ParentClass
    def piblic_method; end

    private
    def private_method; end

    protected
    def protected_method; end
end

# クラスに定義されているインスタンスでのプライベートメソッド以外
ChildClass.instance_methods

# クラスに定義されているインスタンスでのパブリックメソッド
ChildClass.public_instance_methods

# クラスに定義されているインスタンスでのプライベートメソッド
ChildClass.private_instance_methods

# クラスに定義されているクラスでのプロテクテッドメソッド
ChildClass.protected_instance_methods


#　メソッドがあるか真偽値で確認する
# 指定されたメソッド名がプライベートメソッド以外に定義されていればtrueを返す
ChildClass.method_defined? :public_method

# 指定されたメソッド名がパブリックメソッド以外に定義されていればtrueを返す
ChildClass.public_method_defined? :public_method

# 指定されたメソッド名がプライベートメソッドとして定義されていればtrueを返す
ChildClass.private_method_defined? :private_method

# 指定されたメソッド名がパブリックメソッドとしてに定義されていればtrueを返す
ChildClass.protected_method_defined? :protected_method