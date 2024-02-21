import sys
from cx_Freeze import setup, Executable

# Dependencies are automatically detected, but it might need fine tuning.
build_exe_options = {
    #"zip_include_packages": [""],
    "optimize": 2,
    "build_exe": 'bin'
}

# base="Win32GUI" should be used only for Windows GUI app
base = "Win32GUI" if sys.platform == "win32" else None

setup(
    name="firefox_explorer",
    version="0.1",
    description="RSA Key generator",
    options={"build_exe": build_exe_options},
    executables=[Executable("main.py", base=base)],
)