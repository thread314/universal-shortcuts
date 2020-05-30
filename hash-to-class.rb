require 'ostruct'

shorthash1 = { "first" => { "alpha" => "here", "beta" => "there" }, "second" => 2 }
shorthash2 = { "foo" => { "alpha" => "here", "beta" => "there" }, "bar" => 2 }

obj = OpenStruct.new
shorthash2.each { |k,v| obj.public_send("#{k}=", v) }
shorthash1.each { |k,v| obj.public_send("#{k}=", v) }
#obj = App.new
#shorthash.each { |k,v| obj.public_send("#{k}=", v) }

obj.first = "pop"

