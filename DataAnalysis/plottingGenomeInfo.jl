#!/home/santosrac/Software/julia-1.7.1/bin/julia

using DataFrames
using CSV
#=
#Checking if Plots is installed
"Plots" ∈ keys(Pkg.project().dependencies)
#Installing a package (e.g., Plots)
Pkg.add("Plots")
using Plots
=#
using PlotlyJS

# Setting the path to working dir
cd(raw"/home/santosrac/Repositories/julia-code-clubs-ufabc/DataAnalysis")
print(pwd(),"\n")

# Importing csv file and creating a dataframe
genome_info = DataFrame(CSV.File("genome_information.csv"))

#=
# Recover
print(nrow(genome_size),"\n")
print(ncol(genome_size),"\n")
print(size(genome_size),"\n")

# Recover first three and last three lines in dataframe
print(first(genome_size, 3),"\n")
print(last(genome_size, 3),"\n")

# Recover
print(eltype.(eachcol(genome_size)),"\n")

# Printing column names
print(names(genome_size),"\n")
# Checking if column name exists
print("Genome_size" in names(genome_size),"\n")
#
findall(names(genome_size) .== "Genome_size","\n")

# Different ways to extract information from dataframe
print(genome_size[:, 1],"\n")
print(genome_size[:, begin],"\n")
print(genome_size[:, end],"\n")
print(genome_size[:, "Genome_size"],"\n")
print(genome_size.Genome_size,"\n")
print(genome_size."Genome_size","\n")
print(genome_size[:, "Genome_size"],"\n")
=#

# Plotting genome size information
genome_data = bar(; y=genome_info.Genome_size, x=genome_info.Strain_Cultivar)
plot_genome_sizes = plot(genome_data)
savefig(plot_genome_sizes, "genome_sizes_all_strains.png")



