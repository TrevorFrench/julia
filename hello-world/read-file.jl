# RESOURCES
# CSV: https://towardsdatascience.com/read-csv-to-data-frame-in-julia-programming-lang-77f3d0081c14

# COMMAND LINE:
# >> julia
# julia> import Pkg; Pkg.add("CSV"); Pkg.add("DataFrames")

# DEPENDENCIES
using CSV
using DataFrames

# READ CSV FILE
# DEFAULTS: CSV.File(path; header=1, delim=",")
csv_input = CSV.File("files/input.csv")
println(typeof(csv_input))
for row in csv_input
    println(typeof(row))
    println("values: $(row.a), $(row.b), $(row.c)")
end
df = DataFrame(CSV.File("files/input.csv"))
print(df)
df = CSV.File("files/input.csv") |> DataFrame
print(df)
df = CSV.read("files/input.csv", DataFrame)
print(df)