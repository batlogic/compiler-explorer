; Listing generated by Microsoft (R) Optimizing Compiler Version 19.15.26504.0 

	TITLE	C:\Source\compiler-explorer\test\cases\vc-regex-example.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG39290 DB	'Some people,  when confronted with a problem, think "I k'
	DB	'now, I''ll use regular expressions." Now they have two proble'
	DB	'ms.', 00H
$SG39291 DB	'REGULAR EXPRESSIONS', 00H
CONST	ENDS
PUBLIC	?regexTest@@YAXXZ				; regexTest
xdata$x	SEGMENT
__unwindtable$?regexTest@@YAXXZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?regexTest@@YAXXZ$0
__ehfuncinfo$?regexTest@@YAXXZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?regexTest@@YAXXZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_self_regex$ = -60					; size = 20
_s$ = -40						; size = 24
__$ArrayPad$ = -16					; size = 4
__$EHRec$ = -12						; size = 12
?regexTest@@YAXXZ PROC					; regexTest
; File c:\source\compiler-explorer\test\cases\vc-regex-example.cpp
; Line 7
	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?regexTest@@YAXXZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 48					; 00000030H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
; Line 8
	push	OFFSET $SG39290
	lea	ecx, DWORD PTR _s$[ebp]
	call	??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z ; std::basic_string<char,std::char_traits<char>,std::allocator<char> >::basic_string<char,std::char_traits<char>,std::allocator<char> >
	mov	DWORD PTR __$EHRec$[ebp+8], 0
; Line 11
	push	256					; 00000100H
	push	1
	call	??Uregex_constants@std@@YA?AW4syntax_option_type@01@W4201@0@Z ; std::regex_constants::operator|
	add	esp, 8
	push	eax
	push	OFFSET $SG39291
	lea	ecx, DWORD PTR _self_regex$[ebp]
	call	??0?$basic_regex@DV?$regex_traits@D@std@@@std@@QAE@PBDW4syntax_option_type@regex_constants@1@@Z ; std::basic_regex<char,std::regex_traits<char> >::basic_regex<char,std::regex_traits<char> >
; Line 13
	lea	ecx, DWORD PTR _self_regex$[ebp]
	call	??1?$basic_regex@DV?$regex_traits@D@std@@@std@@QAE@XZ ; std::basic_regex<char,std::regex_traits<char> >::~basic_regex<char,std::regex_traits<char> >
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _s$[ebp]
	call	??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ ; std::basic_string<char,std::char_traits<char>,std::allocator<char> >::~basic_string<char,std::char_traits<char>,std::allocator<char> >
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
text$x	SEGMENT
__unwindfunclet$?regexTest@@YAXXZ$0:
	lea	ecx, DWORD PTR _s$[ebp]
	jmp	??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ ; std::basic_string<char,std::char_traits<char>,std::allocator<char> >::~basic_string<char,std::char_traits<char>,std::allocator<char> >
__ehhandler$?regexTest@@YAXXZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-52]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	ecx, DWORD PTR [edx-4]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?regexTest@@YAXXZ
	jmp	___CxxFrameHandler3
text$x	ENDS
?regexTest@@YAXXZ ENDP					; regexTest
END
