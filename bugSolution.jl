```julia
function myfunction_stable(x::Int64)
  if x > 0
    return x^2
  else
    return -x^2
  end
 end

println(myfunction_stable(2)) # Output: 4
println(myfunction_stable(-2)) # Output: -4

#This will still throw an error, as intended
#println(myfunction_stable(2.5)) 

#Handle potential type errors gracefully
function myfunction_stable_robust(x)
  try
    x_int = convert(Int64,x)
    if x_int > 0
      return x_int^2
    else
      return -x_int^2
    end
  catch e
    println("Error: ",e)
    return NaN
  end
end

println(myfunction_stable_robust(2))
println(myfunction_stable_robust(-2))
println(myfunction_stable_robust(2.5)) #Output: 4, -4, and will not throw error
```