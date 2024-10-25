# クラスの継承構造を調べる

# クラスやモジュールの継承や、インクルードしているクラスやもじゅーるについて知りたい場合は、Module#ancestorsメソッドを使用する

module IncludeModule
end

class GrandParentClass
end

class ParentClass < GrandParentClass
    include IncludeModule
end

class ChildClass < ParentClass
end

ChildClass.ancestors
# [ChildClass, ParentClass, IncludeModule, GrandParentClass, Object, Kernel, BasicObject]

# モジュールだけを取得
ChildClass.included_modules
# [IncludeModule, Kernel]

ChildClass.superclass
# ParentClass