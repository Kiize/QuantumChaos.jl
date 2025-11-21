using QuantumChaos
using Test
using ArnoldiMethod
#using Revise

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
end 