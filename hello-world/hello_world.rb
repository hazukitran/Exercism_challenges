class HelloWorld
  def self.hello(name = "")
    return "Hello, World!" if name == ""
    "Hello, #{name}!"
  end
end