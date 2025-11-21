module RectangularBilliard

#using Reexport

#include("helper.jl")
#include("help_evol.jl")

include("rect_struct.jl")
@reexport using .RectStruct
#export RectBilliard, RectBilliard_as_vec

include("rect_laplacian.jl")
@reexport using .RectLaplacian
#export rect_laplacian, plot_eigenstate, compare_energies, analytical_energies
    
end # end of module.