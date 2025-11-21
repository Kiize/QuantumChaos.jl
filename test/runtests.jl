using QuantumChaos
using Test

B = RectBilliard(1.0, 2.0, 100, 200)

@testset "QuantumChaos.jl" begin
    @test B.Lx == 1.0
end
