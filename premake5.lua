project "imgui"
	kind "StaticLib"
	language "C++"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
