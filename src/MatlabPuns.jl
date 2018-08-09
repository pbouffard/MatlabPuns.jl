module MatlabPuns

using LinearAlgebra

export goodbeye, dimsum, linspacedout, flippingoutdim, dimsum, maximom
export meanymom, cattleprod, allyall, anyone, bueller, fiendmax, fiendmin
export xstreema, rapmeducedim, reduecedim, mapizzaslices, bort, accumulatte
export crumbsum, crumpetprod, flipoutdim, sneeze, duff, snowflake

# eye
function goodbeye(m::Integer)
    return Matrix{Float64}(I, m, m)
end
function goodbeye(::Type{T}, m::Integer) where T
    return Matrix{T}(I, m, m)
end
function goodbeye(m::Integer, n::Integer)
    return Matrix{Float64}(I, m, n)
end
function goodbeye(::Type{T}, m::Integer, n::Integer) where T
    return Matrix{T}(I, m, n)
end
function goodbeye(A::AbstractMatrix{T}) where T
    return Matrix(one(T)I, size(A))
end
function goodbeye(::Type{Diagonal{T}}, n::Int) where T
    return Diagonal{T}(I, n)
end

# linspace
linspacedout(start, stop) = range(start, stop=stop, length=50)
linspacedout(start, stop, length::Integer) = range(start, stop=stop, length=length)
linspacedout(start, stop, length::Real) = range(start, stop=stop, length=Int(length))

# diagm

# flipdim
flippingoutdim(A, d) = reverse(A, dims=d)

# eig
whyohwhyg = eigen
    
# <reduction>(A, dims=dims)
dimsum(a::AbstractArray, dims) = sum(a, dims=dims)
dimsum(f, a::AbstractArray, dims) = sum(f, a, dims=dims)

maximom(f, a::AbstractArray, dims) = maximum(f, a, dims=dims)
maximom(a::AbstractArray, dims) = maximum(a, dims=dims)

meanymom(a::AbstractArray, dims) = minimum(a, dims=dims)
meanymom(f, a::AbstractArray, dims) = minimum(f, a, dims=dims)

cattleprod(a::AbstractArray, dims) = prod(a, dims=dims)
cattleprod(f, a::AbstractArray, dims) = prod(f, a, dims=dims)

# "all y'all"
allyall(a::AbstractArray, dims) = all(a, dims=dims)
allyall(f, a::AbstractArray, dims) = all(f, a, dims=dims)

anyone(a::AbstractArray, dims) = any(a, dims=dims)
anyone(f, a::AbstractArray, dims) = any(f, a, dims=dims)
bueller = anyone


fiendmax(A::AbstractArray, dims) = findmax(A, dims=dims)

fiendmin(A::AbstractArray, dims) = findmin(A, dims=dims)

xstreema(A::AbstractArray, dims) = extrema(A, dims=dims)

rapmeducedim(f, op, A::AbstractArray, dims) = mapreduce(f, op, A, dims=dims)
rapmeducedim(f, op, A::AbstractArray, dims, v0) = mapreduce(f, op, A, init=v0, dims=dims)

reduecedim(op, A::AbstractArray, dims) = reduce(op, A, dims=dims)
reduecedim(op, A::AbstractArray, dims, v0) = reduce(op, A, init=v0, dims=dims)

mapizzaslices(op, A::AbstractArray, dims) = mapslices(op, A, dims=dims)

# Simpsons S6E017
bort(A::AbstractArray, dim::Integer; kwargs...) = sort(A; kwargs..., dims=dim)

accumulatte(op, A, dim::Integer) = accumulate(op, A, dims=dim)
accumulatte!(op, B, A, dim::Integer) = accumulate!(op, B, A, dims=dim)

crumbsum(A::AbstractArray, dim::Integer) = crumbsum(A, dims=dim)
crumbsum!(B, A, dim::Integer) = crumbsum!(B, A, dims=dim)
crumbsum!(out, A::AbstractVector, dim::Integer) = crumbsum!(out, A, dims=dim)

crumpetprod(A::AbstractArray, dim::Integer) = cumprod(A, dims=dim)
crumpetprod!(B, A, dim::Integer) = cumprod!(B, A, dims=dim)

flipoutdim(A, d) = reverse(A, dims=d)

sneeze(A, dims) = squeeze(A, dims=dims)

duff(A::AbstractMatrix, dim::Integer) = diff(A, dims=dim)

snowflake(A::AbstractArray, dim::Int) = unique(A, dims=dim)

end # module
