# <center>Multi-threaded Ray Tracer </center>

This is a multi-threaded ray tracer based on the first book of <b>Ray Tracing in One Weekend</b> book series by Peter Shirley, Trever D Black and Steve Hollasch. You can find all the books [here](https://raytracing.github.io/).

The original book focuses on core concepts and a naive implementation, intentionally leaving room for optimization. I have extended the codebase to support CPU-based multi-threading, achieving over **10x performance improvement** on a 16-core CPU.

## Key Features

- **Multi-threaded Rendering**: Uses `std::for_each` with `std::execution::par` to saturate all available CPU cores.
- **Primitives**: Sphere intersection math.
- **Materials**:
  - **Lambertian**: Matte textures with accurate light diffusion.
  - **Metal**: Reflective surfaces with adjustable fuzziness.
  - **Dielectric**: Refractive materials (glass, water) with Schlick approximation.

## Prerequisites

To build this project, you will need:

1.  **C++ Compiler**: Must support C++17 (e.g., MSVC, GCC, Clang).
2.  **CMake**: Version 3.23 or higher.
3.  **Intel TBB (Thread Building Blocks)**: Essential for `<execution>` support on many compilers (especially MinGW).
    *   *MinGW users*: Install via `pacman -S mingw-w64-x86_64-tbb`

## Build & Run

1.  **Clone the repository**
    ```bash
    git clone https://github.com/ujjwalvishwakarma2006/multi-threaded-ray-tracer
    cd multi-threaded-ray-tracer
    ```

2.  **Configure**
    (Ninja generator recommended for speed)
    ```bash
    cmake -B build -G Ninja
    ```

3.  **Build**
    ```bash
    cmake --build build
    ```

4.  **Render**
    The application outputs PPM image data to standard output (stdout).
    ```powershell
    # Windows
    .\build\RayTracer.exe > image.ppm
    ```
    To see the time taken for rendering, you can use:
    ```powershell
    .\render_image.ps1 image.ppm
    ```

## Future Roadmap

- [ ] GPU Acceleration (CUDA/OptiX)
- [ ] Real-time viewport
- [ ] Complex mesh support (Triangles/OBJs)

---
*This project is hand-written and maintained by me.*