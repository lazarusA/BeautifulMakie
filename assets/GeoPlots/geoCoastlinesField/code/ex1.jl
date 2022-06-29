# This file was generated, do not modify it. # hide
# by Lazaro Alonso
using GLMakie, GeoMakie
GLMakie.activate!()
let
    lons = -180:180
    lats = -90:90
    field = [exp(cosd(l)) + 3(y / 90) for l in lons, y in lats]

    fig = Figure(resolution=(1200, 800), fontsize=22)
    ax = GeoAxis(fig[1, 1]; title="coastlines",
        coastlines=true # plot coastlines from Natural Earth.
    )
    surface!(ax, lons, lats, field; shading=false)
    fig
    save(joinpath(@OUTPUT, "geoCoastlinesField.png"), fig) # HIDE
end;