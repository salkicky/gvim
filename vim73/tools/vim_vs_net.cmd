@rem
@rem To use this with Visual Studio .Net
@rem Tools->External Tools...
@rem Add
@rem      Title     - Vim
@rem      Command   - d:\files\util\vim_vs_net.cmd
@rem      Arguments - +$(CurLine) $(ItemPath)
@rem      Init Dir  - Empty
@rem
@rem Coutesy of Brian Sturk
@rem
@rem --remote-silent +%1 is a command +954, move ahead 954 lines
@rem --remote-silent %2 full path to file
@rem In Vim
@rem    :h --remote-silent for mor details
@rem
@rem --servername VS_NET
@rem This will create a new instance of vim called VS_NET.  So if you
open
@rem multiple files from VS, they will use the same instance of Vim.
@rem This allows you to have multiple copies of Vim running, but you can
@rem control which one has VS files in it.
@rem

if "%~2" == "" (GOTO WITHOUT_LINE_NO) else (GOTO WITH_LINE_NO)

:WITH_LINE_NO
start /b C:\Dev\vim73-kaoriya-win32\gvim.exe --servername VS_NET --remote-silent +%1  %2
GOTO END

:WITHOUT_LINE_NO
start /b C:\Dev\vim73-kaoriya-win32\gvim.exe --servername VS_NET --remote-silent %1 
:GOTO END

:END
