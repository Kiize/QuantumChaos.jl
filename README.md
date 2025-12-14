# QuantumChaos

[![Build Status](https://github.com/Kiize/QuantumChaos.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Kiize/QuantumChaos.jl/actions/workflows/CI.yml?query=branch%3Amain)


# Install

```julia
julia>]
pkg> add QuantumChaos
```

Check the installed version:

```julia
]st QuantumChaos
```

Start using the package:

```julia
using QuantumChaos
```

# Quickstart

As a quickstart example we can solve the rectangular billiard.

We start by using the package:
```julia
using QuantumChaos
```

Then we define the geometry of the rectangular billiard ```B```:
```julia
B = RectBilliard(1.0,       # Lenght along x
                sqrt(2),    # Lenght along y
                100,        # Number of points along x
                200)        # Number of points along y
```

Having defined the geometry we can build the Hamiltonian ```ham``` on ```B``` which corresponds to the laplacian operator:
```julia
ham = rect_laplacian(B)
```

We now want to compute the first ```k=20``` eigenvalues ```E_num``` using ```ArnoldiMethod```:

```julia
k = 20

decomp, history = partialschur(ham, nev=k, tol=1e-6, which=:SR)  
history
E_num, Ψ_vecs = partialeigen(decomp)
```

To check that these are the right eigenvalues we can compare them to the analytical solutions ```E_ana``` using the built-in function ```analytical_energies```:
```julia
E_ana = analytical_energies(B, k)
```

# More in-depth summary

With this package we can solve numerically two kind of billiards: the rectangular billiard and the Bunimovich stadium. The last one shows quantum chaos behavior.

## Rectangular billiard 
For the rectangular quantum billiard we want to find the eigenvalues and the eigenvectors: to do this we solve the Helmoltz equation over a rectangular grid using the Finite Difference Method (FDM).

For a more in depth discussion refer to this [link](https://kiize.github.io/Quantum_Chaos/tex/qchaos.pdf).



# To-do list

- [x] Test eigenfunctions rect;
- [] Test eigenfunctions stadium;
- [] Divide plot functions;
- [] Symmetry sectors for stadium;