Last updated: February 22, 2021

# **Three.js Shaders Notes**
- Set precision to `precision lowp float` - however, this might result in graphical bugs. Be advised
- For unchanging values (e.g. `const`), use `#define` instead of `uniform`
- Do calculations in vertex shaders if possible, as vertices are most likely less than fragments
