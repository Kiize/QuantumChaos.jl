using Documenter, QuantumChaos

makedocs(
    sitename = "QuantumChaos.jl",
    modules = [QuantumChaos],
    pages = [
        "Home" => "index.md",
    ],
)