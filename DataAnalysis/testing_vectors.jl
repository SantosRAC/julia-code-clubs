using DataFrames, CSV

cd(raw"/home/santosrac/Repositories/julia-code-clubs-ufabc/DataAnalysis")
genome_info = DataFrame(CSV.File("genome_information.csv"))
print(genome_info.Strain_Cultivar)

#print(typeof(genome_info.Species))
#print(typeof(convert(Array{String}, genome_info.Species)))