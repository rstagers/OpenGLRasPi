Forked to apply the changes I made to get this working on a RasPi 4 and 5.  They use OpenGL ES 3.1 so some modifications and changes were needed to get it to compile as well as run.  

# OpenGL-Core
OpenGL library that aims to provide a powerful sandbox for you to learn or experiment with OpenGL, and graphics programming in general.

## Usage and buiding
```
git clone --recursive https://github.com/rstagers/OpenGLRasPi.git

I haven't forked imgui so the code downloaded needs modified.
You must add this define: #define IMGUI_IMPL_OPENGL_ES3
to the top of  OpenGL-Core/vendor/imgui/imconfig.h just after the #pragma once
This will make imgui compiloe for ES 3.0 needed on the Raspberry Pi 4 and 5.

Once the imconfig.h is modified.
  1.  Go into the scripts folder (cd scripts) and run ./Linux-Premake.sh
      This will build all the makefiles using premake5 and the lua scripts.
  2.  Ruturn to the top level: cd ..
  3.  Build the OpenGL_Examples:  make -f OpenGL-Examples.mak
  4.  Change your directory to OpenGL-Examples:  cd OpenGL-Examples
  5.  Copy the resulting executable from the bin directory. To the current directoory:
      cp ../bin/Debug-linux-ARM64/OpenGL-Examples/OpenGL-Examples .
  6.  Run the example:  ./OpenGL-Examples

```
