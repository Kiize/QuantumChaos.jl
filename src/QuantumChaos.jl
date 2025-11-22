module QuantumChaos

using LinearAlgebra
using SparseArrays, Kronecker, GLMakie, ProgressMeter

include("rect_struct.jl")
export RectBilliard, RectBilliard_as_vec
export RectGeom, CircGeom, BunStadium

include("rect_laplacian.jl")
export rect_laplacian, plot_eigenstate, compare_energies, analytical_energies

include("evol.jl")
export PsiEvol, psi_at_index, psi_at_time, shape_rect

include("geometries.jl")
export area_stadium, area_rect, perimeter_stadium, perimeter_rect, isin_rect, isin_circle, isin_stadium, rect_around, 
    RectGeom_as_vec, rect_eigenfun, base_map, integration_on_II, relative_error, calc_P_matrix, eigenfun,
    plot_stadium_eigenstate

end # end of module.
