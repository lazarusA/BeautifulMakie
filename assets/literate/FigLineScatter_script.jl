# This file was generated, do not modify it.

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

using Pkg # HIDE

Pkg.status("CairoMakie") # HIDE

