dict1 = Dict{String, Integer}("Renato"   => 2,
    "Ana"       => 3)

push!(dict1, =>("Joao",5))
dict1["Lara"] = 10

print(dict1, "\n")
print(dict1["Lara"], "\n")