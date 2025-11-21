module QuantumChaos

using LinearAlgebra
using SparseArrays, Kronecker, GLMakie

include("rect_struct.jl")
export RectBilliard, RectBilliard_as_vec

include("rect_laplacian.jl")
export rect_laplacian, plot_eigenstate, compare_energies, analytical_energies

end # end of module.
