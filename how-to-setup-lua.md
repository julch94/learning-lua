# how-to-setup-lua

How to setup Lua and run a Hello World script:

- Visit https://www.lua.org/start.html for the latest information

- Lua is very simple to setup on a Unix system and less so on Windows. There's a guide on the wiki (linked below) but the links become outdated and some of the steps don't work.
http://lua-users.org/wiki/BuildingLuaInWindowsForNewbies

- Note: x, y, and z = some unknown numbers determining version numbers

- Create a working gcc-lua-install folder on your drive, for example, C:\gcc-lua-install

- Download the latest stable release of the TDM-GCC complier (https://jmeubank.github.io/tdm-gcc/) - I used 10.3.0

- Move the installation package (tdm-gcc-x.y.z.exe) to our working folder

- Download the latest stable relase of the Lua Sources (http://www.lua.org/download.html) - I used 5.4.6

- Move the Lua Sources (lua-x.y.z.tar.gz) to our working folder

- Download a Decompressor (such as 7-Zip) for Lua Sources - but we actually need an alternative distribution from PortableApps (https://portableapps.com/apps/utilities/7-zip_portable).

- Move the 7-Zip Portable installer to our working directory

- Install the compiler by running the tdm-gcc-x.y.z.exe file we put in our working folder earlier

- Specify our working folder and then a sub-folder \tdm-gcc as the installation directory, for example: C:\gcc-lua-install\tdm-gcc, as the installation directory

- Complete the installation steps and press Finish

- Run the 7-Zip Portable Installer downloaded earlier and specify our working folder with a subdirectory \7zip as the installation directory, for example: C:\gcc-lua-install\7zip then press Install and Finish

- Browse to the \7zip subdirectory and run 7-ZipPortable.exe

- Using 7-Zip, navigate to our working folder and double click on the Lua package file (lua-x.y.z.tar.gz) which should expose the lua-x.y.z.tar file. Double click that as well to get to the lua.x.y.z folder

- Right click the lua.x.y.z folder and "Copy To" the working directory (C:\gcc-lua-install\ for example)

- In the working folder, create a new text file and open it. Paste the following contents in, however, you must change the line near the beginning of the text "set lua_version=5.4.6" to instead reflect your Lua version - here, it is 5.4.6.

~~~
@echo off
        :: ========================
        :: file build.cmd
        :: ========================
        setlocal
        :: you may change the following variable's value
        :: to suit the downloaded version
        set lua_version=5.3.0

        set work_dir=%~dp0
        :: Removes trailing backslash
        :: to enhance readability in the following steps
        set work_dir=%work_dir:~0,-1%
        set lua_install_dir=%work_dir%\lua
        set compiler_bin_dir=%work_dir%\tdm-gcc\bin
        set lua_build_dir=%work_dir%\lua-%lua_version%
        set path=%compiler_bin_dir%;%path%

        cd /D %lua_build_dir%
        mingw32-make PLAT=mingw

        echo.
        echo **** COMPILATION TERMINATED ****
        echo.
        echo **** BUILDING BINARY DISTRIBUTION ****
        echo.

        :: create a clean "binary" installation
        mkdir %lua_install_dir%
        mkdir %lua_install_dir%\doc
        mkdir %lua_install_dir%\bin
        mkdir %lua_install_dir%\include

        copy %lua_build_dir%\doc\*.* %lua_install_dir%\doc\*.*
        copy %lua_build_dir%\src\*.exe %lua_install_dir%\bin\*.*
        copy %lua_build_dir%\src\*.dll %lua_install_dir%\bin\*.*
        copy %lua_build_dir%\src\luaconf.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lua.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lualib.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lauxlib.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lua.hpp %lua_install_dir%\include\*.*

        echo.
        echo **** BINARY DISTRIBUTION BUILT ****
        echo.

        %lua_install_dir%\bin\lua.exe -e"print [[Hello!]];print[[Simple Lua test successful!!!]]"

        echo.

        pause
~~~

- Now, save that text as build.cmd and it will turn into a windows shell script. Double click to run it. A window will pop up and may take a moment to finish processing. Close the window once it's finished

- The Lua binary installation (C:\gcc-lua-install\lua for example) has now been created - you can move it to any other location on your computer and remove the working folder if desired. 

- In order to use a command line tool (cmd.exe) to run Lua scripts as simply as
	lua myscript.lua
you must add the Lua bin subdirectory on the Windows PATH Environment Variable. So wherever the Lua binary installation ends up, copy the path of the bin folder within it.

- Press WIN+R, type sysdm.cpl and hit enter

- Browse to the Advanced tab of the System Properties window that opened

- Select the Environment Variables which opens a new window

- Select the Path variable and hit Edit which owns an Edit User Variable window

- Hit New to add our \lua\bin path - add the full thing, for example, C:\Users\julch\Documents\lua\bin

- Hit OK, OK and OK to confirm these changes and close all 3 windows

- Now, let's create an example script by creating a new text file in any folder. Write the following script and then save the file as example.lua
	print ("Hello World")

- To run our example script, open the folder where our script is at. In the navigation bar type cmd.exe and hit enter to run command prompt in this directory. 

- Once command prompt opens, type the following command and hit enter to run our script
	lua example.lua

- The script should respond
	Hello World

- Success!

