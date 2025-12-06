using QuantumChaos
using Test
using ArnoldiMethod

# Simple setting to test the rectangular billiard.

B = RectBilliard(1.0, sqrt(2), 100, 200) # Rectangular Billiard
ham = rect_laplacian(B) # Hamiltonian
k = 20  # Number of eigenvalues to compute

# Diagonalization using Arnoldi method.

decomp, history = partialschur(ham, nev=k, tol=1e-6, which=:SR)  
history
E_num, Ψ_vecs = partialeigen(decomp)

E_ana = analytical_energies(B, k)

# Test.

@testset "Comparing numerical to analytical energies" begin
    @test isapprox(E_num, E_ana; rtol=1e-3)

    # Check normalization
    @test Ψ_vecs[:, 1]' * Ψ_vecs[:, 1] ≈ 1.0 atol=1e-6
    @test Ψ_vecs[:, 5]' * Ψ_vecs[:, 5] ≈ 1.0 atol=1e-6
    @test Ψ_vecs[:, 19]' * Ψ_vecs[:, 19] ≈ 1.0 atol=1e-6


    # Check orthogonality
    @test Ψ_vecs[:, 1]' * Ψ_vecs[:, 2] ≈ 0.0 atol=1e-6
    @test Ψ_vecs[:, 5]' * Ψ_vecs[:, 19] ≈ 0.0 atol=1e-6
    @test Ψ_vecs[:, 4]' * Ψ_vecs[:, 3] ≈ 0.0 atol=1e-6


end 