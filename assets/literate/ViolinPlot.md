<!--This file was generated, do not modify it.-->
## Violin Plot

````julia:ex1
# by Lazaro Alonso
using CairoMakie, Random
CairoMakie.activate!() #HIDE
let
    Random.seed!(13)
    n = 3000
    data = randn(n)
    a = fill(1, n)
    fig = Figure(resolution = (600, 400))
    ax = Axis(fig[1, 1], xlabel = "variable", ylabel = "values",
        xticks = ([1], ["normal Distribution"]))
    violin!(ax, a, data; width = 0.35, color = (:orangered, 0.45),
        show_median = true, mediancolor = :navy, strokecolor = :black,
        strokewidth = 1, label = "vertical")
    limits!(ax, 0, 2, -5, 5)
    axislegend(ax, position = :rt)
    # display(fig)
    save(joinpath(@OUTPUT, "ViolinPlot.svg"), fig) # HIDE
end;
````

\fig{ViolinPlot.svg}

````julia:ex2
using Pkg # HIDE
````

#### Dependencies

````julia:ex3
using Pkg # HIDE
Pkg.status(["CairoMakie"]) # HIDE
````

