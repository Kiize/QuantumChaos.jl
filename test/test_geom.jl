using QuantumChaos
using Test

R = RectGeom(0.0, 1.0, 0.0, 2.0)
S = BunStadium(R)

@testset "Geometry" begin
    @test isin_rect(R, R.Lx_max+0.1, R.Ly_max/2) == false
    @test isin_circle(S.circ_right, S.rect.Lx_max + 0.1, S.rect.Ly_min) == false
    @test isin_stadium(S, S.rect.Lx_max/2, S.rect.Ly_min) == true
end