class Application

  def call(env)
    resp = Rack::Response.new

   num_1 = Kernel.rand(1..20)
   num_2 = Kernel.rand(1..20)
   num_3 = Kernel.rand(1..20)

   if num_1==num_2 && num_2==num_3
     resp.write "You Win"  ##the write method is like a puts statement
    ## Web servers are just big ruby apps that respond to the user in an HTTP
    ### response rather than via puts statements
   else
     resp.write "You Lose"
   end
    resp.finish
  end

end
