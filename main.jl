using Persa
using CSV
using DataFrames
using MLBase: labelencode, labelmap

const defdir = joinpath(dirname(@__FILE__), "datasets")

function MovieLens()
	data = "$(defdir)/ml-100k/u.data"
	item = "$(defdir)/ml-100k/u.item"

	file = CSV.read(filename, delim = '	',
	                      header = [:user, :item],
	                      allowmissing = :none)

  file = CSV.read(filename, delim = '	',
                     header = [:user, :item],
                     allowmissing = :none)

	return file
end

file = MovieLens()


data = "$(defdir)/ml-100k/u.data"
item = "$(defdir)/ml-100k/u.item"

file = CSV.read(data, delim = '	', header = [:user, :item,:timestamp, :bla], allowmissing = :none)

file = CSV.validate(item, header = [ :movie_id :movie_title,:release_date, :video_release_date,
								:url, :unknown, :Action, :Adventure , :Animation, :Children_Comedy ,
								:Crime ,:Documentary ,:Drama ,:Fantasy ,:Film_Noir, :Horror, :Musical,
								:Mystery, :Romance, :SciFi, :Thriller,:War, :Western] , delim = '|')

print(file[1,3])
