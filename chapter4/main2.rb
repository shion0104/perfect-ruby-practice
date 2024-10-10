class Parent
    PARENT = 'constant in parent'
end

class Child < Parent
end

Child.constants
Child::PARENT

class GrandChild < Child
    PARENT = 'constant in grand child'
end

GrandChild::PARENT

# "constant in grand child"が出力される
# サブクラスの値が出力されるようになり、スーパークラスの定数は参照されなくなる