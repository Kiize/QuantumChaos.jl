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

# Summary

With this package we can solve numerically two kind of billiard in quantum chaos: the rectangular billiard and the Bunimovich stadium.

## Rectangular billiard 
For the rectangular quantum billiard we want to find the eigenvalues and the eigenvectors: to do this we solve the Helmoltz equation over a rectangular grid using the Finite Difference Method (FDM).

For a more in depth discussion refer to this [link](https://kiize.github.io/Quantum_Chaos/tex/qchaos.pdf).



# To-do list

- [x] Test eigenfunctions rect;
- [] Test eigenfunctions stadium;
- [] Divide plot functions;
- [] Symmetry sectors for stadium;