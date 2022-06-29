<!--This file was generated, do not modify it.-->
## Scatterlines

````julia:ex1
# by Lazaro Alonso
using CairoMakie
CairoMakie.activate!() # HIDE
let
    x = LinRange(0, 2π, 50)
    fig = Figure(resolution = (600, 400))
    ax = Axis(fig[1, 1], xlabel = "x", ylabel = "")
    scatterlines!(x, sin.(x), color = :black, markersize = 10, label = "sin(x)")
    axislegend()
    # display(fig)
    save(joinpath(@OUTPUT, "FigLineScatter.svg"), fig) # HIDE
end;
````

\fig{FigLineScatter.svg}

````julia:ex2
using Pkg # HIDE
````

#### Dependencies

````julia:ex3
Pkg.status("CairoMakie") # HIDE
````

