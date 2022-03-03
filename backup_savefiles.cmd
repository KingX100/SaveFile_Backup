@echo off
mode con: cols=54 lines=4
title Game Backup Script
echo Backup Script is running...
echo Press Ctrl+C to end the process.
set hour=%time:~0,2%
set min=%time:~3,2%
set sec=%time:~6,2%
set day=%date:~0,2%
set month=%date:~3,2%
set year=%date:~-4%
set date_time=%year%%month%%day%_%hour%%min%%sec%
rem '> "%GameBackup%\_logfiles\EldenRing_Backup_%date_time%.log"' is optional <- only keep this if you want log files (if you do want log files you need to create the folder '_logfiles')
rem Instead of '%GameBackup%' put your folder path where you want to copy your backup to 
robocopy "%appdata%\EldenRing" "%GameBackup%\EldenRing" /mir /zb /mot:1 /w:0 /r:1 > "%GameBackup%\_logfiles\EldenRing_Backup_%date_time%.log"


rem MIT License

rem Copyright (c) 2022 KingX100

rem Permission is hereby granted, free of charge, to any person obtaining a copy
rem of this software and associated documentation files (the "Software"), to deal
rem in the Software without restriction, including without limitation the rights
rem to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
rem copies of the Software, and to permit persons to whom the Software is
rem furnished to do so, subject to the following conditions:

rem The above copyright notice and this permission notice shall be included in all
rem copies or substantial portions of the Software.

rem THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
rem IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
rem FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
rem AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
rem LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
rem OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
rem SOFTWARE.