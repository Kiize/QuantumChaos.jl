# Definition of the Rectangular Billiard with dimension Lx × Ly and number of points Nx × Ny. 
struct RectBilliard 
    Lx::Float64
    Ly::Float64
    Nx::Int
    Ny::Int
    hx::Float64 
    hy::Float64 
end

# Automatic calculation of the steps hx and hy.
RectBilliard(Lx::Float64, Ly::Float64, Nx::Int, Ny::Int) = begin
    hx = Lx / (Nx + 1)
    hy = Ly / (Ny + 1)
    return RectBilliard(Lx, Ly, Nx, Ny, hx, hy)
end

# Constructor to convert floating values of Nx, Ny in Int.
RectBilliard(Lx::Float64, Ly::Float64, Nx::Float64, Ny::Float64) = RectBilliard(Lx, Ly, Int(Nx), Int(Ny))   # convert Nx, Ny in Int

# Function to export the RectBilliard parameters as a vector, used to write it on file.
function RectBilliard_as_vec(B::RectBilliard)
    # restituisce [Lx, Ly, Nx, Ny] (Nx,Ny rimangono interi)
    return [B.Lx, B.Ly, B.Nx, B.Ny]
end

