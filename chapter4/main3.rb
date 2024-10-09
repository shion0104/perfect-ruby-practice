class Parent
    def greet
        puts 'Hi'
    end
end

class Child < Parent
    def greet(name)
        puts "Hi #{name}"
    end
end

parent = Parent.new
parent.greet

child = Child.new
child.greet('ruby')

class GrandChild < Child
    def greet(name)
        super

        puts "Nice to meet you!"
    end
end

grandchild = GrandChild.new
grandchild.greet'ruby'
# superでchildChildクラスのgreetが発火し、その後にputs "Nice to meet you!"が出力される
