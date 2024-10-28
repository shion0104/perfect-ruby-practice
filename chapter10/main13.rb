# Bindingに含まれる変数について調べる

class BindingCreator
    def create_binding
        a = 1
        binding
    end
end

creator = BindingCreator.new
binding_object = creator.create_binding

binding_object.receiver
creator == binding_object.receiver

binding_object.local_variables

# Bindingオブジェクトに指定した変数が存在するかを確認
binding_object.local_variable_defined?(:a)
binding_object.local_variable_defined?(:b)

# bindingオブジェクトに変数を設定
binding_object.local_variable_set(:b, 2)
binding_object.local_variables
binding_object.local_variable_get(:b)
