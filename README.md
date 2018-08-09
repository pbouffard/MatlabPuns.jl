# MatlabPuns.jl

Deprecations, schmeprecations!

As promised/threatened [on Discourse](https://discourse.julialang.org/t/julia-for-matlab-users-club/12872/12?u=airpmb), MatlabPuns.jl allows you to use some now (as of Julia 1.0) deprecated Matlab-isms with impunity! The only price you pay is some slight modifications to the function (or is it method?) names, but you're trying Julia so you must believe you have some ability to change, right?

For example:

```
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: https://docs.julialang.org
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.0.0-rc1.0 (2018-08-07 16:29 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin14.5.0

julia> eye(3)
ERROR: UndefVarError: eye not defined
Stacktrace:
 [1] top-level scope at none:0

julia> print("😡")
😡

julia> using MatlabPuns

julia> goodbeye(3)
3×3 Array{Float64,2}:
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  0.0  1.0
 
julia> print("😄")
😄
```

