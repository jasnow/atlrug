module A::B
  def doit
    puts "In Module A::B"
  end
  module_function :doit
end

module A
  autoload(::B, "module_b")

A::B.doit # autoloads "module_b" => "In Module A::B"
