# クラスについて調べる

class ClassVariables
    @@class_variable = :class_variable

    def define_lazy_class_variable
        @@lazy_class_variable = :lazy_class_variable
    end
end

# Module#class_variablesメソッドを使用する
ClassVariables.class_variables

ClassVariables.new.define_lazy_class_variable
ClassVariables.class_variables

# クラスに対して、あるクラス変数が定義されているかを直接問い合わせる場合は、Module#class_variable_define?メソッドを使用する
ClassVariables.class_variable_defined? '@@class_variable'
ClassVariables.class_variable_defined? '@@undefined_class_variable'

# クラス変数の取得
ClassVariables.class_variable_get '@@class_variable'

# ClassVariables.class_variable_get '@@foo' 存在しないクラス変数はエラーになる

# クラス変数に値を設定する
ClassVariables.class_variable_set '@@class_variable', :class_variable_set

ClassVariables.class_variable_get '@@class_variable'
