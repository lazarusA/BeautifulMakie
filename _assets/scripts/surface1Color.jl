# by Lazaro Alonso
using GLMakie
GLMakie.activate!() # HIDE
let
    t = range(0,2π, length = 50)
    u = -1:0.1:1
    x = [u*sin(t) for t in t, u in u]
    y = [u*cos(t) for t in t, u in u]
    z = [u        for t in t, u in u]
    fig, _ = surface(x, y, z, colormap = (:dodgerblue, :dodgerblue),
        lightposition = Vec3f(0, 0, 0.8), ambient = Vec3f(0.6, 0.6, 0.6),
        backlight = 2f0)
    wireframe!(x,y,z; overdraw = false, linewidth = 0.1) # try overdraw = true
    save(joinpath(@__DIR__, "output", "surface1Color.png"), fig, px_per_unit = 2.0) # HIDE
    display(fig)
end
using Pkg # HIDE
Pkg.status(["GLMakie"]) # HIDE
