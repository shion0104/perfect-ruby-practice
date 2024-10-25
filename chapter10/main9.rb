# クラスのネスト構造を調べる
# Mdule.nestingを使用すると、そのコンテキストのモジュールやクラスのネスト構造を知ることができる

Module.nesting #[]

module OutsideModule
    Module.nesting # [OutsideModule]
    class InnerClass
        Module.nesting # [OutsideModule::InnerClass, OutsideModule]
        class InnerClass
        Module.nesting # [OutsideModule::InnerClass::InnerClass, OutsideModule::InnerClass, OutsideModule]
        end
    end
end

class OutsideModule::InnerClass
    Module.nesting # [OutsideModule::InnerClass]
end

# class_evalのコンテキスト￥ではModule.nestingは空になる
OutsideModule::InnerClass.class_eval do
    Module.nesting　    # []
end

