# クラスないに定義されている名前を確認する
module IncludeModule
    MODULE_CONST_VAR = 1
end

class ConstantsClass
    include IncludeModule

    CLASS_CONST_VAR =1

    class InnerClass
        INNER_CLASS_VAR =1
    end
end

# クラスないに定義されている定数名を取得するには、Module#constansメソッドを使用する
# メソッドの戻り値は定数名をシンボルにした配列が返ってくる
ConstantsClass.constants

ConstantsClass.constants(false)

ConstantsClass::InnerClass.constants



# 定数の値を取得する
# クラス内に定義されている定数の値を取得するには、Module#const_getメソッドを使する

class HasConstans
    CONST_VARIABLE = 1
end

HasConstans.const_get :CONST_VARIABLE

# クラスに新たな定数を設定する
# クラスに新たに定数を定義したい場合は、Module#const_setメソッドを使用する

class BlankClass
end

BlankClass.constants

BlankClass.const_set :CONST_VAR, 1

BlankClass.constants

BlankClass.const_get :CONST_VAR

# 定数を再定義する
BlankClass.const_set :CONST_VAR, 2

BlankClass.constants

BlankClass.const_get :CONST_VAR
