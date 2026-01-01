; Hello, World! for Windows Console using FASM
; To assemble: fasm hello.asm hello.exe
include 'win32a.inc'

.data
    msg db 'Hello, World!', 13, 10
    len = $ - msg

.code
start:
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov [handle], eax
    invoke WriteFile, [handle], msg, len, written, NULL
    invoke ExitProcess, 0

.data
    handle dd ?
    written dd ?
