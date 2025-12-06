using SafeTestsets

@safetestset "Comparing numerical to analytical energies" begin include("test_energies.jl") end
@safetestset "Geometry" begin include("test_geom.jl") end
@safetestset "Geometry" begin include("test_eigen.jl") end


