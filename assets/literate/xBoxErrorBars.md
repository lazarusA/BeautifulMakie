<!--This file was generated, do not modify it.-->
## x-error & y-error barplots

````julia:ex1
# by Lazaro Alonso
using CairoMakie, Random
CairoMakie.activate!() #HIDE
let
    Random.seed!(145)
    x, y = 1:2:20, 5 * rand(10)
    yerr, xerr = 0.4 * abs.(randn(10)), abs.(randn(10))
    fig = Figure(resolution = (600, 400), font = "sans")
    ax = Axis(fig[1, 1], xlabel = "variables", ylabel = "values")
    barplot!(ax, x, y; width = 1.8xerr, strokewidth = 1, color = :transparent,
        strokecolor = :black)
    errorbars!(ax, x, y, yerr; whiskerwidth = 12)
    # display(fig)
    save(joinpath(@OUTPUT, "xBoxErrorBars.svg"), fig) # HIDE
end;
````

\fig{xBoxErrorBars.svg}

````julia:ex2
using Pkg # HIDE
````

#### Dependencies

````julia:ex3
using Pkg # HIDE
Pkg.status(["CairoMakie"]) # HIDE
````

