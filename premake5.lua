-- OpenGL-Sandbox
workspace "OpenGL-Sandbox"
	architecture "ARM64"
	startproject "OpenGL-Sandbox"

	configurations
	{
		"Debug",
		"Release"
	}
	
	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to OpenGL-Core
IncludeDir = {}
IncludeDir["GLFW"] = "vendor/glfw/include"
IncludeDir["Glad"] = "vendor/Glad/include"
IncludeDir["ImGui"] = "vendor/imgui"
IncludeDir["glm"] = "vendor/glm"
IncludeDir["stb_image"] = "vendor/stb_image"

-- Projects
group "Dependencies"
	include "OpenGL-Core/vendor/glfw"
	include "OpenGL-Core/vendor/Glad"
	include "OpenGL-Core/vendor/imgui"
group ""

include "OpenGL-Core"
include "OpenGL-Sandbox"

-- OpenGL-Examples
workspace "OpenGL-Examples"
    startproject "OpenGL-Examples"
    architecture "ARM64"
    startproject "OpenGL-Examples"

    configurations
    {
        "Debug",
        "Release"
    }

    flags
    {
        "MultiProcessorCompile"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to OpenGL-Core
IncludeDir = {}
IncludeDir["GLFW"] = "vendor/glfw/include"
IncludeDir["Glad"] = "vendor/Glad/include"
IncludeDir["ImGui"] = "vendor/imgui"
IncludeDir["glm"] = "vendor/glm"
IncludeDir["stb_image"] = "vendor/stb_image"

-- Projects
group "Dependencies"
    includeexternal "OpenGL-Core/vendor/glfw"
    includeexternal "OpenGL-Core/vendor/Glad"
    includeexternal "OpenGL-Core/vendor/imgui"
group ""

includeexternal "OpenGL-Core"
include "OpenGL-Examples"
