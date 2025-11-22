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

# Definition of a rectangle, not necesserily starting in the origin.
struct RectGeom
    Lx_min::Float64
    Lx_max::Float64
    Ly_min::Float64
    Ly_max::Float64
end

# Definition of a circle with center (x_center, y_center) and radius = radius.
struct CircGeom
    radius::Float64
    x_center::Float64
    y_center::Float64
end

# Definition of the Bunimovich Stadium, which is a rectangle capped by two semicircles 
struct BunStadium 
    rect::RectGeom
    circ_right::CircGeom
    circ_left::CircGeom
end

# Constructor for the Bunimovich Stadium using only the rectangle as we can deduce the circles.
BunStadium(R::RectGeom) = begin
    height = R.Ly_max - R.Ly_min
    radius = height/2.0
    circ_right = CircGeom(radius, R.Lx_max, R.Ly_min + radius)
    circ_left = CircGeom(radius, R.Lx_min, R.Ly_min + radius)
    return BunStadium(R, circ_right, circ_left)
end


