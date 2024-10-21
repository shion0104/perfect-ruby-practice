proc_obj = Proc.new { |a| a }

proc_obj.call("こんにちは")

def proc_factory
    Proc.new
end

block_proc = proc_factory{ 'method block' }
p block_proc.call