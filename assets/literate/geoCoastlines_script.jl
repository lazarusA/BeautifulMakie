# This file was generated, do not modify it.

# by Lazaro Alonso
using GLMakie, GeoMakie
GLMakie.activate!()
let
    fig = Figure(resolution=(1200, 800), fontsize=22)
    ax = GeoAxis(fig[1, 1]; title="coastlines",
    coastlines = true # plot coastlines from Natural Earth.
    )
    fig
    save(joinpath(@OUTPUT, "coastlines.png"), fig) # HIDE
end;

using Pkg # HIDE
Pkg.status(["GeoMakie", "GLMakie"]) # HIDE

