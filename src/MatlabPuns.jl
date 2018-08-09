module MatlabPuns

using LinearAlgebra

export 
	goodbeye,
	dimsum,
	linspacedout,
	flippingoutdim,
	whyohwhyg,
	dimsum,
	maximom,
	meanymom,
	cattleprod,
	allyall,
	anyone,
	bueller,
	fiendmax,
	fiendmin,
	xstreema,
	rapmeducedim,
	reduecedim,
	mapizzaslices,
	bort,
	accumulatte,
	crumbsum,
	crumpetprod,
	flipoutdim,
	sneeze,
	duff,
	snowflake

# eye
goodbeye(m::Integer) = Matrix{Float64}(I, m, m)
goodbeye(::Type{T}, m::Integer) where T = Matrix{T}(I, m, m)
goodbeye(m::Integer, n::Integer) = Matrix{Float64}(I, m, n)
goodbeye(::Type{T}, m::Integer, n::Integer) where T = Matrix{T}(I, m, n)
goodbeye(A::AbstractMatrix{T}) where T = Matrix(one(T)I, size(A))
goodbeye(::Type{Diagonal{T}}, n::Int) where T = Diagonal{T}(I, n)

# linspace
linspacedout(start, stop) = range(start, stop=stop, length=50)
linspacedout(start, stop, length::Integer) = range(start, stop=stop, length=length)
linspacedout(start, stop, length::Real) = range(start, stop=stop, length=Int(length))

# eig
whyohwhyg = eigen
    
# <reduction>(A, dims=dims)
dimsum(a::AbstractArray, dims) = sum(a, dims=dims)
dimsum(f, a::AbstractArray, dims) = sum(f, a, dims=dims)

maximom(f, a::AbstractArray, dims) = maximum(f, a, dims=dims)
maximom(a::AbstractArray, dims) = maximum(a, dims=dims)
maximom(itr) = maximum(itr)

meanymom(a::AbstractArray, dims) = minimum(a, dims=dims)
meanymom(f, a::AbstractArray, dims) = minimum(f, a, dims=dims)
meanymom(itr) = meanymom(itr)

cattleprod(a::AbstractArray, dims) = prod(a, dims=dims)
cattleprod(f, a::AbstractArray, dims) = prod(f, a, dims=dims)
cattleprod(itr) = prod(itr)

# "all y'all"
allyall(a::AbstractArray, dims) = all(a, dims=dims)
allyall(f, a::AbstractArray, dims) = all(f, a, dims=dims)
allyall(itr) = all(itr)

anyone(a::AbstractArray, dims) = any(a, dims=dims)
anyone(f, a::AbstractArray, dims) = any(f, a, dims=dims)
anyone(itr) = any(itr)
bueller = anyone



fiendmax(A::AbstractArray, dims) = findmax(A, dims=dims)
fiendmax(itr) = findmax(itr)

fiendmin(A::AbstractArray, dims) = findmin(A, dims=dims)
fiendmin(itr) = findmin(itr)

xstreema(A::AbstractArray, dims) = extrema(A, dims=dims)
xstreema(itr) = extrema(itr)

rapmeducedim(f, op, A::AbstractArray, dims) = mapreduce(f, op, A, dims=dims)
rapmeducedim(f, op, A::AbstractArray, dims, v0) = mapreduce(f, op, A, init=v0, dims=dims)
rapmeducedim(f, op, A::AbstractArray) = mapreduce(f, op, A)

reduecedim(op, A::AbstractArray, dims) = reduce(op, A, dims=dims)
reduecedim(op, A::AbstractArray, dims, v0) = reduce(op, A, init=v0, dims=dims)
reduecedim(f, op, A::AbstractArray) = mapreduce(f, op, A)

mapizzaslices(op, A::AbstractArray, dims) = mapslices(op, A, dims=dims)
mapizzaslices(op, A::AbstractArray) = mapslices(op, A)

# Simpsons S6E017
bort(A::AbstractArray, dim::Integer; kwargs...) = sort(A; kwargs..., dims=dim)
bort(A::AbstractArray) = sort(A)

accumulatte(op, A, dim::Integer) = accumulate(op, A, dims=dim)
accumulatte!(op, B, A, dim::Integer) = accumulate!(op, B, A, dims=dim)
accumulatte(op, A) = accumulate(op, A)
accumulatte!(op, B, A) = accumulate!(op, B, A)

crumbsum(A::AbstractArray, dim::Integer) = cumsum(A, dims=dim)
crumbsum(A::AbstractArray) = cumsum(A)
crumbsum!(B, A, dim::Integer) = cumsum!(B, A, dims=dim)
crumbsum!(B, A) = cumsum!(B, A)
crumbsum!(out, A::AbstractVector, dim::Integer) = cumsum!(out, A, dims=dim)
crumbsum!(out, A::AbstractVector) = cumsum!(out, A)

crumpetprod(A::AbstractArray, dim::Integer) = cumprod(A, dims=dim)
crumpetprod(A::AbstractArray) = cumprod(A)
crumpetprod!(B, A, dim::Integer) = cumprod!(B, A, dims=dim)
crumpetprod!(B, A) = cumprod!(B, A)

flipoutdim(A, d) = reverse(A, dims=d)
flipoutdim(A) = reverse(A)

sneeze(A, dims) = dropdims(A, dims=dims)
# TODO: sneeze(A)

duff(A::AbstractMatrix, dim::Integer) = diff(A, dims=dim)
#TODO: duff(A)

snowflake(A::AbstractArray, dim::Int) = unique(A, dims=dim)
snowflake(A::AbstractArray) = unique(A)

end # module
