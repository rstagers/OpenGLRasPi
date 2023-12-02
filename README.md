Forked to apply the changes I made to get this working on a RasPi 4 and 5.  They use OpenGL ES 3.1 so some modifications and changes were needed to get it to compile as well as run.  ***Warning*** This code has NOT been changed yet. *** Warning*** 


# OpenGL-Core
Work-in-progress OpenGL library that aims to provide a powerful sandbox for you to learn or experiment with OpenGL, and graphics programming in general.

## Usage
```
git clone --recursive https://github.com/rstagers/OpenGLRasPi.git

I haven't forked imgui so the code downloaded needs modified.
You must add this define: #define IMGUI_IMPL_OPENGL_ES3
to the top of  OpenGL-Core/vendor/imgui/imconfig.h just after the #pragma once
This will make imgui compiloe for ES 3.0 needed on the Raspberry Pi 4 and 5.

```

Run `scripts/Linux-Premake.sh` to make the Makefiles then run make -f OpenGL-Examples.make the executable will be in the bin directory.
