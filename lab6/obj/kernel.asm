
bin/kernel:     file format elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 7f bd fb 	ldi	$r29,32764($r29)
ffffffff8091000c:	b8 81 dd 8f 	ldl	sp,-32328($r29)
ffffffff80910010:	70 80 7d 8f 	ldl	$r27,-32656($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 7f bd fb 	ldi	$r29,32736($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	88 80 10 8e 	ldl	$r16,-32632($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	f8 80 52 8e 	ldl	$r18,-32520($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	e7 12 5b 07 	call	ra,($r27),ffffffff80914bf0 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac 7f bd fb 	ldi	$r29,32684($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910064:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910068:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091006c:	13 ce 10 fa 	ldi	$r16,-12781($r16)
ffffffff80910070:	00 ce 31 fa 	ldi	$r17,-12800($r17)
ffffffff80910074:	46 00 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910078:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091007c:	88 7f bd fb 	ldi	$r29,32648($r29)
ffffffff80910080:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910084:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910088:	69 00 5b 07 	call	ra,($r27),ffffffff80910230 <print_kerninfo>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 7f bd fb 	ldi	$r29,32628($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff8091009c:	dc 00 5b 07 	call	ra,($r27),ffffffff80910410 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 7f bd fb 	ldi	$r29,32608($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	88 81 7b 8f 	ldl	$r27,-32376($r27)
ffffffff809100b0:	2b 0a 5b 07 	call	ra,($r27),ffffffff80912960 <pmm_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c 7f bd fb 	ldi	$r29,32588($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff809100c4:	96 0e 5b 07 	call	ra,($r27),ffffffff80913b20 <vmm_init>
ffffffff809100c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100cc:	38 7f bd fb 	ldi	$r29,32568($r29)
ffffffff809100d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809100d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809100dc:	18 ce 10 fa 	ldi	$r16,-12776($r16)
ffffffff809100e0:	2b 00 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809100e4:	ff ff ff 13 	br	ffffffff809100e4 <kern_init+0xc4>
ffffffff809100e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100f0 <clock_set_next_event>:
ffffffff809100f0:	02 00 1f fe 	ldih	$r16,2
ffffffff809100f4:	a0 86 10 fa 	ldi	$r16,-31072($r16)
ffffffff809100f8:	3b 00 00 02 	sys_call	0x3b
ffffffff809100fc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910100 <intr_disable>:
ffffffff80910100:	07 00 1f fa 	ldi	$r16,7
ffffffff80910104:	35 00 00 02 	sys_call	0x35
ffffffff80910108:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091010c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910110 <cputch>:
ffffffff80910110:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910114:	f0 7e bd fb 	ldi	$r29,32496($r29)
ffffffff80910118:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff8091011c:	20 ce 21 8c 	ldl	$r1,-12768($r1)
ffffffff80910120:	00 00 01 a2 	stb	$r16,0($r1)
ffffffff80910124:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff80910128:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff8091012c:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910130:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910134:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910138:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091013c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910140 <vcprintf>:
ffffffff80910140:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910144:	c0 7e bd fb 	ldi	$r29,32448($r29)
ffffffff80910148:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091014c:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80910150:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910154:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910158:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091015c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910160:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910164:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910168:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091016c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910170:	10 81 10 fa 	ldi	$r16,-32496($r16)
ffffffff80910174:	aa 10 5b 07 	call	ra,($r27),ffffffff80914420 <vprintfmt>
ffffffff80910178:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091017c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910180:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910184:	88 7e bd fb 	ldi	$r29,32392($r29)
ffffffff80910188:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091018c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910190 <cprintf>:
ffffffff80910190:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910194:	70 7e bd fb 	ldi	$r29,32368($r29)
ffffffff80910198:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091019c:	08 00 5f f8 	ldi	$r2,8
ffffffff809101a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809101a4:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff809101a8:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff809101ac:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff809101b0:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff809101b4:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff809101b8:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff809101bc:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff809101c0:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff809101c4:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff809101c8:	68 00 be be 	fstd	$f21,104(sp)
ffffffff809101cc:	52 07 f0 43 	mov	$r16,$r18
ffffffff809101d0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101d4:	10 81 10 fa 	ldi	$r16,-32496($r16)
ffffffff809101d8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101dc:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809101e0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809101e4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809101e8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809101ec:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff809101f0:	98 00 be ae 	stl	$r21,152(sp)
ffffffff809101f4:	54 07 e2 43 	mov	$r2,$r20
ffffffff809101f8:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff809101fc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910200:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff80910204:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff80910208:	85 10 5b 07 	call	ra,($r27),ffffffff80914420 <vprintfmt>
ffffffff8091020c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910210:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff80910214:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910218:	f4 7d bd fb 	ldi	$r29,32244($r29)
ffffffff8091021c:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910220:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910224:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910228:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091022c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910230 <print_kerninfo>:
ffffffff80910230:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910234:	d0 7d bd fb 	ldi	$r29,32208($r29)
ffffffff80910238:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091023c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910240:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910244:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910248:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091024c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910250:	28 ce 10 fa 	ldi	$r16,-12760($r16)
ffffffff80910254:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910258:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff8091025c:	f8 80 29 8d 	ldl	$r9,-32520($r9)
ffffffff80910260:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910264:	70 80 4a 8d 	ldl	$r10,-32656($r10)
ffffffff80910268:	c9 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091026c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910270:	94 7d bd fb 	ldi	$r29,32148($r29)
ffffffff80910274:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910278:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091027c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910280:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910284:	41 ce 10 fa 	ldi	$r16,-12735($r16)
ffffffff80910288:	c1 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091028c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910290:	74 7d bd fb 	ldi	$r29,32116($r29)
ffffffff80910294:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910298:	08 81 31 8e 	ldl	$r17,-32504($r17)
ffffffff8091029c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809102a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102a8:	5e ce 10 fa 	ldi	$r16,-12706($r16)
ffffffff809102ac:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102b4:	50 7d bd fb 	ldi	$r29,32080($r29)
ffffffff809102b8:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff809102bc:	88 80 31 8e 	ldl	$r17,-32632($r17)
ffffffff809102c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102c4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809102c8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102cc:	7b ce 10 fa 	ldi	$r16,-12677($r16)
ffffffff809102d0:	af ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102d8:	2c 7d bd fb 	ldi	$r29,32044($r29)
ffffffff809102dc:	51 07 e9 43 	mov	$r9,$r17
ffffffff809102e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102e4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809102e8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102ec:	98 ce 10 fa 	ldi	$r16,-12648($r16)
ffffffff809102f0:	a7 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102f8:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff809102fc:	0c 7d bd fb 	ldi	$r29,32012($r29)
ffffffff80910300:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff80910304:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910308:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091030c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910310:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff80910314:	b5 ce 10 fa 	ldi	$r16,-12619($r16)
ffffffff80910318:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff8091031c:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff80910320:	9b ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910324:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910328:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091032c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910330:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80910334:	dc 7c bd fb 	ldi	$r29,31964($r29)
ffffffff80910338:	20 00 de fb 	ldi	sp,32(sp)
ffffffff8091033c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910340 <__panic>:
ffffffff80910340:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910344:	c0 7c bd fb 	ldi	$r29,31936($r29)
ffffffff80910348:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091034c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910350:	20 82 41 88 	ldw	$r2,-32224($r1)
ffffffff80910354:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910358:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff8091035c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910360:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910364:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910368:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff8091036c:	49 07 f2 43 	mov	$r18,$r9
ffffffff80910370:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910374:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910378:	04 00 40 c0 	beq	$r2,ffffffff8091038c <__panic+0x4c>
ffffffff8091037c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910380:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80910384:	5e ff 5b 07 	call	ra,($r27),ffffffff80910100 <intr_disable>
ffffffff80910388:	ff ff ff 13 	br	ffffffff80910388 <__panic+0x48>
ffffffff8091038c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910390:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910394:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910398:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091039c:	51 07 f0 43 	mov	$r16,$r17
ffffffff809103a0:	20 82 41 a8 	stw	$r2,-32224($r1)
ffffffff809103a4:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff809103a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103ac:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809103b0:	18 00 3f f8 	ldi	$r1,24
ffffffff809103b4:	df ce 10 fa 	ldi	$r16,-12577($r16)
ffffffff809103b8:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff809103bc:	74 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103c4:	40 7c bd fb 	ldi	$r29,31808($r29)
ffffffff809103c8:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff809103cc:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff809103d0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809103d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103d8:	a8 81 7b 8f 	ldl	$r27,-32344($r27)
ffffffff809103dc:	58 ff 5b 07 	call	ra,($r27),ffffffff80910140 <vcprintf>
ffffffff809103e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103e4:	20 7c bd fb 	ldi	$r29,31776($r29)
ffffffff809103e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103ec:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809103f0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103f4:	1c ce 10 fa 	ldi	$r16,-12772($r16)
ffffffff809103f8:	65 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910400:	04 7c bd fb 	ldi	$r29,31748($r29)
ffffffff80910404:	dd ff ff 13 	br	ffffffff8091037c <__panic+0x3c>
ffffffff80910408:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091040c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910410 <trap_init>:
ffffffff80910410:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910414:	f0 7b bd fb 	ldi	$r29,31728($r29)
ffffffff80910418:	50 07 fd 43 	mov	$r29,$r16
ffffffff8091041c:	37 00 00 02 	sys_call	0x37
ffffffff80910420:	51 07 ff 43 	clr	$r17
ffffffff80910424:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910428:	98 80 10 8e 	ldl	$r16,-32616($r16)
ffffffff8091042c:	34 00 00 02 	sys_call	0x34
ffffffff80910430:	02 00 3f fa 	ldi	$r17,2
ffffffff80910434:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910438:	70 81 10 8e 	ldl	$r16,-32400($r16)
ffffffff8091043c:	34 00 00 02 	sys_call	0x34
ffffffff80910440:	03 00 3f fa 	ldi	$r17,3
ffffffff80910444:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910448:	68 81 10 8e 	ldl	$r16,-32408($r16)
ffffffff8091044c:	34 00 00 02 	sys_call	0x34
ffffffff80910450:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910454:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910458:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091045c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910460 <print_regs>:
ffffffff80910460:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910464:	a0 7b bd fb 	ldi	$r29,31648($r29)
ffffffff80910468:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091046c:	00 00 30 8e 	ldl	$r17,0($r16)
ffffffff80910470:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910474:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910478:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091047c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910480:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910484:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910488:	fb ce 10 fa 	ldi	$r16,-12549($r16)
ffffffff8091048c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910490:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910494:	70 7b bd fb 	ldi	$r29,31600($r29)
ffffffff80910498:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091049c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104a8:	10 cf 10 fa 	ldi	$r16,-12528($r16)
ffffffff809104ac:	38 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104b4:	50 7b bd fb 	ldi	$r29,31568($r29)
ffffffff809104b8:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff809104bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104c8:	25 cf 10 fa 	ldi	$r16,-12507($r16)
ffffffff809104cc:	30 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104d4:	30 7b bd fb 	ldi	$r29,31536($r29)
ffffffff809104d8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809104dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104e8:	3a cf 10 fa 	ldi	$r16,-12486($r16)
ffffffff809104ec:	28 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104f4:	10 7b bd fb 	ldi	$r29,31504($r29)
ffffffff809104f8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809104fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910500:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910504:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910508:	4f cf 10 fa 	ldi	$r16,-12465($r16)
ffffffff8091050c:	20 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910510:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910514:	f0 7a bd fb 	ldi	$r29,31472($r29)
ffffffff80910518:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff8091051c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910520:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910524:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910528:	64 cf 10 fa 	ldi	$r16,-12444($r16)
ffffffff8091052c:	18 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910534:	d0 7a bd fb 	ldi	$r29,31440($r29)
ffffffff80910538:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091053c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910540:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910544:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910548:	79 cf 10 fa 	ldi	$r16,-12423($r16)
ffffffff8091054c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910550:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910554:	b0 7a bd fb 	ldi	$r29,31408($r29)
ffffffff80910558:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091055c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910560:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910564:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910568:	8e cf 10 fa 	ldi	$r16,-12402($r16)
ffffffff8091056c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910570:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910574:	90 7a bd fb 	ldi	$r29,31376($r29)
ffffffff80910578:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091057c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910580:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910584:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910588:	a3 cf 10 fa 	ldi	$r16,-12381($r16)
ffffffff8091058c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910590:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910594:	70 7a bd fb 	ldi	$r29,31344($r29)
ffffffff80910598:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091059c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105a8:	b8 cf 10 fa 	ldi	$r16,-12360($r16)
ffffffff809105ac:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105b4:	50 7a bd fb 	ldi	$r29,31312($r29)
ffffffff809105b8:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff809105bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105c8:	cd cf 10 fa 	ldi	$r16,-12339($r16)
ffffffff809105cc:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105d4:	30 7a bd fb 	ldi	$r29,31280($r29)
ffffffff809105d8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809105dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105e8:	e2 cf 10 fa 	ldi	$r16,-12318($r16)
ffffffff809105ec:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105f4:	10 7a bd fb 	ldi	$r29,31248($r29)
ffffffff809105f8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809105fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910600:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910604:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910608:	f7 cf 10 fa 	ldi	$r16,-12297($r16)
ffffffff8091060c:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910610:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910614:	f0 79 bd fb 	ldi	$r29,31216($r29)
ffffffff80910618:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff8091061c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910620:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910624:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910628:	0c d0 10 fa 	ldi	$r16,-12276($r16)
ffffffff8091062c:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910630:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910634:	d0 79 bd fb 	ldi	$r29,31184($r29)
ffffffff80910638:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091063c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910640:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910644:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910648:	21 d0 10 fa 	ldi	$r16,-12255($r16)
ffffffff8091064c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910650:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910654:	b0 79 bd fb 	ldi	$r29,31152($r29)
ffffffff80910658:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091065c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910660:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910664:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910668:	36 d0 10 fa 	ldi	$r16,-12234($r16)
ffffffff8091066c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910670:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910674:	90 79 bd fb 	ldi	$r29,31120($r29)
ffffffff80910678:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091067c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910680:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910684:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910688:	4b d0 10 fa 	ldi	$r16,-12213($r16)
ffffffff8091068c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910690:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910694:	70 79 bd fb 	ldi	$r29,31088($r29)
ffffffff80910698:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091069c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106a8:	60 d0 10 fa 	ldi	$r16,-12192($r16)
ffffffff809106ac:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106b4:	50 79 bd fb 	ldi	$r29,31056($r29)
ffffffff809106b8:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff809106bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106c8:	75 d0 10 fa 	ldi	$r16,-12171($r16)
ffffffff809106cc:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106d4:	30 79 bd fb 	ldi	$r29,31024($r29)
ffffffff809106d8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809106dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106e8:	8a d0 10 fa 	ldi	$r16,-12150($r16)
ffffffff809106ec:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106f4:	10 79 bd fb 	ldi	$r29,30992($r29)
ffffffff809106f8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809106fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910700:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910704:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910708:	9f d0 10 fa 	ldi	$r16,-12129($r16)
ffffffff8091070c:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910710:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910714:	f0 78 bd fb 	ldi	$r29,30960($r29)
ffffffff80910718:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff8091071c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910720:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910724:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910728:	b4 d0 10 fa 	ldi	$r16,-12108($r16)
ffffffff8091072c:	98 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910734:	d0 78 bd fb 	ldi	$r29,30928($r29)
ffffffff80910738:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091073c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910740:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910744:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910748:	c9 d0 10 fa 	ldi	$r16,-12087($r16)
ffffffff8091074c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910750:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910754:	b0 78 bd fb 	ldi	$r29,30896($r29)
ffffffff80910758:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091075c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910760:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910764:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910768:	de d0 10 fa 	ldi	$r16,-12066($r16)
ffffffff8091076c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910770:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910774:	90 78 bd fb 	ldi	$r29,30864($r29)
ffffffff80910778:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091077c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910780:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910784:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910788:	f3 d0 10 fa 	ldi	$r16,-12045($r16)
ffffffff8091078c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910790:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910794:	70 78 bd fb 	ldi	$r29,30832($r29)
ffffffff80910798:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091079c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107a8:	08 d1 10 fa 	ldi	$r16,-12024($r16)
ffffffff809107ac:	78 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107b4:	50 78 bd fb 	ldi	$r29,30800($r29)
ffffffff809107b8:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff809107bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107c8:	1d d1 10 fa 	ldi	$r16,-12003($r16)
ffffffff809107cc:	70 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d4:	30 78 bd fb 	ldi	$r29,30768($r29)
ffffffff809107d8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809107dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107e8:	32 d1 10 fa 	ldi	$r16,-11982($r16)
ffffffff809107ec:	68 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107f4:	10 78 bd fb 	ldi	$r29,30736($r29)
ffffffff809107f8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809107fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910800:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910804:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910808:	47 d1 10 fa 	ldi	$r16,-11961($r16)
ffffffff8091080c:	60 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910814:	f0 77 bd fb 	ldi	$r29,30704($r29)
ffffffff80910818:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff8091081c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910820:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910824:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910828:	5c d1 10 fa 	ldi	$r16,-11940($r16)
ffffffff8091082c:	58 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910830:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910834:	d0 77 bd fb 	ldi	$r29,30672($r29)
ffffffff80910838:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091083c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910840:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910844:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910848:	71 d1 10 fa 	ldi	$r16,-11919($r16)
ffffffff8091084c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910854:	b0 77 bd fb 	ldi	$r29,30640($r29)
ffffffff80910858:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091085c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910860:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910864:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910868:	86 d1 10 fa 	ldi	$r16,-11898($r16)
ffffffff8091086c:	48 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910870:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910874:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910878:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091087c:	90 77 bd fb 	ldi	$r29,30608($r29)
ffffffff80910880:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910884:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910888:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091088c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910890 <do_entIF>:
ffffffff80910890:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910894:	70 77 bd fb 	ldi	$r29,30576($r29)
ffffffff80910898:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091089c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809108a0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809108a4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809108a8:	49 07 f0 43 	mov	$r16,$r9
ffffffff809108ac:	24 00 20 c0 	beq	$r1,ffffffff80910940 <do_entIF+0xb0>
ffffffff809108b0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff809108b4:	12 00 20 c4 	bne	$r1,ffffffff80910900 <do_entIF+0x70>
ffffffff809108b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108bc:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809108c0:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff809108c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108c8:	3c 77 bd fb 	ldi	$r29,30524($r29)
ffffffff809108cc:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809108d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809108d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108dc:	9b d1 10 fa 	ldi	$r16,-11877($r16)
ffffffff809108e0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809108e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108e8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809108ec:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108f0:	1c 77 bd fb 	ldi	$r29,30492($r29)
ffffffff809108f4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809108f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910900:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910904:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910908:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091090c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910910:	c6 d1 10 fa 	ldi	$r16,-11834($r16)
ffffffff80910914:	1e fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910918:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091091c:	f8 00 49 8c 	ldl	$r2,248($r9)
ffffffff80910920:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910924:	ff 43 3f fc 	ldih	$r1,17407
ffffffff80910928:	e8 76 bd fb 	ldi	$r29,30440($r29)
ffffffff8091092c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910930:	5f 07 21 f8 	ldi	$r1,1887($r1)
ffffffff80910934:	00 00 22 a8 	stw	$r1,0($r2)
ffffffff80910938:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091093c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910940:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910944:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910948:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091094c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910950:	b0 d1 10 fa 	ldi	$r16,-11856($r16)
ffffffff80910954:	0e fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910958:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091095c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910960:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910964:	a8 76 bd fb 	ldi	$r29,30376($r29)
ffffffff80910968:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091096c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910970 <interrupt_handler>:
ffffffff80910970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910974:	90 76 bd fb 	ldi	$r29,30352($r29)
ffffffff80910978:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091097c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910980:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910984:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910988:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091098c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910990:	1f 00 20 c0 	beq	$r1,ffffffff80910a10 <interrupt_handler+0xa0>
ffffffff80910994:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910998:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff8091099c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809100f0 <clock_set_next_event>
ffffffff809109a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109a4:	60 76 bd fb 	ldi	$r29,30304($r29)
ffffffff809109a8:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809109ac:	90 81 63 8c 	ldl	$r3,-32368($r3)
ffffffff809109b0:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff809109b4:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff809109b8:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff809109bc:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff809109c0:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff809109c4:	10 d2 63 8c 	ldl	$r3,-11760($r3)
ffffffff809109c8:	21 03 23 40 	umulh	$r1,$r3,$r1
ffffffff809109cc:	23 89 20 48 	srl	$r1,0x4,$r3
ffffffff809109d0:	41 01 60 48 	s4addl	$r3,0,$r1
ffffffff809109d4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109d8:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109dc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109e0:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109e4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109e8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809109ec:	21 01 41 40 	subl	$r2,$r1,$r1
ffffffff809109f0:	1b 00 20 c0 	beq	$r1,ffffffff80910a60 <interrupt_handler+0xf0>
ffffffff809109f4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109f8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109fc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a00:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a04:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a10:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a14:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80910a18:	91 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910a1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a20:	e4 75 bd fb 	ldi	$r29,30180($r29)
ffffffff80910a24:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910a28:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a2c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a30:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a34:	9b d1 10 fa 	ldi	$r16,-11877($r16)
ffffffff80910a38:	d5 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a40:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a44:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a48:	c4 75 bd fb 	ldi	$r29,30148($r29)
ffffffff80910a4c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a50:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a54:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a64:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a68:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a6c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910a70:	d8 d1 10 fa 	ldi	$r16,-11816($r16)
ffffffff80910a74:	c6 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a7c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a80:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a84:	88 75 bd fb 	ldi	$r29,30088($r29)
ffffffff80910a88:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a8c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a90 <exception_handler>:
ffffffff80910a90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a94:	70 75 bd fb 	ldi	$r29,30064($r29)
ffffffff80910a98:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910a9c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910aa0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910aa4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910aa8:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910aac:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910ab0:	1b 00 40 c4 	bne	$r2,ffffffff80910b20 <exception_handler+0x90>
ffffffff80910ab4:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910ab8:	11 00 20 c4 	bne	$r1,ffffffff80910b00 <exception_handler+0x70>
ffffffff80910abc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ac0:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80910ac4:	66 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910ac8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910acc:	38 75 bd fb 	ldi	$r29,30008($r29)
ffffffff80910ad0:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910ad4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ad8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910adc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ae0:	9b d1 10 fa 	ldi	$r16,-11877($r16)
ffffffff80910ae4:	aa fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910ae8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910aec:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910af0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910af4:	18 75 bd fb 	ldi	$r29,29976($r29)
ffffffff80910af8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910afc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b00:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b04:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b08:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b0c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b10:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910b14:	5e ff fb 0f 	jmp	$r31,($r27),ffffffff80910890 <do_entIF>
ffffffff80910b18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b20:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910b24:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff80910b28:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff80910b2c:	0b 00 00 c2 	beq	$r16,ffffffff80910b5c <exception_handler+0xcc>
ffffffff80910b30:	80 00 49 8e 	ldl	$r18,128($r9)
ffffffff80910b34:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff80910b38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b3c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80910b40:	a7 0d 5b 07 	call	ra,($r27),ffffffff809141e0 <do_pgfault>
ffffffff80910b44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b48:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b4c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b50:	bc 74 bd fb 	ldi	$r29,29884($r29)
ffffffff80910b54:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b58:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b5c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b60:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80910b64:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b68:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b6c:	75 00 3f fa 	ldi	$r17,117
ffffffff80910b70:	e2 d1 52 fa 	ldi	$r18,-11806($r18)
ffffffff80910b74:	f9 d1 10 fa 	ldi	$r16,-11783($r16)
ffffffff80910b78:	f1 fd 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80910b7c:	5f 07 ff 43 	nop	

ffffffff80910b80 <trap>:
ffffffff80910b80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b84:	80 74 bd fb 	ldi	$r29,29824($r29)
ffffffff80910b88:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910b8c:	04 00 20 c0 	beq	$r1,ffffffff80910ba0 <trap+0x20>
ffffffff80910b90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b94:	f8 81 7b 8f 	ldl	$r27,-32264($r27)
ffffffff80910b98:	bd ff fb 0f 	jmp	$r31,($r27),ffffffff80910a90 <exception_handler>
ffffffff80910b9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ba0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ba4:	78 81 7b 8f 	ldl	$r27,-32392($r27)
ffffffff80910ba8:	71 ff fb 0f 	jmp	$r31,($r27),ffffffff80910970 <interrupt_handler>
ffffffff80910bac:	5f 07 ff 43 	nop	

ffffffff80910bb0 <entInt>:
ffffffff80910bb0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910bb4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910bb8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910bbc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910bc0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910bc4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910bc8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910bcc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910bd0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910bd4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910bd8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910bdc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910be0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910be4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910be8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910bec:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910bf0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910bf4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910bf8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910bfc:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c00:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c04:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c08:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c0c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c10:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c14:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c18:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c1c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910c20:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910c24:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910c28:	00 00 1f fa 	ldi	$r16,0
ffffffff80910c2c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910c30:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910c34:	50 07 fe 43 	mov	sp,$r16
ffffffff80910c38:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910c3c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910c40 <entMM>:
ffffffff80910c40:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c44:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c48:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c4c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c50:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c54:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c58:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c5c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c60:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c64:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c68:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c6c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910c70:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910c74:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910c78:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910c7c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c80:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c84:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c88:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c8c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c90:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c94:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c98:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c9c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910ca0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910ca4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910ca8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910cac:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910cb0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910cb4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910cb8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910cbc:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cc0:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910cc4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cc8:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910ccc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910cd0 <entIF>:
ffffffff80910cd0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910cd4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910cd8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910cdc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910ce0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910ce4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910ce8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910cec:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910cf0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910cf4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910cf8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910cfc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910d00:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910d04:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910d08:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910d0c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d10:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d14:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d18:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d1c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d20:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d24:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d28:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d2c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d30:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d34:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d38:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d3c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d40:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d44:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d48:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d4c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d50:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910d54:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d58:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910d5c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910d60 <__trapret>:
ffffffff80910d60:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d64:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d68:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d6c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910d70:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910d74:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910d78:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910d7c:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910d80:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910d84:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910d88:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910d8c:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910d90:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910d94:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910d98:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910d9c:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910da0:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910da4:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910da8:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910dac:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910db0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910db4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910db8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910dc0 <default_init>:
ffffffff80910dc0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910dc4:	40 72 bd fb 	ldi	$r29,29248($r29)
ffffffff80910dc8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910dcc:	d0 81 21 8c 	ldl	$r1,-32304($r1)
ffffffff80910dd0:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80910dd4:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff80910dd8:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff80910ddc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910de0 <default_nr_free_pages>:
ffffffff80910de0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910de4:	20 72 bd fb 	ldi	$r29,29216($r29)
ffffffff80910de8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910dec:	d0 81 21 8c 	ldl	$r1,-32304($r1)
ffffffff80910df0:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff80910df4:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80910df8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910dfc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910e00 <default_free_pages>:
ffffffff80910e00:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e04:	00 72 bd fb 	ldi	$r29,29184($r29)
ffffffff80910e08:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e0c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e10:	99 00 20 c2 	beq	$r17,ffffffff80911078 <default_free_pages+0x278>
ffffffff80910e14:	84 01 20 4a 	s8addl	$r17,0,$r4
ffffffff80910e18:	04 01 91 40 	addl	$r4,$r17,$r4
ffffffff80910e1c:	84 01 80 48 	s8addl	$r4,0,$r4
ffffffff80910e20:	04 01 04 42 	addl	$r16,$r4,$r4
ffffffff80910e24:	01 05 04 42 	cmpeq	$r16,$r4,$r1
ffffffff80910e28:	12 00 20 c4 	bne	$r1,ffffffff80910e74 <default_free_pages+0x74>
ffffffff80910e2c:	08 00 50 88 	ldw	$r2,8($r16)
ffffffff80910e30:	41 29 40 48 	sra	$r2,0x1,$r1
ffffffff80910e34:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80910e38:	85 00 20 dc 	blbs	$r1,ffffffff80911050 <default_free_pages+0x250>
ffffffff80910e3c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80910e40:	07 00 e0 13 	br	ffffffff80910e60 <default_free_pages+0x60>
ffffffff80910e44:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e48:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e4c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e50:	08 00 61 88 	ldw	$r3,8($r1)
ffffffff80910e54:	42 29 60 48 	sra	$r3,0x1,$r2
ffffffff80910e58:	42 07 43 40 	or	$r2,$r3,$r2
ffffffff80910e5c:	7c 00 40 dc 	blbs	$r2,ffffffff80911050 <default_free_pages+0x250>
ffffffff80910e60:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80910e64:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff80910e68:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80910e6c:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80910e70:	f7 ff 5f c0 	beq	$r2,ffffffff80910e50 <default_free_pages+0x50>
ffffffff80910e74:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80910e78:	08 00 d0 f8 	ldi	$r6,8($r16)
ffffffff80910e7c:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80910e80:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80910e84:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80910e88:	01 00 5f f8 	ldi	$r2,1
ffffffff80910e8c:	20 10 5f 18 	wr_f	$r2
ffffffff80910e90:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80910e94:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e98:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80910e9c:	00 10 5f 18 	rd_f	$r2
ffffffff80910ea0:	79 00 40 c0 	beq	$r2,ffffffff80911088 <default_free_pages+0x288>
ffffffff80910ea4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff80910ea8:	d0 81 84 8c 	ldl	$r4,-32304($r4)
ffffffff80910eac:	10 00 44 88 	ldw	$r2,16($r4)
ffffffff80910eb0:	08 00 24 8c 	ldl	$r1,8($r4)
ffffffff80910eb4:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80910eb8:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80910ebc:	10 00 24 aa 	stw	$r17,16($r4)
ffffffff80910ec0:	07 00 40 c0 	beq	$r2,ffffffff80910ee0 <default_free_pages+0xe0>
ffffffff80910ec4:	3a 00 e0 13 	br	ffffffff80910fb0 <default_free_pages+0x1b0>
ffffffff80910ec8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ecc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ed0:	08 00 61 8c 	ldl	$r3,8($r1)
ffffffff80910ed4:	05 05 64 40 	cmpeq	$r3,$r4,$r5
ffffffff80910ed8:	3d 00 a0 c4 	bne	$r5,ffffffff80910fd0 <default_free_pages+0x1d0>
ffffffff80910edc:	41 07 e3 43 	mov	$r3,$r1
ffffffff80910ee0:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80910ee4:	63 05 02 42 	cmpult	$r16,$r2,$r3
ffffffff80910ee8:	45 07 e2 43 	mov	$r2,$r5
ffffffff80910eec:	f8 ff 7f c0 	beq	$r3,ffffffff80910ed0 <default_free_pages+0xd0>
ffffffff80910ef0:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff80910ef4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80910ef8:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80910efc:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80910f00:	02 05 64 40 	cmpeq	$r3,$r4,$r2
ffffffff80910f04:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80910f08:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff80910f0c:	0d 00 40 c4 	bne	$r2,ffffffff80910f44 <default_free_pages+0x144>
ffffffff80910f10:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80910f14:	e0 ff 43 f8 	ldi	$r2,-32($r3)
ffffffff80910f18:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80910f1c:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80910f20:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80910f24:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910f28:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80910f2c:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80910f30:	35 00 20 c4 	bne	$r1,ffffffff80911008 <default_free_pages+0x208>
ffffffff80910f34:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80910f38:	04 05 24 40 	cmpeq	$r1,$r4,$r4
ffffffff80910f3c:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80910f40:	18 00 80 c4 	bne	$r4,ffffffff80910fa4 <default_free_pages+0x1a4>
ffffffff80910f44:	18 00 90 88 	ldw	$r4,24($r16)
ffffffff80910f48:	23 ed 81 48 	zapnot	$r4,0xf,$r3
ffffffff80910f4c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80910f50:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80910f54:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80910f58:	02 01 02 42 	addl	$r16,$r2,$r2
ffffffff80910f5c:	05 05 a2 40 	cmpeq	$r5,$r2,$r5
ffffffff80910f60:	10 00 a0 c0 	beq	$r5,ffffffff80910fa4 <default_free_pages+0x1a4>
ffffffff80910f64:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff80910f68:	04 00 44 40 	addw	$r2,$r4,$r4
ffffffff80910f6c:	18 00 90 a8 	stw	$r4,24($r16)
ffffffff80910f70:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80910f74:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80910f78:	01 00 7f f8 	ldi	$r3,1
ffffffff80910f7c:	20 10 7f 18 	wr_f	$r3
ffffffff80910f80:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80910f84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f88:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff80910f8c:	00 10 7f 18 	rd_f	$r3
ffffffff80910f90:	3e 00 60 c0 	beq	$r3,ffffffff8091108c <default_free_pages+0x28c>
ffffffff80910f94:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80910f98:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80910f9c:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff80910fa0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80910fa4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910fa8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910fac:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910fb0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910fb4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80910fb8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80910fbc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80910fc0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80910fc4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80910fc8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910fcc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910fd0:	43 07 e1 43 	mov	$r1,$r3
ffffffff80910fd4:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80910fd8:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80910fdc:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80910fe0:	00 00 a4 ac 	stl	$r5,0($r4)
ffffffff80910fe4:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80910fe8:	28 00 90 ac 	stl	$r4,40($r16)
ffffffff80910fec:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80910ff0:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80910ff4:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80910ff8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910ffc:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911000:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911004:	cb ff 3f c0 	beq	$r1,ffffffff80910f34 <default_free_pages+0x134>
ffffffff80911008:	18 00 30 88 	ldw	$r1,24($r16)
ffffffff8091100c:	07 00 27 40 	addw	$r1,$r7,$r7
ffffffff80911010:	f8 ff e3 a8 	stw	$r7,-8($r3)
ffffffff80911014:	00 00 e6 f8 	ldi	$r7,0($r6)
ffffffff80911018:	00 00 27 20 	lldw	$r1,0($r7)
ffffffff8091101c:	01 00 bf f8 	ldi	$r5,1
ffffffff80911020:	20 10 bf 18 	wr_f	$r5
ffffffff80911024:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911028:	00 80 27 20 	lstw	$r1,0($r7)
ffffffff8091102c:	00 10 bf 18 	rd_f	$r5
ffffffff80911030:	17 00 a0 c0 	beq	$r5,ffffffff80911090 <default_free_pages+0x290>
ffffffff80911034:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911038:	20 00 b0 8c 	ldl	$r5,32($r16)
ffffffff8091103c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911040:	08 00 25 ac 	stl	$r1,8($r5)
ffffffff80911044:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911048:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091104c:	ba ff ff 13 	br	ffffffff80910f38 <default_free_pages+0x138>
ffffffff80911050:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911054:	8a 00 3f fa 	ldi	$r17,138
ffffffff80911058:	49 d2 73 fa 	ldi	$r19,-11703($r19)
ffffffff8091105c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911060:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911064:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911068:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091106c:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80911070:	33 d2 10 fa 	ldi	$r16,-11725($r16)
ffffffff80911074:	b2 fc 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80911078:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091107c:	87 00 3f fa 	ldi	$r17,135
ffffffff80911080:	18 d2 73 fa 	ldi	$r19,-11752($r19)
ffffffff80911084:	f5 ff ff 13 	br	ffffffff8091105c <default_free_pages+0x25c>
ffffffff80911088:	7e ff ff 13 	br	ffffffff80910e84 <default_free_pages+0x84>
ffffffff8091108c:	b9 ff ff 13 	br	ffffffff80910f74 <default_free_pages+0x174>
ffffffff80911090:	e1 ff ff 13 	br	ffffffff80911018 <default_free_pages+0x218>
ffffffff80911094:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911098:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091109c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809110a0 <default_init_memmap>:
ffffffff809110a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809110a4:	60 6f bd fb 	ldi	$r29,28512($r29)
ffffffff809110a8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809110ac:	00 00 5e af 	stl	ra,0(sp)
ffffffff809110b0:	5d 00 20 c2 	beq	$r17,ffffffff80911228 <default_init_memmap+0x188>
ffffffff809110b4:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff809110b8:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff809110bc:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff809110c0:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff809110c4:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff809110c8:	0d 00 20 c4 	bne	$r1,ffffffff80911100 <default_init_memmap+0x60>
ffffffff809110cc:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff809110d0:	4b 00 20 d8 	blbc	$r1,ffffffff80911200 <default_init_memmap+0x160>
ffffffff809110d4:	41 07 f0 43 	mov	$r16,$r1
ffffffff809110d8:	03 00 e0 13 	br	ffffffff809110e8 <default_init_memmap+0x48>
ffffffff809110dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110e0:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff809110e4:	46 00 40 d8 	blbc	$r2,ffffffff80911200 <default_init_memmap+0x160>
ffffffff809110e8:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff809110ec:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff809110f0:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff809110f4:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff809110f8:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff809110fc:	f8 ff 5f c0 	beq	$r2,ffffffff809110e0 <default_init_memmap+0x40>
ffffffff80911100:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911104:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911108:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff8091110c:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911110:	01 00 5f f8 	ldi	$r2,1
ffffffff80911114:	20 10 5f 18 	wr_f	$r2
ffffffff80911118:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff8091111c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911120:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911124:	00 10 5f 18 	rd_f	$r2
ffffffff80911128:	47 00 40 c0 	beq	$r2,ffffffff80911248 <default_init_memmap+0x1a8>
ffffffff8091112c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911130:	d0 81 63 8c 	ldl	$r3,-32304($r3)
ffffffff80911134:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911138:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091113c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911140:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911144:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911148:	25 00 40 c4 	bne	$r2,ffffffff809111e0 <default_init_memmap+0x140>
ffffffff8091114c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911150:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911154:	47 07 ff 43 	clr	$r7
ffffffff80911158:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff8091115c:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911160:	0a 00 40 c4 	bne	$r2,ffffffff8091118c <default_init_memmap+0xec>
ffffffff80911164:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911168:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091116c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911170:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911174:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911178:	0d 00 80 c4 	bne	$r4,ffffffff809111b0 <default_init_memmap+0x110>
ffffffff8091117c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911180:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911184:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911188:	f9 ff 5f c0 	beq	$r2,ffffffff80911170 <default_init_memmap+0xd0>
ffffffff8091118c:	2c 00 e0 c4 	bne	$r7,ffffffff80911240 <default_init_memmap+0x1a0>
ffffffff80911190:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911194:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911198:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff8091119c:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809111a0:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff809111a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809111a8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809111ac:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809111b0:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff809111b4:	46 07 e5 43 	mov	$r5,$r6
ffffffff809111b8:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff809111bc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809111c0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff809111c4:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff809111c8:	1b 00 20 c4 	bne	$r1,ffffffff80911238 <default_init_memmap+0x198>
ffffffff809111cc:	01 00 ff f8 	ldi	$r7,1
ffffffff809111d0:	41 07 e2 43 	mov	$r2,$r1
ffffffff809111d4:	ea ff ff 13 	br	ffffffff80911180 <default_init_memmap+0xe0>
ffffffff809111d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111e0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809111e4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff809111e8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809111ec:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809111f0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809111f4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff809111f8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809111fc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911200:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911204:	47 00 3f fa 	ldi	$r17,71
ffffffff80911208:	6e d2 73 fa 	ldi	$r19,-11666($r19)
ffffffff8091120c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911210:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911214:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911218:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091121c:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80911220:	33 d2 10 fa 	ldi	$r16,-11725($r16)
ffffffff80911224:	46 fc 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80911228:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091122c:	44 00 3f fa 	ldi	$r17,68
ffffffff80911230:	18 d2 73 fa 	ldi	$r19,-11752($r19)
ffffffff80911234:	f5 ff ff 13 	br	ffffffff8091120c <default_init_memmap+0x16c>
ffffffff80911238:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff8091123c:	d9 ff ff 13 	br	ffffffff809111a4 <default_init_memmap+0x104>
ffffffff80911240:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80911244:	d2 ff ff 13 	br	ffffffff80911190 <default_init_memmap+0xf0>
ffffffff80911248:	b0 ff ff 13 	br	ffffffff8091110c <default_init_memmap+0x6c>
ffffffff8091124c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911250 <best_fit_check>:
ffffffff80911250:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911254:	b0 6d bd fb 	ldi	$r29,28080($r29)
ffffffff80911258:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff8091125c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911260:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80911264:	d0 81 ce 8d 	ldl	$r14,-32304($r14)
ffffffff80911268:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091126c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911270:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911274:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911278:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff8091127c:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911280:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911284:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911288:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff8091128c:	b4 01 60 c4 	bne	$r3,ffffffff80911960 <best_fit_check+0x710>
ffffffff80911290:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80911294:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80911298:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff8091129c:	be 01 60 c0 	beq	$r3,ffffffff80911998 <best_fit_check+0x748>
ffffffff809112a0:	49 07 ff 43 	clr	$r9
ffffffff809112a4:	4a 07 ff 43 	clr	$r10
ffffffff809112a8:	04 00 e0 13 	br	ffffffff809112bc <best_fit_check+0x6c>
ffffffff809112ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112b0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff809112b4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809112b8:	b7 01 60 c0 	beq	$r3,ffffffff80911998 <best_fit_check+0x748>
ffffffff809112bc:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff809112c0:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809112c4:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff809112c8:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff809112cc:	09 00 89 40 	addw	$r4,$r9,$r9
ffffffff809112d0:	f7 ff 7f c0 	beq	$r3,ffffffff809112b0 <best_fit_check+0x60>
ffffffff809112d4:	4b 07 e9 43 	mov	$r9,$r11
ffffffff809112d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112dc:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff809112e0:	5f 02 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff809112e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809112e8:	00 05 0b 40 	cmpeq	$r0,$r11,$r0
ffffffff809112ec:	1c 6d bd fb 	ldi	$r29,27932($r29)
ffffffff809112f0:	9f 01 00 c0 	beq	$r0,ffffffff80911970 <best_fit_check+0x720>
ffffffff809112f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112f8:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809112fc:	01 00 1f fa 	ldi	$r16,1
ffffffff80911300:	2b 02 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911304:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911308:	fc 6c bd fb 	ldi	$r29,27900($r29)
ffffffff8091130c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911310:	c1 00 3f fa 	ldi	$r17,193
ffffffff80911314:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911318:	97 d2 73 fa 	ldi	$r19,-11625($r19)
ffffffff8091131c:	97 01 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911320:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911324:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911328:	01 00 1f fa 	ldi	$r16,1
ffffffff8091132c:	20 02 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911330:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911334:	d0 6c bd fb 	ldi	$r29,27856($r29)
ffffffff80911338:	4d 07 e0 43 	mov	$r0,$r13
ffffffff8091133c:	c2 00 3f fa 	ldi	$r17,194
ffffffff80911340:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911344:	b3 d2 73 fa 	ldi	$r19,-11597($r19)
ffffffff80911348:	8c 01 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff8091134c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911350:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911354:	01 00 1f fa 	ldi	$r16,1
ffffffff80911358:	15 02 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff8091135c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911360:	a4 6c bd fb 	ldi	$r29,27812($r29)
ffffffff80911364:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911368:	c3 00 3f fa 	ldi	$r17,195
ffffffff8091136c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911370:	cf d2 73 fa 	ldi	$r19,-11569($r19)
ffffffff80911374:	81 01 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911378:	03 05 a0 41 	cmpeq	$r13,$r0,$r3
ffffffff8091137c:	05 05 60 41 	cmpeq	$r11,$r0,$r5
ffffffff80911380:	01 05 6d 41 	cmpeq	$r11,$r13,$r1
ffffffff80911384:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911388:	44 07 e3 43 	mov	$r3,$r4
ffffffff8091138c:	c5 00 3f fa 	ldi	$r17,197
ffffffff80911390:	eb d2 73 fa 	ldi	$r19,-11541($r19)
ffffffff80911394:	43 07 85 40 	or	$r4,$r5,$r3
ffffffff80911398:	41 07 23 40 	or	$r1,$r3,$r1
ffffffff8091139c:	77 01 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809113a0:	00 00 2b 88 	ldw	$r1,0($r11)
ffffffff809113a4:	80 01 20 c4 	bne	$r1,ffffffff809119a8 <best_fit_check+0x758>
ffffffff809113a8:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809113ac:	7e 01 20 c4 	bne	$r1,ffffffff809119a8 <best_fit_check+0x758>
ffffffff809113b0:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff809113b4:	7c 01 20 c4 	bne	$r1,ffffffff809119a8 <best_fit_check+0x758>
ffffffff809113b8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809113bc:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff809113c0:	ff ff fd fc 	ldih	$r7,-1($r29)
ffffffff809113c4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809113c8:	c8 81 63 8c 	ldl	$r3,-32312($r3)
ffffffff809113cc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809113d0:	28 d5 07 8d 	ldl	$r8,-10968($r7)
ffffffff809113d4:	c8 00 3f fa 	ldi	$r17,200
ffffffff809113d8:	48 d3 73 fa 	ldi	$r19,-11448($r19)
ffffffff809113dc:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809113e0:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff809113e4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809113e8:	d0 80 63 8c 	ldl	$r3,-32560($r3)
ffffffff809113ec:	24 01 61 41 	subl	$r11,$r1,$r4
ffffffff809113f0:	44 69 80 48 	sra	$r4,0x3,$r4
ffffffff809113f4:	00 00 a3 8c 	ldl	$r5,0($r3)
ffffffff809113f8:	04 03 88 40 	mull	$r4,$r8,$r4
ffffffff809113fc:	05 a9 a1 48 	sll	$r5,0xd,$r5
ffffffff80911400:	04 01 86 40 	addl	$r4,$r6,$r4
ffffffff80911404:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80911408:	64 05 85 40 	cmpult	$r4,$r5,$r4
ffffffff8091140c:	5b 01 80 c0 	beq	$r4,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911410:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80911414:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911418:	c9 00 3f fa 	ldi	$r17,201
ffffffff8091141c:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80911420:	65 d3 73 fa 	ldi	$r19,-11419($r19)
ffffffff80911424:	03 03 68 40 	mull	$r3,$r8,$r3
ffffffff80911428:	03 01 66 40 	addl	$r3,$r6,$r3
ffffffff8091142c:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff80911430:	83 05 a3 40 	cmpule	$r5,$r3,$r3
ffffffff80911434:	51 01 60 c4 	bne	$r3,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911438:	28 d5 67 8c 	ldl	$r3,-10968($r7)
ffffffff8091143c:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff80911440:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911444:	ca 00 3f fa 	ldi	$r17,202
ffffffff80911448:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff8091144c:	82 d3 73 fa 	ldi	$r19,-11390($r19)
ffffffff80911450:	01 03 23 40 	mull	$r1,$r3,$r1
ffffffff80911454:	01 01 26 40 	addl	$r1,$r6,$r1
ffffffff80911458:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff8091145c:	81 05 a1 40 	cmpule	$r5,$r1,$r1
ffffffff80911460:	46 01 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911464:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911468:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091146c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911470:	01 00 1f fa 	ldi	$r16,1
ffffffff80911474:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80911478:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff8091147c:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80911480:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80911484:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911488:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff8091148c:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80911490:	c7 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911494:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911498:	6c 6b bd fb 	ldi	$r29,27500($r29)
ffffffff8091149c:	d3 00 3f fa 	ldi	$r17,211
ffffffff809114a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809114a4:	9f d3 73 fa 	ldi	$r19,-11361($r19)
ffffffff809114a8:	34 01 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809114ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114b0:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809114b4:	01 00 3f fa 	ldi	$r17,1
ffffffff809114b8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809114bc:	d4 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809114c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114c4:	40 6b bd fb 	ldi	$r29,27456($r29)
ffffffff809114c8:	01 00 3f fa 	ldi	$r17,1
ffffffff809114cc:	50 07 ed 43 	mov	$r13,$r16
ffffffff809114d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114d4:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809114d8:	cd 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809114dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114e0:	24 6b bd fb 	ldi	$r29,27428($r29)
ffffffff809114e4:	01 00 3f fa 	ldi	$r17,1
ffffffff809114e8:	50 07 ec 43 	mov	$r12,$r16
ffffffff809114ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114f0:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809114f4:	c6 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809114f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114fc:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911500:	08 6b bd fb 	ldi	$r29,27400($r29)
ffffffff80911504:	d8 00 3f fa 	ldi	$r17,216
ffffffff80911508:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091150c:	b4 d3 73 fa 	ldi	$r19,-11340($r19)
ffffffff80911510:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80911514:	19 01 20 c0 	beq	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911518:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091151c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911520:	01 00 1f fa 	ldi	$r16,1
ffffffff80911524:	a2 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911528:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091152c:	d8 6a bd fb 	ldi	$r29,27352($r29)
ffffffff80911530:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911534:	da 00 3f fa 	ldi	$r17,218
ffffffff80911538:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091153c:	97 d2 73 fa 	ldi	$r19,-11625($r19)
ffffffff80911540:	0e 01 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911544:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911548:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091154c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911550:	97 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911554:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911558:	ac 6a bd fb 	ldi	$r29,27308($r29)
ffffffff8091155c:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911560:	db 00 3f fa 	ldi	$r17,219
ffffffff80911564:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911568:	b3 d2 73 fa 	ldi	$r19,-11597($r19)
ffffffff8091156c:	03 01 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911570:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911574:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911578:	01 00 1f fa 	ldi	$r16,1
ffffffff8091157c:	8c 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911584:	80 6a bd fb 	ldi	$r29,27264($r29)
ffffffff80911588:	4c 07 e0 43 	mov	$r0,$r12
ffffffff8091158c:	dc 00 3f fa 	ldi	$r17,220
ffffffff80911590:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911594:	cf d2 73 fa 	ldi	$r19,-11569($r19)
ffffffff80911598:	f8 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff8091159c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115a0:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809115a4:	01 00 1f fa 	ldi	$r16,1
ffffffff809115a8:	81 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff809115ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115b0:	54 6a bd fb 	ldi	$r29,27220($r29)
ffffffff809115b4:	de 00 3f fa 	ldi	$r17,222
ffffffff809115b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115bc:	9f d3 73 fa 	ldi	$r19,-11361($r19)
ffffffff809115c0:	ee 00 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809115c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115c8:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809115cc:	01 00 3f fa 	ldi	$r17,1
ffffffff809115d0:	50 07 eb 43 	mov	$r11,$r16
ffffffff809115d4:	8e 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809115d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115dc:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809115e0:	28 6a bd fb 	ldi	$r29,27176($r29)
ffffffff809115e4:	e1 00 3f fa 	ldi	$r17,225
ffffffff809115e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115ec:	c1 d3 73 fa 	ldi	$r19,-11327($r19)
ffffffff809115f0:	01 05 2e 40 	cmpeq	$r1,$r14,$r1
ffffffff809115f4:	e1 00 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809115f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115fc:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911600:	01 00 1f fa 	ldi	$r16,1
ffffffff80911604:	6a 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911608:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091160c:	f8 69 bd fb 	ldi	$r29,27128($r29)
ffffffff80911610:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff80911614:	e4 00 3f fa 	ldi	$r17,228
ffffffff80911618:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091161c:	d9 d3 73 fa 	ldi	$r19,-11303($r19)
ffffffff80911620:	d6 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911624:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911628:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091162c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911630:	5f 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911634:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911638:	cc 69 bd fb 	ldi	$r29,27084($r29)
ffffffff8091163c:	e5 00 3f fa 	ldi	$r17,229
ffffffff80911640:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911644:	9f d3 73 fa 	ldi	$r19,-11361($r19)
ffffffff80911648:	cc 00 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff8091164c:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911650:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911654:	e7 00 3f fa 	ldi	$r17,231
ffffffff80911658:	f2 d3 73 fa 	ldi	$r19,-11278($r19)
ffffffff8091165c:	c7 00 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911660:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911664:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911668:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff8091166c:	01 00 3f fa 	ldi	$r17,1
ffffffff80911670:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911674:	00 00 ee ad 	stl	fp,0($r14)
ffffffff80911678:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff8091167c:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80911680:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff80911684:	62 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff80911688:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091168c:	78 69 bd fb 	ldi	$r29,27000($r29)
ffffffff80911690:	01 00 3f fa 	ldi	$r17,1
ffffffff80911694:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911698:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091169c:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809116a0:	5b 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809116a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116a8:	5c 69 bd fb 	ldi	$r29,26972($r29)
ffffffff809116ac:	01 00 3f fa 	ldi	$r17,1
ffffffff809116b0:	50 07 ec 43 	mov	$r12,$r16
ffffffff809116b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116b8:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809116bc:	54 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809116c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116c4:	40 69 bd fb 	ldi	$r29,26944($r29)
ffffffff809116c8:	05 00 1f fa 	ldi	$r16,5
ffffffff809116cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116d0:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809116d4:	36 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff809116d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116dc:	28 69 bd fb 	ldi	$r29,26920($r29)
ffffffff809116e0:	4f 07 e0 43 	mov	$r0,fp
ffffffff809116e4:	49 01 3f fa 	ldi	$r17,329
ffffffff809116e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116ec:	ff d3 73 fa 	ldi	$r19,-11265($r19)
ffffffff809116f0:	a2 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809116f4:	08 00 20 88 	ldw	$r1,8($r0)
ffffffff809116f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116fc:	4a 01 3f fa 	ldi	$r17,330
ffffffff80911700:	0a d4 73 fa 	ldi	$r19,-11254($r19)
ffffffff80911704:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff80911708:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff8091170c:	9b 00 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911710:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911714:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911718:	00 00 ae 8d 	ldl	$r13,0($r14)
ffffffff8091171c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911720:	08 00 8e 8d 	ldl	$r12,8($r14)
ffffffff80911724:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80911728:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff8091172c:	20 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911734:	d0 68 bd fb 	ldi	$r29,26832($r29)
ffffffff80911738:	53 01 3f fa 	ldi	$r17,339
ffffffff8091173c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911740:	9f d3 73 fa 	ldi	$r19,-11361($r19)
ffffffff80911744:	8d 00 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911748:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff8091174c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911750:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911754:	02 00 3f fa 	ldi	$r17,2
ffffffff80911758:	48 00 0f fa 	ldi	$r16,72(fp)
ffffffff8091175c:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80911760:	20 01 6f f9 	ldi	$r11,288(fp)
ffffffff80911764:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80911768:	29 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff8091176c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911770:	94 68 bd fb 	ldi	$r29,26772($r29)
ffffffff80911774:	01 00 3f fa 	ldi	$r17,1
ffffffff80911778:	50 07 eb 43 	mov	$r11,$r16
ffffffff8091177c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911780:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911784:	22 01 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff80911788:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091178c:	78 68 bd fb 	ldi	$r29,26744($r29)
ffffffff80911790:	04 00 1f fa 	ldi	$r16,4
ffffffff80911794:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911798:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091179c:	04 01 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff809117a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117a4:	60 68 bd fb 	ldi	$r29,26720($r29)
ffffffff809117a8:	5f 01 3f fa 	ldi	$r17,351
ffffffff809117ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809117b0:	1c d4 73 fa 	ldi	$r19,-11236($r19)
ffffffff809117b4:	71 00 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809117b8:	50 00 2f 88 	ldw	$r1,80(fp)
ffffffff809117bc:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff809117c0:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff809117c4:	7c 00 20 c0 	beq	$r1,ffffffff809119b8 <best_fit_check+0x768>
ffffffff809117c8:	60 00 2f 88 	ldw	$r1,96(fp)
ffffffff809117cc:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff809117d0:	79 00 20 c0 	beq	$r1,ffffffff809119b8 <best_fit_check+0x768>
ffffffff809117d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117d8:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809117dc:	01 00 1f fa 	ldi	$r16,1
ffffffff809117e0:	f3 00 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff809117e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117e8:	1c 68 bd fb 	ldi	$r29,26652($r29)
ffffffff809117ec:	62 01 3f fa 	ldi	$r17,354
ffffffff809117f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809117f4:	5f d4 73 fa 	ldi	$r19,-11169($r19)
ffffffff809117f8:	60 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809117fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911800:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911804:	02 00 1f fa 	ldi	$r16,2
ffffffff80911808:	50 00 1e ac 	stl	$r0,80(sp)
ffffffff8091180c:	e8 00 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911814:	f0 67 bd fb 	ldi	$r29,26608($r29)
ffffffff80911818:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff8091181c:	63 01 3f fa 	ldi	$r17,355
ffffffff80911820:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911824:	7d d4 73 fa 	ldi	$r19,-11139($r19)
ffffffff80911828:	54 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff8091182c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911830:	0b 05 61 41 	cmpeq	$r11,$r1,$r11
ffffffff80911834:	64 01 3f fa 	ldi	$r17,356
ffffffff80911838:	94 d4 73 fa 	ldi	$r19,-11116($r19)
ffffffff8091183c:	4f 00 60 c1 	beq	$r11,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911840:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911844:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911848:	05 00 3f fa 	ldi	$r17,5
ffffffff8091184c:	50 07 ef 43 	mov	fp,$r16
ffffffff80911850:	ef 00 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff80911854:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911858:	ac 67 bd fb 	ldi	$r29,26540($r29)
ffffffff8091185c:	05 00 1f fa 	ldi	$r16,5
ffffffff80911860:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911864:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911868:	d1 00 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff8091186c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911870:	94 67 bd fb 	ldi	$r29,26516($r29)
ffffffff80911874:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911878:	6c 01 3f fa 	ldi	$r17,364
ffffffff8091187c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911880:	a1 d4 73 fa 	ldi	$r19,-11103($r19)
ffffffff80911884:	3d 00 00 c0 	beq	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911888:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091188c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911890:	01 00 1f fa 	ldi	$r16,1
ffffffff80911894:	c6 00 5b 07 	call	ra,($r27),ffffffff80911bb0 <alloc_pages>
ffffffff80911898:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091189c:	68 67 bd fb 	ldi	$r29,26472($r29)
ffffffff809118a0:	6d 01 3f fa 	ldi	$r17,365
ffffffff809118a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118a8:	9f d3 73 fa 	ldi	$r19,-11361($r19)
ffffffff809118ac:	33 00 00 c4 	bne	$r0,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809118b0:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809118b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118b8:	73 01 3f fa 	ldi	$r17,371
ffffffff809118bc:	f2 d3 73 fa 	ldi	$r19,-11278($r19)
ffffffff809118c0:	2e 00 20 c4 	bne	$r1,ffffffff8091197c <best_fit_check+0x72c>
ffffffff809118c4:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff809118c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118cc:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809118d0:	05 00 3f fa 	ldi	$r17,5
ffffffff809118d4:	50 07 eb 43 	mov	$r11,$r16
ffffffff809118d8:	00 00 ae ad 	stl	$r13,0($r14)
ffffffff809118dc:	08 00 8e ad 	stl	$r12,8($r14)
ffffffff809118e0:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff809118e4:	ca 00 5b 07 	call	ra,($r27),ffffffff80911c10 <free_pages>
ffffffff809118e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118ec:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809118f0:	18 67 bd fb 	ldi	$r29,26392($r29)
ffffffff809118f4:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff809118f8:	07 00 60 c4 	bne	$r3,ffffffff80911918 <best_fit_check+0x6c8>
ffffffff809118fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911900:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80911904:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911908:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff8091190c:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911910:	29 00 24 41 	subw	$r9,$r4,$r9
ffffffff80911914:	fa ff 7f c0 	beq	$r3,ffffffff80911900 <best_fit_check+0x6b0>
ffffffff80911918:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091191c:	7f 01 3f fa 	ldi	$r17,383
ffffffff80911920:	bf d4 73 fa 	ldi	$r19,-11073($r19)
ffffffff80911924:	15 00 40 c5 	bne	$r10,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911928:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091192c:	80 01 3f fa 	ldi	$r17,384
ffffffff80911930:	ca d4 73 fa 	ldi	$r19,-11062($r19)
ffffffff80911934:	11 00 20 c5 	bne	$r9,ffffffff8091197c <best_fit_check+0x72c>
ffffffff80911938:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091193c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911940:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911944:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911948:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091194c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911950:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911954:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911958:	60 00 de fb 	ldi	sp,96(sp)
ffffffff8091195c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911960:	4b 07 ff 43 	clr	$r11
ffffffff80911964:	49 07 ff 43 	clr	$r9
ffffffff80911968:	4a 07 ff 43 	clr	$r10
ffffffff8091196c:	5a fe ff 13 	br	ffffffff809112d8 <best_fit_check+0x88>
ffffffff80911970:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911974:	40 01 3f fa 	ldi	$r17,320
ffffffff80911978:	7e d2 73 fa 	ldi	$r19,-11650($r19)
ffffffff8091197c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911980:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911984:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911988:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091198c:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80911990:	33 d2 10 fa 	ldi	$r16,-11725($r16)
ffffffff80911994:	6a fa 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80911998:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091199c:	3d 01 3f fa 	ldi	$r17,317
ffffffff809119a0:	5e d2 73 fa 	ldi	$r19,-11682($r19)
ffffffff809119a4:	f5 ff ff 13 	br	ffffffff8091197c <best_fit_check+0x72c>
ffffffff809119a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119ac:	c6 00 3f fa 	ldi	$r17,198
ffffffff809119b0:	0c d3 73 fa 	ldi	$r19,-11508($r19)
ffffffff809119b4:	f1 ff ff 13 	br	ffffffff8091197c <best_fit_check+0x72c>
ffffffff809119b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119bc:	60 01 3f fa 	ldi	$r17,352
ffffffff809119c0:	33 d4 73 fa 	ldi	$r19,-11213($r19)
ffffffff809119c4:	ed ff ff 13 	br	ffffffff8091197c <best_fit_check+0x72c>
ffffffff809119c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809119cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809119d0 <default_alloc_pages>:
ffffffff809119d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809119d4:	30 66 bd fb 	ldi	$r29,26160($r29)
ffffffff809119d8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809119dc:	00 00 5e af 	stl	ra,0(sp)
ffffffff809119e0:	54 00 00 c2 	beq	$r16,ffffffff80911b34 <default_alloc_pages+0x164>
ffffffff809119e4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809119e8:	d0 81 63 8c 	ldl	$r3,-32304($r3)
ffffffff809119ec:	40 07 ff 43 	clr	$r0
ffffffff809119f0:	10 00 83 88 	ldw	$r4,16($r3)
ffffffff809119f4:	42 07 e3 43 	mov	$r3,$r2
ffffffff809119f8:	21 ed 81 48 	zapnot	$r4,0xf,$r1
ffffffff809119fc:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff80911a00:	07 00 20 c0 	beq	$r1,ffffffff80911a20 <default_alloc_pages+0x50>
ffffffff80911a04:	12 00 e0 13 	br	ffffffff80911a50 <default_alloc_pages+0x80>
ffffffff80911a08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a10:	f8 ff 22 88 	ldw	$r1,-8($r2)
ffffffff80911a14:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911a18:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911a1c:	10 00 20 c4 	bne	$r1,ffffffff80911a60 <default_alloc_pages+0x90>
ffffffff80911a20:	08 00 42 8c 	ldl	$r2,8($r2)
ffffffff80911a24:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80911a28:	f9 ff 3f c0 	beq	$r1,ffffffff80911a10 <default_alloc_pages+0x40>
ffffffff80911a2c:	04 00 e0 13 	br	ffffffff80911a40 <default_alloc_pages+0x70>
ffffffff80911a30:	f8 ff 22 88 	ldw	$r1,-8($r2)
ffffffff80911a34:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911a38:	81 05 01 42 	cmpule	$r16,$r1,$r1
ffffffff80911a3c:	38 00 20 c4 	bne	$r1,ffffffff80911b20 <default_alloc_pages+0x150>
ffffffff80911a40:	08 00 42 8c 	ldl	$r2,8($r2)
ffffffff80911a44:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80911a48:	f9 ff 3f c0 	beq	$r1,ffffffff80911a30 <default_alloc_pages+0x60>
ffffffff80911a4c:	40 07 ff 43 	clr	$r0
ffffffff80911a50:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911a54:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911a58:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911a5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a60:	e0 ff 02 f8 	ldi	$r0,-32($r2)
ffffffff80911a64:	f6 ff 1f c0 	beq	$r0,ffffffff80911a40 <default_alloc_pages+0x70>
ffffffff80911a68:	18 00 a0 88 	ldw	$r5,24($r0)
ffffffff80911a6c:	20 00 40 8c 	ldl	$r2,32($r0)
ffffffff80911a70:	07 00 f0 43 	addw	$r31,$r16,$r7
ffffffff80911a74:	28 00 c0 8c 	ldl	$r6,40($r0)
ffffffff80911a78:	21 ed a1 48 	zapnot	$r5,0xf,$r1
ffffffff80911a7c:	08 00 c2 ac 	stl	$r6,8($r2)
ffffffff80911a80:	61 05 01 42 	cmpult	$r16,$r1,$r1
ffffffff80911a84:	00 00 46 ac 	stl	$r2,0($r6)
ffffffff80911a88:	15 00 20 c0 	beq	$r1,ffffffff80911ae0 <default_alloc_pages+0x110>
ffffffff80911a8c:	81 01 00 4a 	s8addl	$r16,0,$r1
ffffffff80911a90:	25 00 a7 40 	subw	$r5,$r7,$r5
ffffffff80911a94:	01 01 30 40 	addl	$r1,$r16,$r1
ffffffff80911a98:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911a9c:	01 01 01 40 	addl	$r0,$r1,$r1
ffffffff80911aa0:	18 00 a1 a8 	stw	$r5,24($r1)
ffffffff80911aa4:	08 00 c1 f8 	ldi	$r6,8($r1)
ffffffff80911aa8:	00 00 86 20 	lldw	$r4,0($r6)
ffffffff80911aac:	01 00 bf f8 	ldi	$r5,1
ffffffff80911ab0:	20 10 bf 18 	wr_f	$r5
ffffffff80911ab4:	44 47 80 48 	or	$r4,0x2,$r4
ffffffff80911ab8:	00 80 86 20 	lstw	$r4,0($r6)
ffffffff80911abc:	00 10 bf 18 	rd_f	$r5
ffffffff80911ac0:	27 00 a0 c0 	beq	$r5,ffffffff80911b60 <default_alloc_pages+0x190>
ffffffff80911ac4:	08 00 a2 8c 	ldl	$r5,8($r2)
ffffffff80911ac8:	20 00 c1 f8 	ldi	$r6,32($r1)
ffffffff80911acc:	10 00 83 88 	ldw	$r4,16($r3)
ffffffff80911ad0:	00 00 c5 ac 	stl	$r6,0($r5)
ffffffff80911ad4:	08 00 c2 ac 	stl	$r6,8($r2)
ffffffff80911ad8:	28 00 a1 ac 	stl	$r5,40($r1)
ffffffff80911adc:	20 00 41 ac 	stl	$r2,32($r1)
ffffffff80911ae0:	24 00 87 40 	subw	$r4,$r7,$r4
ffffffff80911ae4:	10 00 83 a8 	stw	$r4,16($r3)
ffffffff80911ae8:	08 00 60 f8 	ldi	$r3,8($r0)
ffffffff80911aec:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911af0:	01 00 5f f8 	ldi	$r2,1
ffffffff80911af4:	20 10 5f 18 	wr_f	$r2
ffffffff80911af8:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911afc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b00:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911b04:	00 10 5f 18 	rd_f	$r2
ffffffff80911b08:	16 00 40 c0 	beq	$r2,ffffffff80911b64 <default_alloc_pages+0x194>
ffffffff80911b0c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911b10:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911b14:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911b18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b20:	e0 ff 02 f8 	ldi	$r0,-32($r2)
ffffffff80911b24:	d0 ff 1f c4 	bne	$r0,ffffffff80911a68 <default_alloc_pages+0x98>
ffffffff80911b28:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911b2c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911b30:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911b34:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b38:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911b3c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b40:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b44:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b48:	60 00 3f fa 	ldi	$r17,96
ffffffff80911b4c:	18 d2 73 fa 	ldi	$r19,-11752($r19)
ffffffff80911b50:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80911b54:	33 d2 10 fa 	ldi	$r16,-11725($r16)
ffffffff80911b58:	f9 f9 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80911b5c:	5f 07 ff 43 	nop	
ffffffff80911b60:	d1 ff ff 13 	br	ffffffff80911aa8 <default_alloc_pages+0xd8>
ffffffff80911b64:	e1 ff ff 13 	br	ffffffff80911aec <default_alloc_pages+0x11c>
ffffffff80911b68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b6c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911b70 <pa2page.part.4>:
ffffffff80911b70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911b74:	90 64 bd fb 	ldi	$r29,25744($r29)
ffffffff80911b78:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b7c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911b80:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911b84:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b88:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b8c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911b90:	6f 00 3f fa 	ldi	$r17,111
ffffffff80911b94:	30 d5 52 fa 	ldi	$r18,-10960($r18)
ffffffff80911b98:	4f d5 10 fa 	ldi	$r16,-10929($r16)
ffffffff80911b9c:	e8 f9 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80911ba0:	5f 07 ff 43 	nop	
	...

ffffffff80911bb0 <alloc_pages>:
ffffffff80911bb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911bb4:	50 64 bd fb 	ldi	$r29,25680($r29)
ffffffff80911bb8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911bbc:	42 07 f0 43 	mov	$r16,$r2
ffffffff80911bc0:	07 00 1f fa 	ldi	$r16,7
ffffffff80911bc4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911bc8:	35 00 00 02 	sys_call	0x35
ffffffff80911bcc:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911bd0:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911bd4:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911bd8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911bdc:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80911be0:	00 00 5b 07 	call	ra,($r27),ffffffff80911be4 <alloc_pages+0x34>
ffffffff80911be4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911be8:	1c 64 bd fb 	ldi	$r29,25628($r29)
ffffffff80911bec:	42 07 e0 43 	mov	$r0,$r2
ffffffff80911bf0:	50 07 ff 43 	clr	$r16
ffffffff80911bf4:	35 00 00 02 	sys_call	0x35
ffffffff80911bf8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911bfc:	40 07 e2 43 	mov	$r2,$r0
ffffffff80911c00:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911c04:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911c08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c0c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911c10 <free_pages>:
ffffffff80911c10:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911c14:	f0 63 bd fb 	ldi	$r29,25584($r29)
ffffffff80911c18:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911c1c:	42 07 f0 43 	mov	$r16,$r2
ffffffff80911c20:	07 00 1f fa 	ldi	$r16,7
ffffffff80911c24:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911c28:	35 00 00 02 	sys_call	0x35
ffffffff80911c2c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911c30:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911c34:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911c38:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911c3c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80911c40:	00 00 5b 07 	call	ra,($r27),ffffffff80911c44 <free_pages+0x34>
ffffffff80911c44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c48:	bc 63 bd fb 	ldi	$r29,25532($r29)
ffffffff80911c4c:	50 07 ff 43 	clr	$r16
ffffffff80911c50:	35 00 00 02 	sys_call	0x35
ffffffff80911c54:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911c58:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911c5c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911c60 <nr_free_pages>:
ffffffff80911c60:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911c64:	a0 63 bd fb 	ldi	$r29,25504($r29)
ffffffff80911c68:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911c6c:	07 00 1f fa 	ldi	$r16,7
ffffffff80911c70:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911c74:	35 00 00 02 	sys_call	0x35
ffffffff80911c78:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911c7c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911c80:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911c84:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80911c88:	00 00 5b 07 	call	ra,($r27),ffffffff80911c8c <nr_free_pages+0x2c>
ffffffff80911c8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c90:	74 63 bd fb 	ldi	$r29,25460($r29)
ffffffff80911c94:	42 07 e0 43 	mov	$r0,$r2
ffffffff80911c98:	50 07 ff 43 	clr	$r16
ffffffff80911c9c:	35 00 00 02 	sys_call	0x35
ffffffff80911ca0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ca4:	40 07 e2 43 	mov	$r2,$r0
ffffffff80911ca8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911cac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911cb0 <get_pte>:
ffffffff80911cb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911cb4:	50 63 bd fb 	ldi	$r29,25424($r29)
ffffffff80911cb8:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80911cbc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911cc0:	0d 69 21 4a 	sll	$r17,0xb,$r13
ffffffff80911cc4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911cc8:	4a 07 f1 43 	mov	$r17,$r10
ffffffff80911ccc:	2d c9 a6 49 	srl	$r13,0x36,$r13
ffffffff80911cd0:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911cd4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911cd8:	4b 07 f2 43 	mov	$r18,$r11
ffffffff80911cdc:	8d 01 a0 49 	s8addl	$r13,0,$r13
ffffffff80911ce0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911ce4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911ce8:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80911cec:	0d 01 0d 42 	addl	$r16,$r13,$r13
ffffffff80911cf0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911cf4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911cf8:	00 00 6d 8e 	ldl	$r19,0($r13)
ffffffff80911cfc:	38 00 60 de 	blbs	$r19,ffffffff80911de0 <get_pte+0x130>
ffffffff80911d00:	db 00 40 c2 	beq	$r18,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911d04:	07 00 1f fa 	ldi	$r16,7
ffffffff80911d08:	35 00 00 02 	sys_call	0x35
ffffffff80911d0c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911d10:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911d14:	01 00 1f fa 	ldi	$r16,1
ffffffff80911d18:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911d1c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80911d20:	00 00 5b 07 	call	ra,($r27),ffffffff80911d24 <get_pte+0x74>
ffffffff80911d24:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d28:	dc 62 bd fb 	ldi	$r29,25308($r29)
ffffffff80911d2c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80911d30:	50 07 ff 43 	clr	$r16
ffffffff80911d34:	35 00 00 02 	sys_call	0x35
ffffffff80911d38:	cd 00 20 c1 	beq	$r9,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911d3c:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80911d40:	f0 81 ef 8d 	ldl	fp,-32272(fp)
ffffffff80911d44:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff80911d48:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911d4c:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80911d50:	28 d5 c2 8d 	ldl	$r14,-10968($r2)
ffffffff80911d54:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80911d58:	e9 00 3f fa 	ldi	$r17,233
ffffffff80911d5c:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80911d60:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80911d64:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80911d68:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80911d6c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80911d70:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80911d74:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80911d78:	10 03 0e 42 	mull	$r16,$r14,$r16
ffffffff80911d7c:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80911d80:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80911d84:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80911d88:	53 07 f0 43 	mov	$r16,$r19
ffffffff80911d8c:	bb 00 20 c4 	bne	$r1,ffffffff8091207c <get_pte+0x3cc>
ffffffff80911d90:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911d94:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80911d98:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d9c:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80911da0:	00 20 5f fa 	ldi	$r18,8192
ffffffff80911da4:	51 07 ff 43 	clr	$r17
ffffffff80911da8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911dac:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911db0:	8f 0b 5b 07 	call	ra,($r27),ffffffff80914bf0 <memset>
ffffffff80911db4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911db8:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80911dbc:	01 00 3f fc 	ldih	$r1,1
ffffffff80911dc0:	4c 62 bd fb 	ldi	$r29,25164($r29)
ffffffff80911dc4:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff80911dc8:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff80911dcc:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80911dd0:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff80911dd4:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80911dd8:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80911ddc:	00 00 6d ae 	stl	$r19,0($r13)
ffffffff80911de0:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80911de4:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80911de8:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80911dec:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80911df0:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911df4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80911df8:	9f 00 20 c4 	bne	$r1,ffffffff80912078 <get_pte+0x3c8>
ffffffff80911dfc:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff80911e00:	b0 80 ad 8d 	ldl	$r13,-32592($r13)
ffffffff80911e04:	0e a9 42 49 	sll	$r10,0x15,$r14
ffffffff80911e08:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff80911e0c:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80911e10:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80911e14:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80911e18:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff80911e1c:	00 00 6e 8e 	ldl	$r19,0($r14)
ffffffff80911e20:	38 00 60 de 	blbs	$r19,ffffffff80911f04 <get_pte+0x254>
ffffffff80911e24:	92 00 60 c1 	beq	$r11,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911e28:	07 00 1f fa 	ldi	$r16,7
ffffffff80911e2c:	35 00 00 02 	sys_call	0x35
ffffffff80911e30:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911e34:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911e38:	01 00 1f fa 	ldi	$r16,1
ffffffff80911e3c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911e40:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80911e44:	00 00 5b 07 	call	ra,($r27),ffffffff80911e48 <get_pte+0x198>
ffffffff80911e48:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e4c:	b8 61 bd fb 	ldi	$r29,25016($r29)
ffffffff80911e50:	49 07 e0 43 	mov	$r0,$r9
ffffffff80911e54:	50 07 ff 43 	clr	$r16
ffffffff80911e58:	35 00 00 02 	sys_call	0x35
ffffffff80911e5c:	84 00 20 c1 	beq	$r9,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911e60:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911e64:	f0 81 63 8c 	ldl	$r3,-32272($r3)
ffffffff80911e68:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff80911e6c:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911e70:	f6 00 3f fa 	ldi	$r17,246
ffffffff80911e74:	28 d5 e2 8d 	ldl	fp,-10968($r2)
ffffffff80911e78:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80911e7c:	00 00 03 8e 	ldl	$r16,0($r3)
ffffffff80911e80:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80911e84:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80911e88:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80911e8c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80911e90:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80911e94:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80911e98:	10 03 0f 42 	mull	$r16,fp,$r16
ffffffff80911e9c:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80911ea0:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80911ea4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80911ea8:	53 07 f0 43 	mov	$r16,$r19
ffffffff80911eac:	73 00 20 c4 	bne	$r1,ffffffff8091207c <get_pte+0x3cc>
ffffffff80911eb0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80911eb4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911eb8:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80911ebc:	00 20 5f fa 	ldi	$r18,8192
ffffffff80911ec0:	51 07 ff 43 	clr	$r17
ffffffff80911ec4:	40 00 7e ac 	stl	$r3,64(sp)
ffffffff80911ec8:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911ecc:	48 0b 5b 07 	call	ra,($r27),ffffffff80914bf0 <memset>
ffffffff80911ed0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ed4:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff80911ed8:	01 00 3f fc 	ldih	$r1,1
ffffffff80911edc:	30 61 bd fb 	ldi	$r29,24880($r29)
ffffffff80911ee0:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff80911ee4:	00 00 63 8e 	ldl	$r19,0($r3)
ffffffff80911ee8:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff80911eec:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80911ef0:	13 03 6f 42 	mull	$r19,fp,$r19
ffffffff80911ef4:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80911ef8:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80911efc:	00 00 6e ae 	stl	$r19,0($r14)
ffffffff80911f00:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80911f04:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80911f08:	f9 00 3f fa 	ldi	$r17,249
ffffffff80911f0c:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80911f10:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80911f14:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911f18:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80911f1c:	57 00 20 c0 	beq	$r1,ffffffff8091207c <get_pte+0x3cc>
ffffffff80911f20:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80911f24:	0e e9 43 49 	sll	$r10,0x1f,$r14
ffffffff80911f28:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff80911f2c:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80911f30:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80911f34:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff80911f38:	00 00 0e 8c 	ldl	$r0,0($r14)
ffffffff80911f3c:	33 00 00 dc 	blbs	$r0,ffffffff8091200c <get_pte+0x35c>
ffffffff80911f40:	4b 00 60 c1 	beq	$r11,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911f44:	07 00 1f fa 	ldi	$r16,7
ffffffff80911f48:	35 00 00 02 	sys_call	0x35
ffffffff80911f4c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911f50:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80911f54:	01 00 1f fa 	ldi	$r16,1
ffffffff80911f58:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911f5c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80911f60:	00 00 5b 07 	call	ra,($r27),ffffffff80911f64 <get_pte+0x2b4>
ffffffff80911f64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911f68:	9c 60 bd fb 	ldi	$r29,24732($r29)
ffffffff80911f6c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80911f70:	50 07 ff 43 	clr	$r16
ffffffff80911f74:	35 00 00 02 	sys_call	0x35
ffffffff80911f78:	3d 00 20 c1 	beq	$r9,ffffffff80912070 <get_pte+0x3c0>
ffffffff80911f7c:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80911f80:	f0 81 ef 8d 	ldl	fp,-32272(fp)
ffffffff80911f84:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80911f88:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80911f8c:	03 01 3f fa 	ldi	$r17,259
ffffffff80911f90:	28 d5 61 8d 	ldl	$r11,-10968($r1)
ffffffff80911f94:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80911f98:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80911f9c:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80911fa0:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80911fa4:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80911fa8:	10 03 0b 42 	mull	$r16,$r11,$r16
ffffffff80911fac:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80911fb0:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80911fb4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80911fb8:	53 07 f0 43 	mov	$r16,$r19
ffffffff80911fbc:	2f 00 20 c4 	bne	$r1,ffffffff8091207c <get_pte+0x3cc>
ffffffff80911fc0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80911fc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911fc8:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80911fcc:	00 20 5f fa 	ldi	$r18,8192
ffffffff80911fd0:	51 07 ff 43 	clr	$r17
ffffffff80911fd4:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911fd8:	05 0b 5b 07 	call	ra,($r27),ffffffff80914bf0 <memset>
ffffffff80911fdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911fe0:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80911fe4:	01 00 1f fc 	ldih	$r0,1
ffffffff80911fe8:	24 60 bd fb 	ldi	$r29,24612($r29)
ffffffff80911fec:	01 88 00 f8 	ldi	$r0,-30719($r0)
ffffffff80911ff0:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff80911ff4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80911ff8:	13 03 6b 42 	mull	$r19,$r11,$r19
ffffffff80911ffc:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80912000:	40 07 60 42 	or	$r19,$r0,$r0
ffffffff80912004:	00 00 0e ac 	stl	$r0,0($r14)
ffffffff80912008:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff8091200c:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912010:	06 01 3f fa 	ldi	$r17,262
ffffffff80912014:	13 07 60 42 	and	$r19,$r0,$r19
ffffffff80912018:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091201c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912020:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912024:	15 00 40 c0 	beq	$r2,ffffffff8091207c <get_pte+0x3cc>
ffffffff80912028:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff8091202c:	00 29 45 49 	sll	$r10,0x29,$r0
ffffffff80912030:	20 c9 06 48 	srl	$r0,0x36,$r0
ffffffff80912034:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912038:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff8091203c:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff80912040:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912044:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912048:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091204c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912050:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912054:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912058:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091205c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912060:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80912064:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912068:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091206c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912070:	40 07 ff 43 	clr	$r0
ffffffff80912074:	f2 ff ff 13 	br	ffffffff80912040 <get_pte+0x390>
ffffffff80912078:	ec 00 3f fa 	ldi	$r17,236
ffffffff8091207c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912080:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912084:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912088:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091208c:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff80912090:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff80912094:	aa f8 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80912098:	5f 07 ff 43 	nop	
ffffffff8091209c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809120a0 <get_page>:
ffffffff809120a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809120a4:	60 5f bd fb 	ldi	$r29,24416($r29)
ffffffff809120a8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809120ac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809120b0:	49 07 f2 43 	mov	$r18,$r9
ffffffff809120b4:	52 07 ff 43 	clr	$r18
ffffffff809120b8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809120bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809120c0:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff809120c4:	00 00 5b 07 	call	ra,($r27),ffffffff809120c8 <get_page+0x28>
ffffffff809120c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120cc:	38 5f bd fb 	ldi	$r29,24376($r29)
ffffffff809120d0:	01 00 20 c1 	beq	$r9,ffffffff809120d8 <get_page+0x38>
ffffffff809120d4:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff809120d8:	15 00 00 c0 	beq	$r0,ffffffff80912130 <get_page+0x90>
ffffffff809120dc:	00 00 00 8c 	ldl	$r0,0($r0)
ffffffff809120e0:	13 00 00 d8 	blbc	$r0,ffffffff80912130 <get_page+0x90>
ffffffff809120e4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809120e8:	20 89 03 48 	srl	$r0,0x1c,$r0
ffffffff809120ec:	30 82 21 8c 	ldl	$r1,-32208($r1)
ffffffff809120f0:	61 05 01 40 	cmpult	$r0,$r1,$r1
ffffffff809120f4:	13 00 20 c0 	beq	$r1,ffffffff80912144 <get_page+0xa4>
ffffffff809120f8:	81 01 00 48 	s8addl	$r0,0,$r1
ffffffff809120fc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912100:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912104:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80912108:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091210c:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80912110:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912114:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912118:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff8091211c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912120:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912124:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912128:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091212c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912130:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912134:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912138:	40 07 ff 43 	clr	$r0
ffffffff8091213c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912140:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912144:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912148:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff8091214c:	88 fe 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff80912150:	5f 07 ff 43 	nop	
ffffffff80912154:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912158:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091215c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912160 <page_remove_ptx>:
ffffffff80912160:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912164:	a0 5e bd fb 	ldi	$r29,24224($r29)
ffffffff80912168:	00 00 30 8c 	ldl	$r1,0($r16)
ffffffff8091216c:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80912170:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912174:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912178:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff8091217c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912180:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80912184:	30 82 4b 8c 	ldl	$r2,-32208($r11)
ffffffff80912188:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091218c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80912190:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912194:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912198:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091219c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff809121a0:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff809121a4:	47 00 20 c4 	bne	$r1,ffffffff809122c4 <page_remove_ptx+0x164>
ffffffff809121a8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809121ac:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff809121b0:	09 29 25 4a 	sll	$r17,0x29,$r9
ffffffff809121b4:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff809121b8:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809121bc:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809121c0:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809121c4:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff809121c8:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff809121cc:	08 00 20 dc 	blbs	$r1,ffffffff809121f0 <page_remove_ptx+0x90>
ffffffff809121d0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809121d4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809121d8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809121dc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809121e0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809121e4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809121e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809121ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121f0:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff809121f4:	82 05 41 40 	cmpule	$r2,$r1,$r2
ffffffff809121f8:	3a 00 40 c4 	bne	$r2,ffffffff809122e4 <page_remove_ptx+0x184>
ffffffff809121fc:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912200:	f0 81 8c 8d 	ldl	$r12,-32272($r12)
ffffffff80912204:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912208:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091220c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912210:	00 00 4c 8c 	ldl	$r2,0($r12)
ffffffff80912214:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80912218:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff8091221c:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80912220:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff80912224:	0d 00 60 c4 	bne	$r3,ffffffff8091225c <page_remove_ptx+0xfc>
ffffffff80912228:	07 00 1f fa 	ldi	$r16,7
ffffffff8091222c:	35 00 00 02 	sys_call	0x35
ffffffff80912230:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912234:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912238:	01 00 3f fa 	ldi	$r17,1
ffffffff8091223c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912240:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912244:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912248:	00 00 5b 07 	call	ra,($r27),ffffffff8091224c <page_remove_ptx+0xec>
ffffffff8091224c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912250:	b4 5d bd fb 	ldi	$r29,23988($r29)
ffffffff80912254:	50 07 ff 43 	clr	$r16
ffffffff80912258:	35 00 00 02 	sys_call	0x35
ffffffff8091225c:	00 00 e9 af 	stl	$r31,0($r9)
ffffffff80912260:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912264:	33 00 00 02 	sys_call	0x33
ffffffff80912268:	30 82 4b 8c 	ldl	$r2,-32208($r11)
ffffffff8091226c:	1d 00 40 c0 	beq	$r2,ffffffff809122e4 <page_remove_ptx+0x184>
ffffffff80912270:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80912274:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff80912278:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff8091227c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912280:	18 00 40 c0 	beq	$r2,ffffffff809122e4 <page_remove_ptx+0x184>
ffffffff80912284:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912288:	fe ff 1f fa 	ldi	$r16,-2
ffffffff8091228c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912290:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912294:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80912298:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff8091229c:	22 20 40 48 	subw	$r2,0x1,$r2
ffffffff809122a0:	00 00 41 a8 	stw	$r2,0($r1)
ffffffff809122a4:	33 00 00 02 	sys_call	0x33
ffffffff809122a8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809122ac:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809122b0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809122b4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809122b8:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809122bc:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809122c0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809122c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809122c8:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809122cc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809122d0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809122d4:	44 01 3f fa 	ldi	$r17,324
ffffffff809122d8:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff809122dc:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff809122e0:	17 f8 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff809122e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809122e8:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff809122ec:	20 fe 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff809122f0:	5f 07 ff 43 	nop	
ffffffff809122f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809122f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809122fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912300 <page_remove_pdx0>:
ffffffff80912300:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912304:	00 5d bd fb 	ldi	$r29,23808($r29)
ffffffff80912308:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff8091230c:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80912310:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912314:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912318:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff8091231c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912320:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80912324:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff80912328:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091232c:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80912330:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912334:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912338:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff8091233c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80912340:	47 00 20 c4 	bne	$r1,ffffffff80912460 <page_remove_pdx0+0x160>
ffffffff80912344:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912348:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff8091234c:	09 e9 23 4a 	sll	$r17,0x1f,$r9
ffffffff80912350:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff80912354:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80912358:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091235c:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912360:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff80912364:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80912368:	09 00 20 dc 	blbs	$r1,ffffffff80912390 <page_remove_pdx0+0x90>
ffffffff8091236c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912370:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912374:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912378:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091237c:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912380:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912384:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912388:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091238c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912390:	50 07 e9 43 	mov	$r9,$r16
ffffffff80912394:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912398:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff8091239c:	70 ff 5b 07 	call	ra,($r27),ffffffff80912160 <page_remove_ptx>
ffffffff809123a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123a4:	60 5c bd fb 	ldi	$r29,23648($r29)
ffffffff809123a8:	00 00 49 8c 	ldl	$r2,0($r9)
ffffffff809123ac:	30 82 ab 8c 	ldl	$r5,-32208($r11)
ffffffff809123b0:	23 89 43 48 	srl	$r2,0x1c,$r3
ffffffff809123b4:	61 05 65 40 	cmpult	$r3,$r5,$r1
ffffffff809123b8:	31 00 20 c0 	beq	$r1,ffffffff80912480 <page_remove_pdx0+0x180>
ffffffff809123bc:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff809123c0:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809123c4:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff809123c8:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809123cc:	f0 81 63 8c 	ldl	$r3,-32272($r3)
ffffffff809123d0:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809123d4:	00 00 83 8c 	ldl	$r4,0($r3)
ffffffff809123d8:	23 89 23 48 	srl	$r1,0x1c,$r3
ffffffff809123dc:	65 05 65 40 	cmpult	$r3,$r5,$r5
ffffffff809123e0:	02 01 82 40 	addl	$r4,$r2,$r2
ffffffff809123e4:	26 00 a0 c0 	beq	$r5,ffffffff80912480 <page_remove_pdx0+0x180>
ffffffff809123e8:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff809123ec:	00 00 a2 88 	ldw	$r5,0($r2)
ffffffff809123f0:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809123f4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809123f8:	09 01 81 40 	addl	$r4,$r1,$r9
ffffffff809123fc:	10 00 a0 c4 	bne	$r5,ffffffff80912440 <page_remove_pdx0+0x140>
ffffffff80912400:	07 00 1f fa 	ldi	$r16,7
ffffffff80912404:	35 00 00 02 	sys_call	0x35
ffffffff80912408:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091240c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912410:	01 00 3f fa 	ldi	$r17,1
ffffffff80912414:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912418:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091241c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912420:	00 00 5b 07 	call	ra,($r27),ffffffff80912424 <page_remove_pdx0+0x124>
ffffffff80912424:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912428:	dc 5b bd fb 	ldi	$r29,23516($r29)
ffffffff8091242c:	50 07 ff 43 	clr	$r16
ffffffff80912430:	35 00 00 02 	sys_call	0x35
ffffffff80912434:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80912438:	21 20 20 48 	subw	$r1,0x1,$r1
ffffffff8091243c:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80912440:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912444:	33 00 00 02 	sys_call	0x33
ffffffff80912448:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091244c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912450:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912454:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912458:	20 00 de fb 	ldi	sp,32(sp)
ffffffff8091245c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912460:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912464:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912468:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091246c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912470:	59 01 3f fa 	ldi	$r17,345
ffffffff80912474:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff80912478:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff8091247c:	b0 f7 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80912480:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912484:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff80912488:	b9 fd 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff8091248c:	5f 07 ff 43 	nop	

ffffffff80912490 <page_remove_pdx1>:
ffffffff80912490:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912494:	70 5b bd fb 	ldi	$r29,23408($r29)
ffffffff80912498:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff8091249c:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff809124a0:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff809124a4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809124a8:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff809124ac:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809124b0:	4a 07 f0 43 	mov	$r16,$r10
ffffffff809124b4:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff809124b8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809124bc:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff809124c0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809124c4:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff809124c8:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff809124cc:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809124d0:	47 00 20 c4 	bne	$r1,ffffffff809125f0 <page_remove_pdx1+0x160>
ffffffff809124d4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809124d8:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff809124dc:	09 a9 22 4a 	sll	$r17,0x15,$r9
ffffffff809124e0:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff809124e4:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809124e8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809124ec:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809124f0:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff809124f4:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff809124f8:	09 00 20 dc 	blbs	$r1,ffffffff80912520 <page_remove_pdx1+0x90>
ffffffff809124fc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912500:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912504:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912508:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091250c:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912510:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912514:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912518:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091251c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912520:	50 07 e9 43 	mov	$r9,$r16
ffffffff80912524:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912528:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff8091252c:	74 ff 5b 07 	call	ra,($r27),ffffffff80912300 <page_remove_pdx0>
ffffffff80912530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912534:	d0 5a bd fb 	ldi	$r29,23248($r29)
ffffffff80912538:	00 00 49 8c 	ldl	$r2,0($r9)
ffffffff8091253c:	30 82 ab 8c 	ldl	$r5,-32208($r11)
ffffffff80912540:	23 89 43 48 	srl	$r2,0x1c,$r3
ffffffff80912544:	61 05 65 40 	cmpult	$r3,$r5,$r1
ffffffff80912548:	31 00 20 c0 	beq	$r1,ffffffff80912610 <page_remove_pdx1+0x180>
ffffffff8091254c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80912550:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80912554:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80912558:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff8091255c:	f0 81 63 8c 	ldl	$r3,-32272($r3)
ffffffff80912560:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80912564:	00 00 83 8c 	ldl	$r4,0($r3)
ffffffff80912568:	23 89 23 48 	srl	$r1,0x1c,$r3
ffffffff8091256c:	65 05 65 40 	cmpult	$r3,$r5,$r5
ffffffff80912570:	02 01 82 40 	addl	$r4,$r2,$r2
ffffffff80912574:	26 00 a0 c0 	beq	$r5,ffffffff80912610 <page_remove_pdx1+0x180>
ffffffff80912578:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff8091257c:	00 00 a2 88 	ldw	$r5,0($r2)
ffffffff80912580:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80912584:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912588:	09 01 81 40 	addl	$r4,$r1,$r9
ffffffff8091258c:	10 00 a0 c4 	bne	$r5,ffffffff809125d0 <page_remove_pdx1+0x140>
ffffffff80912590:	07 00 1f fa 	ldi	$r16,7
ffffffff80912594:	35 00 00 02 	sys_call	0x35
ffffffff80912598:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091259c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff809125a0:	01 00 3f fa 	ldi	$r17,1
ffffffff809125a4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809125a8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809125ac:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809125b0:	00 00 5b 07 	call	ra,($r27),ffffffff809125b4 <page_remove_pdx1+0x124>
ffffffff809125b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809125b8:	4c 5a bd fb 	ldi	$r29,23116($r29)
ffffffff809125bc:	50 07 ff 43 	clr	$r16
ffffffff809125c0:	35 00 00 02 	sys_call	0x35
ffffffff809125c4:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff809125c8:	21 20 20 48 	subw	$r1,0x1,$r1
ffffffff809125cc:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff809125d0:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809125d4:	33 00 00 02 	sys_call	0x33
ffffffff809125d8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809125dc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809125e0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809125e4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809125e8:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809125ec:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809125f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809125f4:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809125f8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809125fc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912600:	72 01 3f fa 	ldi	$r17,370
ffffffff80912604:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff80912608:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff8091260c:	4c f7 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80912610:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912614:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff80912618:	55 fd 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff8091261c:	5f 07 ff 43 	nop	

ffffffff80912620 <page_remove_pdx2>:
ffffffff80912620:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912624:	e0 59 bd fb 	ldi	$r29,23008($r29)
ffffffff80912628:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff8091262c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912630:	09 69 21 4a 	sll	$r17,0xb,$r9
ffffffff80912634:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912638:	4a 07 f0 43 	mov	$r16,$r10
ffffffff8091263c:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff80912640:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912644:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80912648:	09 01 09 42 	addl	$r16,$r9,$r9
ffffffff8091264c:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80912650:	07 00 20 dc 	blbs	$r1,ffffffff80912670 <page_remove_pdx2+0x50>
ffffffff80912654:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912658:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091265c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912660:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912664:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912668:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091266c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912670:	50 07 e9 43 	mov	$r9,$r16
ffffffff80912674:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912678:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff8091267c:	84 ff 5b 07 	call	ra,($r27),ffffffff80912490 <page_remove_pdx1>
ffffffff80912680:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912684:	80 59 bd fb 	ldi	$r29,22912($r29)
ffffffff80912688:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091268c:	00 00 49 8c 	ldl	$r2,0($r9)
ffffffff80912690:	30 82 a1 8c 	ldl	$r5,-32208($r1)
ffffffff80912694:	23 89 43 48 	srl	$r2,0x1c,$r3
ffffffff80912698:	61 05 65 40 	cmpult	$r3,$r5,$r1
ffffffff8091269c:	2a 00 20 c0 	beq	$r1,ffffffff80912748 <page_remove_pdx2+0x128>
ffffffff809126a0:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff809126a4:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809126a8:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff809126ac:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809126b0:	f0 81 63 8c 	ldl	$r3,-32272($r3)
ffffffff809126b4:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809126b8:	00 00 83 8c 	ldl	$r4,0($r3)
ffffffff809126bc:	23 89 23 48 	srl	$r1,0x1c,$r3
ffffffff809126c0:	65 05 65 40 	cmpult	$r3,$r5,$r5
ffffffff809126c4:	02 01 82 40 	addl	$r4,$r2,$r2
ffffffff809126c8:	1f 00 a0 c0 	beq	$r5,ffffffff80912748 <page_remove_pdx2+0x128>
ffffffff809126cc:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff809126d0:	00 00 a2 88 	ldw	$r5,0($r2)
ffffffff809126d4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809126d8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809126dc:	09 01 81 40 	addl	$r4,$r1,$r9
ffffffff809126e0:	0d 00 a0 c4 	bne	$r5,ffffffff80912718 <page_remove_pdx2+0xf8>
ffffffff809126e4:	07 00 1f fa 	ldi	$r16,7
ffffffff809126e8:	35 00 00 02 	sys_call	0x35
ffffffff809126ec:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809126f0:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff809126f4:	01 00 3f fa 	ldi	$r17,1
ffffffff809126f8:	50 07 e2 43 	mov	$r2,$r16
ffffffff809126fc:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912700:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912704:	00 00 5b 07 	call	ra,($r27),ffffffff80912708 <page_remove_pdx2+0xe8>
ffffffff80912708:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091270c:	f8 58 bd fb 	ldi	$r29,22776($r29)
ffffffff80912710:	50 07 ff 43 	clr	$r16
ffffffff80912714:	35 00 00 02 	sys_call	0x35
ffffffff80912718:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff8091271c:	03 00 20 c4 	bne	$r1,ffffffff8091272c <page_remove_pdx2+0x10c>
ffffffff80912720:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912724:	28 82 21 8c 	ldl	$r1,-32216($r1)
ffffffff80912728:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff8091272c:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912730:	33 00 00 02 	sys_call	0x33
ffffffff80912734:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912738:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091273c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912740:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912744:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912748:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091274c:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff80912750:	07 fd 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff80912754:	5f 07 ff 43 	nop	
ffffffff80912758:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091275c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912760 <page_remove>:
ffffffff80912760:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912764:	a0 58 bd fb 	ldi	$r29,22688($r29)
ffffffff80912768:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091276c:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80912770:	ab ff fb 0f 	jmp	$r31,($r27),ffffffff80912620 <page_remove_pdx2>
ffffffff80912774:	5f 07 ff 43 	nop	
ffffffff80912778:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091277c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912780 <page_insert>:
ffffffff80912780:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912784:	80 58 bd fb 	ldi	$r29,22656($r29)
ffffffff80912788:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff8091278c:	41 07 f2 43 	mov	$r18,$r1
ffffffff80912790:	01 00 5f fa 	ldi	$r18,1
ffffffff80912794:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912798:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091279c:	51 07 e1 43 	mov	$r1,$r17
ffffffff809127a0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809127a4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809127a8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809127ac:	4a 07 f3 43 	mov	$r19,$r10
ffffffff809127b0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809127b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809127b8:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff809127bc:	00 00 5b 07 	call	ra,($r27),ffffffff809127c0 <page_insert+0x40>
ffffffff809127c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809127c4:	40 58 bd fb 	ldi	$r29,22592($r29)
ffffffff809127c8:	4b 07 e0 43 	mov	$r0,$r11
ffffffff809127cc:	5c 00 00 c0 	beq	$r0,ffffffff80912940 <page_insert+0x1c0>
ffffffff809127d0:	00 00 89 88 	ldw	$r4,0($r9)
ffffffff809127d4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809127d8:	00 00 40 8c 	ldl	$r2,0($r0)
ffffffff809127dc:	30 82 61 8c 	ldl	$r3,-32208($r1)
ffffffff809127e0:	01 20 80 48 	addw	$r4,0x1,$r1
ffffffff809127e4:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff809127e8:	39 00 40 d8 	blbc	$r2,ffffffff809128d0 <page_insert+0x150>
ffffffff809127ec:	21 89 43 48 	srl	$r2,0x1c,$r1
ffffffff809127f0:	63 05 23 40 	cmpult	$r1,$r3,$r3
ffffffff809127f4:	54 00 60 c0 	beq	$r3,ffffffff80912948 <page_insert+0x1c8>
ffffffff809127f8:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff809127fc:	f0 81 8c 8d 	ldl	$r12,-32272($r12)
ffffffff80912800:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912804:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80912808:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff8091280c:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff80912810:	02 01 62 42 	addl	$r19,$r2,$r2
ffffffff80912814:	01 05 22 41 	cmpeq	$r9,$r2,$r1
ffffffff80912818:	19 00 20 c4 	bne	$r1,ffffffff80912880 <page_insert+0x100>
ffffffff8091281c:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80912820:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80912824:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff80912828:	0d 00 60 c4 	bne	$r3,ffffffff80912860 <page_insert+0xe0>
ffffffff8091282c:	07 00 1f fa 	ldi	$r16,7
ffffffff80912830:	35 00 00 02 	sys_call	0x35
ffffffff80912834:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912838:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff8091283c:	01 00 3f fa 	ldi	$r17,1
ffffffff80912840:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912844:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912848:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff8091284c:	00 00 5b 07 	call	ra,($r27),ffffffff80912850 <page_insert+0xd0>
ffffffff80912850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912854:	b0 57 bd fb 	ldi	$r29,22448($r29)
ffffffff80912858:	50 07 ff 43 	clr	$r16
ffffffff8091285c:	35 00 00 02 	sys_call	0x35
ffffffff80912860:	00 00 eb af 	stl	$r31,0($r11)
ffffffff80912864:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912868:	33 00 00 02 	sys_call	0x33
ffffffff8091286c:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff80912870:	04 00 e0 13 	br	ffffffff80912884 <page_insert+0x104>
ffffffff80912874:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912878:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091287c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912880:	00 00 89 a8 	stw	$r4,0($r9)
ffffffff80912884:	29 01 33 41 	subl	$r9,$r19,$r9
ffffffff80912888:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff8091288c:	4a 27 40 49 	or	$r10,0x1,$r10
ffffffff80912890:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912894:	53 69 20 49 	sra	$r9,0x3,$r19
ffffffff80912898:	28 d5 21 8d 	ldl	$r9,-10968($r1)
ffffffff8091289c:	13 03 69 42 	mull	$r19,$r9,$r19
ffffffff809128a0:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff809128a4:	53 07 6a 42 	or	$r19,$r10,$r19
ffffffff809128a8:	00 00 6b ae 	stl	$r19,0($r11)
ffffffff809128ac:	33 00 00 02 	sys_call	0x33
ffffffff809128b0:	40 07 ff 43 	clr	$r0
ffffffff809128b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809128b8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809128bc:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809128c0:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809128c4:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809128c8:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809128cc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809128d0:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809128d4:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809128d8:	81 05 01 40 	cmpule	$r0,$r1,$r1
ffffffff809128dc:	14 00 20 c0 	beq	$r1,ffffffff80912930 <page_insert+0x1b0>
ffffffff809128e0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809128e4:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff809128e8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809128ec:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff809128f0:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff809128f4:	83 05 62 40 	cmpule	$r3,$r2,$r3
ffffffff809128f8:	13 00 60 c4 	bne	$r3,ffffffff80912948 <page_insert+0x1c8>
ffffffff809128fc:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80912900:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80912904:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912908:	f0 81 42 8c 	ldl	$r2,-32272($r2)
ffffffff8091290c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912910:	00 00 62 8e 	ldl	$r19,0($r2)
ffffffff80912914:	01 01 61 42 	addl	$r19,$r1,$r1
ffffffff80912918:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff8091291c:	02 20 40 48 	addw	$r2,0x1,$r2
ffffffff80912920:	00 00 41 a8 	stw	$r2,0($r1)
ffffffff80912924:	d7 ff ff 13 	br	ffffffff80912884 <page_insert+0x104>
ffffffff80912928:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091292c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912930:	01 00 3f f8 	ldi	$r1,1
ffffffff80912934:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80912938:	01 01 01 40 	addl	$r0,$r1,$r1
ffffffff8091293c:	ec ff ff 13 	br	ffffffff809128f0 <page_insert+0x170>
ffffffff80912940:	fc ff 1f f8 	ldi	$r0,-4
ffffffff80912944:	db ff ff 13 	br	ffffffff809128b4 <page_insert+0x134>
ffffffff80912948:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091294c:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff80912950:	87 fc 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff80912954:	5f 07 ff 43 	nop	
ffffffff80912958:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091295c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912960 <pmm_init>:
ffffffff80912960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912964:	a0 56 bd fb 	ldi	$r29,22176($r29)
ffffffff80912968:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091296c:	c0 80 21 8c 	ldl	$r1,-32576($r1)
ffffffff80912970:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80912974:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912978:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091297c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912980:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912984:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912988:	90 80 8c 8d 	ldl	$r12,-32624($r12)
ffffffff8091298c:	8e d5 10 fa 	ldi	$r16,-10866($r16)
ffffffff80912990:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912994:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912998:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff8091299c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809129a0:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff809129a4:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809129a8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809129ac:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809129b0:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809129b4:	00 00 2c ac 	stl	$r1,0($r12)
ffffffff809129b8:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff809129bc:	b0 80 ce 8d 	ldl	$r14,-32592($r14)
ffffffff809129c0:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff809129c4:	f0 81 4a 8d 	ldl	$r10,-32272($r10)
ffffffff809129c8:	f1 f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809129cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129d0:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809129d4:	34 56 bd fb 	ldi	$r29,22068($r29)
ffffffff809129d8:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff809129dc:	00 00 5b 07 	call	ra,($r27),ffffffff809129e0 <pmm_init+0x80>
ffffffff809129e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129e4:	20 56 bd fb 	ldi	$r29,22048($r29)
ffffffff809129e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809129ec:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809129f0:	ff ff 3f f8 	ldi	$r1,-1
ffffffff809129f4:	00 20 7f fe 	ldih	$r19,8192
ffffffff809129f8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809129fc:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff80912a00:	52 07 f3 43 	mov	$r19,$r18
ffffffff80912a04:	51 07 ff 43 	clr	$r17
ffffffff80912a08:	a5 d5 10 fa 	ldi	$r16,-10843($r16)
ffffffff80912a0c:	00 00 2e ac 	stl	$r1,0($r14)
ffffffff80912a10:	df f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80912a14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a18:	ec 55 bd fb 	ldi	$r29,21996($r29)
ffffffff80912a1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a20:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80912a24:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912a28:	ce d5 10 fa 	ldi	$r16,-10802($r16)
ffffffff80912a2c:	d8 f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80912a30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a34:	d0 55 bd fb 	ldi	$r29,21968($r29)
ffffffff80912a38:	00 20 3f fe 	ldih	$r17,8192
ffffffff80912a3c:	52 07 ff 43 	clr	$r18
ffffffff80912a40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a44:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80912a48:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912a4c:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff80912a50:	e4 d5 10 fa 	ldi	$r16,-10780($r16)
ffffffff80912a54:	ce f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80912a58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a5c:	a8 55 bd fb 	ldi	$r29,21928($r29)
ffffffff80912a60:	01 00 3f fc 	ldih	$r1,1
ffffffff80912a64:	00 00 7d fe 	ldih	$r19,0($r29)
ffffffff80912a68:	f0 80 73 8e 	ldl	$r19,-32528($r19)
ffffffff80912a6c:	30 82 2b ac 	stl	$r1,-32208($r11)
ffffffff80912a70:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80912a74:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80912a78:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80912a7c:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80912a80:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80912a84:	81 05 61 42 	cmpule	$r19,$r1,$r1
ffffffff80912a88:	69 02 20 c4 	bne	$r1,ffffffff80913430 <pmm_init+0xad0>
ffffffff80912a8c:	01 00 3f f8 	ldi	$r1,1
ffffffff80912a90:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80912a94:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912a98:	01 00 5f fc 	ldih	$r2,1
ffffffff80912a9c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912aa0:	74 00 3f fa 	ldi	$r17,116
ffffffff80912aa4:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80912aa8:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80912aac:	73 02 20 c0 	beq	$r1,ffffffff8091347c <pmm_init+0xb1c>
ffffffff80912ab0:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff80912ab4:	42 07 ff 43 	clr	$r2
ffffffff80912ab8:	41 07 ff 43 	clr	$r1
ffffffff80912abc:	13 01 63 42 	addl	$r19,$r3,$r19
ffffffff80912ac0:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80912ac4:	03 00 e0 13 	br	ffffffff80912ad4 <pmm_init+0x174>
ffffffff80912ac8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912acc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ad0:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80912ad4:	13 01 62 42 	addl	$r19,$r2,$r19
ffffffff80912ad8:	08 00 b3 f8 	ldi	$r5,8($r19)
ffffffff80912adc:	00 00 65 20 	lldw	$r3,0($r5)
ffffffff80912ae0:	01 00 9f f8 	ldi	$r4,1
ffffffff80912ae4:	20 10 9f 18 	wr_f	$r4
ffffffff80912ae8:	43 27 60 48 	or	$r3,0x1,$r3
ffffffff80912aec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912af0:	00 80 65 20 	lstw	$r3,0($r5)
ffffffff80912af4:	00 10 9f 18 	rd_f	$r4
ffffffff80912af8:	76 02 80 c0 	beq	$r4,ffffffff809134d4 <pmm_init+0xb74>
ffffffff80912afc:	30 82 6b 8c 	ldl	$r3,-32208($r11)
ffffffff80912b00:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80912b04:	48 00 42 f8 	ldi	$r2,72($r2)
ffffffff80912b08:	64 05 23 40 	cmpult	$r1,$r3,$r4
ffffffff80912b0c:	f0 ff 9f c4 	bne	$r4,ffffffff80912ad0 <pmm_init+0x170>
ffffffff80912b10:	00 00 0a 8e 	ldl	$r16,0($r10)
ffffffff80912b14:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff80912b18:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80912b1c:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80912b20:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80912b24:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912b28:	01 01 01 42 	addl	$r16,$r1,$r1
ffffffff80912b2c:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80912b30:	3b 02 40 c4 	bne	$r2,ffffffff80913420 <pmm_init+0xac0>
ffffffff80912b34:	01 00 5f f8 	ldi	$r2,1
ffffffff80912b38:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80912b3c:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80912b40:	00 20 3f fe 	ldih	$r17,8192
ffffffff80912b44:	ff df 51 f8 	ldi	$r2,-8193($r17)
ffffffff80912b48:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80912b4c:	12 00 40 c0 	beq	$r2,ffffffff80912b98 <pmm_init+0x238>
ffffffff80912b50:	ff 1f 21 f8 	ldi	$r1,8191($r1)
ffffffff80912b54:	24 a9 21 48 	srl	$r1,0xd,$r4
ffffffff80912b58:	83 05 64 40 	cmpule	$r3,$r4,$r3
ffffffff80912b5c:	4e 02 60 c4 	bne	$r3,ffffffff80913498 <pmm_init+0xb38>
ffffffff80912b60:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff80912b64:	82 01 80 48 	s8addl	$r4,0,$r2
ffffffff80912b68:	00 e0 bf f8 	ldi	$r5,-8192
ffffffff80912b6c:	00 e0 31 fa 	ldi	$r17,-8192($r17)
ffffffff80912b70:	01 07 25 40 	and	$r1,$r5,$r1
ffffffff80912b74:	02 01 44 40 	addl	$r2,$r4,$r2
ffffffff80912b78:	31 01 21 42 	subl	$r17,$r1,$r17
ffffffff80912b7c:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80912b80:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff80912b84:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff80912b88:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff80912b8c:	00 00 5b 07 	call	ra,($r27),ffffffff80912b90 <pmm_init+0x230>
ffffffff80912b90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912b94:	70 54 bd fb 	ldi	$r29,21616($r29)
ffffffff80912b98:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912b9c:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80912ba0:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80912ba4:	00 00 5b 07 	call	ra,($r27),ffffffff80912ba8 <pmm_init+0x248>
ffffffff80912ba8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912bac:	58 54 bd fb 	ldi	$r29,21592($r29)
ffffffff80912bb0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912bb4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80912bb8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912bbc:	0c d6 10 fa 	ldi	$r16,-10740($r16)
ffffffff80912bc0:	73 f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80912bc4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912bc8:	3c 54 bd fb 	ldi	$r29,21564($r29)
ffffffff80912bcc:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80912bd0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912bd4:	80 80 21 8c 	ldl	$r1,-32640($r1)
ffffffff80912bd8:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80912bdc:	28 82 29 ac 	stl	$r1,-32216($r9)
ffffffff80912be0:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80912be4:	16 02 40 c0 	beq	$r2,ffffffff80913440 <pmm_init+0xae0>
ffffffff80912be8:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff80912bec:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80912bf0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912bf4:	e8 80 42 8c 	ldl	$r2,-32536($r2)
ffffffff80912bf8:	07 00 1f fa 	ldi	$r16,7
ffffffff80912bfc:	00 00 22 ac 	stl	$r1,0($r2)
ffffffff80912c00:	35 00 00 02 	sys_call	0x35
ffffffff80912c04:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912c08:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80912c0c:	00 00 5b 07 	call	ra,($r27),ffffffff80912c10 <pmm_init+0x2b0>
ffffffff80912c10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912c14:	f0 53 bd fb 	ldi	$r29,21488($r29)
ffffffff80912c18:	51 07 e0 43 	mov	$r0,$r17
ffffffff80912c1c:	50 07 ff 43 	clr	$r16
ffffffff80912c20:	35 00 00 02 	sys_call	0x35
ffffffff80912c24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912c28:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80912c2c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912c30:	2b d6 10 fa 	ldi	$r16,-10709($r16)
ffffffff80912c34:	56 f5 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80912c38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912c3c:	c8 53 bd fb 	ldi	$r29,21448($r29)
ffffffff80912c40:	07 00 1f fa 	ldi	$r16,7
ffffffff80912c44:	35 00 00 02 	sys_call	0x35
ffffffff80912c48:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912c4c:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80912c50:	00 00 5b 07 	call	ra,($r27),ffffffff80912c54 <pmm_init+0x2f4>
ffffffff80912c54:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912c58:	ac 53 bd fb 	ldi	$r29,21420($r29)
ffffffff80912c5c:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80912c60:	50 07 ff 43 	clr	$r16
ffffffff80912c64:	35 00 00 02 	sys_call	0x35
ffffffff80912c68:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff80912c6c:	01 00 5f fc 	ldih	$r2,1
ffffffff80912c70:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912c74:	f6 01 3f fa 	ldi	$r17,502
ffffffff80912c78:	3f d6 73 fa 	ldi	$r19,-10689($r19)
ffffffff80912c7c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80912c80:	f6 01 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912c84:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912c88:	0e 02 00 c2 	beq	$r16,ffffffff809134c4 <pmm_init+0xb64>
ffffffff80912c8c:	ff 1f 3f f8 	ldi	$r1,8191
ffffffff80912c90:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912c94:	0b 02 20 c4 	bne	$r1,ffffffff809134c4 <pmm_init+0xb64>
ffffffff80912c98:	51 07 ff 43 	clr	$r17
ffffffff80912c9c:	52 07 ff 43 	clr	$r18
ffffffff80912ca0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ca4:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80912ca8:	00 00 5b 07 	call	ra,($r27),ffffffff80912cac <pmm_init+0x34c>
ffffffff80912cac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912cb0:	54 53 bd fb 	ldi	$r29,21332($r29)
ffffffff80912cb4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912cb8:	f8 01 3f fa 	ldi	$r17,504
ffffffff80912cbc:	90 d6 73 fa 	ldi	$r19,-10608($r19)
ffffffff80912cc0:	e6 01 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912cc4:	07 00 1f fa 	ldi	$r16,7
ffffffff80912cc8:	35 00 00 02 	sys_call	0x35
ffffffff80912ccc:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912cd0:	01 00 1f fa 	ldi	$r16,1
ffffffff80912cd4:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912cd8:	00 00 5b 07 	call	ra,($r27),ffffffff80912cdc <pmm_init+0x37c>
ffffffff80912cdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ce0:	24 53 bd fb 	ldi	$r29,21284($r29)
ffffffff80912ce4:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80912ce8:	50 07 ff 43 	clr	$r16
ffffffff80912cec:	35 00 00 02 	sys_call	0x35
ffffffff80912cf0:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912cf4:	53 07 ff 43 	clr	$r19
ffffffff80912cf8:	51 07 ed 43 	mov	$r13,$r17
ffffffff80912cfc:	52 07 ff 43 	clr	$r18
ffffffff80912d00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912d04:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80912d08:	00 00 5b 07 	call	ra,($r27),ffffffff80912d0c <pmm_init+0x3ac>
ffffffff80912d0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912d10:	f4 52 bd fb 	ldi	$r29,21236($r29)
ffffffff80912d14:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912d18:	fc 01 3f fa 	ldi	$r17,508
ffffffff80912d1c:	b8 d6 73 fa 	ldi	$r19,-10568($r19)
ffffffff80912d20:	ce 01 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912d24:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912d28:	51 07 ff 43 	clr	$r17
ffffffff80912d2c:	52 07 ff 43 	clr	$r18
ffffffff80912d30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912d34:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80912d38:	00 00 5b 07 	call	ra,($r27),ffffffff80912d3c <pmm_init+0x3dc>
ffffffff80912d3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912d40:	c4 52 bd fb 	ldi	$r29,21188($r29)
ffffffff80912d44:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912d48:	fe 01 3f fa 	ldi	$r17,510
ffffffff80912d4c:	e1 d6 73 fa 	ldi	$r19,-10527($r19)
ffffffff80912d50:	c2 01 00 c0 	beq	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912d54:	00 00 60 8c 	ldl	$r3,0($r0)
ffffffff80912d58:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff80912d5c:	24 89 63 48 	srl	$r3,0x1c,$r4
ffffffff80912d60:	62 05 81 40 	cmpult	$r4,$r1,$r2
ffffffff80912d64:	cc 01 40 c0 	beq	$r2,ffffffff80913498 <pmm_init+0xb38>
ffffffff80912d68:	83 01 80 48 	s8addl	$r4,0,$r3
ffffffff80912d6c:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80912d70:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912d74:	ff 01 3f fa 	ldi	$r17,511
ffffffff80912d78:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80912d7c:	0e d7 73 fa 	ldi	$r19,-10482($r19)
ffffffff80912d80:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80912d84:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80912d88:	02 05 a2 41 	cmpeq	$r13,$r2,$r2
ffffffff80912d8c:	b3 01 40 c0 	beq	$r2,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912d90:	00 00 4d 88 	ldw	$r2,0($r13)
ffffffff80912d94:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912d98:	00 02 3f fa 	ldi	$r17,512
ffffffff80912d9c:	24 d7 73 fa 	ldi	$r19,-10460($r19)
ffffffff80912da0:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80912da4:	ad 01 40 c0 	beq	$r2,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912da8:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912dac:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912db0:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80912db4:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80912db8:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912dbc:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80912dc0:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80912dc4:	ac 01 40 c4 	bne	$r2,ffffffff80913478 <pmm_init+0xb18>
ffffffff80912dc8:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80912dcc:	00 f0 5f fc 	ldih	$r2,-4096
ffffffff80912dd0:	03 02 3f fa 	ldi	$r17,515
ffffffff80912dd4:	22 e9 41 48 	srl	$r2,0xf,$r2
ffffffff80912dd8:	13 01 6f 42 	addl	$r19,fp,$r19
ffffffff80912ddc:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80912de0:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912de4:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80912de8:	23 a9 61 4a 	srl	$r19,0xd,$r3
ffffffff80912dec:	83 05 23 40 	cmpule	$r1,$r3,$r3
ffffffff80912df0:	a2 01 60 c4 	bne	$r3,ffffffff8091347c <pmm_init+0xb1c>
ffffffff80912df4:	13 01 f3 41 	addl	fp,$r19,$r19
ffffffff80912df8:	04 02 3f fa 	ldi	$r17,516
ffffffff80912dfc:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80912e00:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912e04:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80912e08:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80912e0c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80912e10:	9a 01 20 c4 	bne	$r1,ffffffff8091347c <pmm_init+0xb1c>
ffffffff80912e14:	00 20 3f fa 	ldi	$r17,8192
ffffffff80912e18:	52 07 ff 43 	clr	$r18
ffffffff80912e1c:	48 00 7e ae 	stl	$r19,72(sp)
ffffffff80912e20:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e24:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80912e28:	00 00 5b 07 	call	ra,($r27),ffffffff80912e2c <pmm_init+0x4cc>
ffffffff80912e2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e30:	d4 51 bd fb 	ldi	$r29,20948($r29)
ffffffff80912e34:	48 00 7e 8e 	ldl	$r19,72(sp)
ffffffff80912e38:	06 02 3f fa 	ldi	$r17,518
ffffffff80912e3c:	0f 01 f3 41 	addl	fp,$r19,fp
ffffffff80912e40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912e44:	08 00 ef f9 	ldi	fp,8(fp)
ffffffff80912e48:	36 d7 73 fa 	ldi	$r19,-10442($r19)
ffffffff80912e4c:	0f 05 0f 40 	cmpeq	$r0,fp,fp
ffffffff80912e50:	82 01 e0 c1 	beq	fp,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912e54:	07 00 1f fa 	ldi	$r16,7
ffffffff80912e58:	35 00 00 02 	sys_call	0x35
ffffffff80912e5c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912e60:	01 00 1f fa 	ldi	$r16,1
ffffffff80912e64:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912e68:	00 00 5b 07 	call	ra,($r27),ffffffff80912e6c <pmm_init+0x50c>
ffffffff80912e6c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e70:	94 51 bd fb 	ldi	$r29,20884($r29)
ffffffff80912e74:	4f 07 e0 43 	mov	$r0,fp
ffffffff80912e78:	50 07 ff 43 	clr	$r16
ffffffff80912e7c:	35 00 00 02 	sys_call	0x35
ffffffff80912e80:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912e84:	01 00 7f fc 	ldih	$r3,1
ffffffff80912e88:	51 07 ef 43 	mov	fp,$r17
ffffffff80912e8c:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912e90:	00 8c 63 fa 	ldi	$r19,-29696($r3)
ffffffff80912e94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e98:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80912e9c:	00 00 5b 07 	call	ra,($r27),ffffffff80912ea0 <pmm_init+0x540>
ffffffff80912ea0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ea4:	60 51 bd fb 	ldi	$r29,20832($r29)
ffffffff80912ea8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912eac:	09 02 3f fa 	ldi	$r17,521
ffffffff80912eb0:	5d d7 73 fa 	ldi	$r19,-10403($r19)
ffffffff80912eb4:	69 01 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912eb8:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912ebc:	00 20 3f fa 	ldi	$r17,8192
ffffffff80912ec0:	52 07 ff 43 	clr	$r18
ffffffff80912ec4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ec8:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80912ecc:	00 00 5b 07 	call	ra,($r27),ffffffff80912ed0 <pmm_init+0x570>
ffffffff80912ed0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ed4:	30 51 bd fb 	ldi	$r29,20784($r29)
ffffffff80912ed8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912edc:	0a 02 3f fa 	ldi	$r17,522
ffffffff80912ee0:	95 d7 73 fa 	ldi	$r19,-10347($r19)
ffffffff80912ee4:	5d 01 00 c0 	beq	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912ee8:	00 00 40 8c 	ldl	$r2,0($r0)
ffffffff80912eec:	01 00 7f fc 	ldih	$r3,1
ffffffff80912ef0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912ef4:	0b 02 3f fa 	ldi	$r17,523
ffffffff80912ef8:	00 88 23 f8 	ldi	$r1,-30720($r3)
ffffffff80912efc:	c5 d7 73 fa 	ldi	$r19,-10299($r19)
ffffffff80912f00:	03 07 41 40 	and	$r2,$r1,$r3
ffffffff80912f04:	55 01 60 c0 	beq	$r3,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f08:	00 0c 7f f8 	ldi	$r3,3072
ffffffff80912f0c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f10:	0c 02 3f fa 	ldi	$r17,524
ffffffff80912f14:	02 07 43 40 	and	$r2,$r3,$r2
ffffffff80912f18:	d3 d7 73 fa 	ldi	$r19,-10285($r19)
ffffffff80912f1c:	4f 01 40 c0 	beq	$r2,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f20:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912f24:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f28:	0d 02 3f fa 	ldi	$r17,525
ffffffff80912f2c:	e1 d7 73 fa 	ldi	$r19,-10271($r19)
ffffffff80912f30:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80912f34:	01 07 41 40 	and	$r2,$r1,$r1
ffffffff80912f38:	48 01 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f3c:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80912f40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f44:	0e 02 3f fa 	ldi	$r17,526
ffffffff80912f48:	f7 d7 73 fa 	ldi	$r19,-10249($r19)
ffffffff80912f4c:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80912f50:	42 01 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f54:	53 07 ff 43 	clr	$r19
ffffffff80912f58:	51 07 ed 43 	mov	$r13,$r17
ffffffff80912f5c:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912f60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f64:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80912f68:	00 00 5b 07 	call	ra,($r27),ffffffff80912f6c <pmm_init+0x60c>
ffffffff80912f6c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912f70:	94 50 bd fb 	ldi	$r29,20628($r29)
ffffffff80912f74:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f78:	10 02 3f fa 	ldi	$r17,528
ffffffff80912f7c:	09 d8 73 fa 	ldi	$r19,-10231($r19)
ffffffff80912f80:	36 01 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f84:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80912f88:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f8c:	11 02 3f fa 	ldi	$r17,529
ffffffff80912f90:	35 d8 73 fa 	ldi	$r19,-10187($r19)
ffffffff80912f94:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80912f98:	30 01 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912f9c:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80912fa0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912fa4:	12 02 3f fa 	ldi	$r17,530
ffffffff80912fa8:	36 d3 73 fa 	ldi	$r19,-11466($r19)
ffffffff80912fac:	2b 01 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912fb0:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80912fb4:	00 20 3f fa 	ldi	$r17,8192
ffffffff80912fb8:	52 07 ff 43 	clr	$r18
ffffffff80912fbc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912fc0:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80912fc4:	00 00 5b 07 	call	ra,($r27),ffffffff80912fc8 <pmm_init+0x668>
ffffffff80912fc8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912fcc:	38 50 bd fb 	ldi	$r29,20536($r29)
ffffffff80912fd0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912fd4:	13 02 3f fa 	ldi	$r17,531
ffffffff80912fd8:	95 d7 73 fa 	ldi	$r19,-10347($r19)
ffffffff80912fdc:	1f 01 00 c0 	beq	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80912fe0:	00 00 60 8c 	ldl	$r3,0($r0)
ffffffff80912fe4:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff80912fe8:	24 89 63 48 	srl	$r3,0x1c,$r4
ffffffff80912fec:	61 05 81 40 	cmpult	$r4,$r1,$r1
ffffffff80912ff0:	29 01 20 c0 	beq	$r1,ffffffff80913498 <pmm_init+0xb38>
ffffffff80912ff4:	82 01 80 48 	s8addl	$r4,0,$r2
ffffffff80912ff8:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80912ffc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913000:	14 02 3f fa 	ldi	$r17,532
ffffffff80913004:	02 01 44 40 	addl	$r2,$r4,$r2
ffffffff80913008:	0e d7 73 fa 	ldi	$r19,-10482($r19)
ffffffff8091300c:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80913010:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913014:	01 05 a1 41 	cmpeq	$r13,$r1,$r1
ffffffff80913018:	10 01 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff8091301c:	01 00 3f fc 	ldih	$r1,1
ffffffff80913020:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913024:	15 02 3f fa 	ldi	$r17,533
ffffffff80913028:	00 88 21 f8 	ldi	$r1,-30720($r1)
ffffffff8091302c:	47 d8 73 fa 	ldi	$r19,-10169($r19)
ffffffff80913030:	03 07 61 40 	and	$r3,$r1,$r3
ffffffff80913034:	09 01 60 c4 	bne	$r3,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913038:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091303c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913040:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913044:	5c d8 10 fa 	ldi	$r16,-10148($r16)
ffffffff80913048:	51 f4 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091304c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913050:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913054:	b4 4f bd fb 	ldi	$r29,20404($r29)
ffffffff80913058:	51 07 ff 43 	clr	$r17
ffffffff8091305c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913060:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913064:	6e fd 5b 07 	call	ra,($r27),ffffffff80912620 <page_remove_pdx2>
ffffffff80913068:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091306c:	98 4f bd fb 	ldi	$r29,20376($r29)
ffffffff80913070:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913074:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913078:	19 02 3f fa 	ldi	$r17,537
ffffffff8091307c:	24 d7 73 fa 	ldi	$r19,-10460($r19)
ffffffff80913080:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80913084:	f5 00 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913088:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff8091308c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913090:	1a 02 3f fa 	ldi	$r17,538
ffffffff80913094:	36 d3 73 fa 	ldi	$r19,-11466($r19)
ffffffff80913098:	f0 00 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff8091309c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809130a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809130a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809130a8:	6d d8 10 fa 	ldi	$r16,-10131($r16)
ffffffff809130ac:	38 f4 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809130b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809130b4:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff809130b8:	50 4f bd fb 	ldi	$r29,20304($r29)
ffffffff809130bc:	00 20 3f fa 	ldi	$r17,8192
ffffffff809130c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809130c4:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff809130c8:	55 fd 5b 07 	call	ra,($r27),ffffffff80912620 <page_remove_pdx2>
ffffffff809130cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809130d0:	34 4f bd fb 	ldi	$r29,20276($r29)
ffffffff809130d4:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809130d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809130dc:	1e 02 3f fa 	ldi	$r17,542
ffffffff809130e0:	83 d8 73 fa 	ldi	$r19,-10109($r19)
ffffffff809130e4:	dd 00 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff809130e8:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff809130ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809130f0:	1f 02 3f fa 	ldi	$r17,543
ffffffff809130f4:	36 d3 73 fa 	ldi	$r19,-11466($r19)
ffffffff809130f8:	d8 00 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff809130fc:	28 82 29 8c 	ldl	$r1,-32216($r9)
ffffffff80913100:	30 82 6b 8c 	ldl	$r3,-32208($r11)
ffffffff80913104:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913108:	22 89 23 48 	srl	$r1,0x1c,$r2
ffffffff8091310c:	61 05 43 40 	cmpult	$r2,$r3,$r1
ffffffff80913110:	e1 00 20 c0 	beq	$r1,ffffffff80913498 <pmm_init+0xb38>
ffffffff80913114:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80913118:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff8091311c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913120:	22 02 3f fa 	ldi	$r17,546
ffffffff80913124:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913128:	95 d8 73 fa 	ldi	$r19,-10091($r19)
ffffffff8091312c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913130:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80913134:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80913138:	c8 00 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff8091313c:	07 00 1f fa 	ldi	$r16,7
ffffffff80913140:	35 00 00 02 	sys_call	0x35
ffffffff80913144:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913148:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff8091314c:	00 00 5b 07 	call	ra,($r27),ffffffff80913150 <pmm_init+0x7f0>
ffffffff80913150:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913154:	b0 4e bd fb 	ldi	$r29,20144($r29)
ffffffff80913158:	42 07 e0 43 	mov	$r0,$r2
ffffffff8091315c:	50 07 ff 43 	clr	$r16
ffffffff80913160:	35 00 00 02 	sys_call	0x35
ffffffff80913164:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80913168:	31 02 3f fa 	ldi	$r17,561
ffffffff8091316c:	00 05 22 40 	cmpeq	$r1,$r2,$r0
ffffffff80913170:	b8 00 00 c0 	beq	$r0,ffffffff80913454 <pmm_init+0xaf4>
ffffffff80913174:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913178:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091317c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913180:	e3 d8 10 fa 	ldi	$r16,-10013($r16)
ffffffff80913184:	02 f4 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913188:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091318c:	78 4e bd fb 	ldi	$r29,20088($r29)
ffffffff80913190:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913194:	e8 80 42 8c 	ldl	$r2,-32536($r2)
ffffffff80913198:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff8091319c:	0c 00 00 02 	sys_call	0xc
ffffffff809131a0:	28 82 29 8c 	ldl	$r1,-32216($r9)
ffffffff809131a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809131a8:	39 02 3f fa 	ldi	$r17,569
ffffffff809131ac:	fd d8 73 fa 	ldi	$r19,-9987($r19)
ffffffff809131b0:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809131b4:	a9 00 20 c4 	bne	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff809131b8:	07 00 1f fa 	ldi	$r16,7
ffffffff809131bc:	35 00 00 02 	sys_call	0x35
ffffffff809131c0:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809131c4:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff809131c8:	00 00 5b 07 	call	ra,($r27),ffffffff809131cc <pmm_init+0x86c>
ffffffff809131cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809131d0:	34 4e bd fb 	ldi	$r29,20020($r29)
ffffffff809131d4:	4f 07 e0 43 	mov	$r0,fp
ffffffff809131d8:	50 07 ff 43 	clr	$r16
ffffffff809131dc:	35 00 00 02 	sys_call	0x35
ffffffff809131e0:	07 00 1f fa 	ldi	$r16,7
ffffffff809131e4:	35 00 00 02 	sys_call	0x35
ffffffff809131e8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809131ec:	01 00 1f fa 	ldi	$r16,1
ffffffff809131f0:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809131f4:	00 00 5b 07 	call	ra,($r27),ffffffff809131f8 <pmm_init+0x898>
ffffffff809131f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809131fc:	08 4e bd fb 	ldi	$r29,19976($r29)
ffffffff80913200:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913204:	50 07 ff 43 	clr	$r16
ffffffff80913208:	35 00 00 02 	sys_call	0x35
ffffffff8091320c:	01 00 3f fc 	ldih	$r1,1
ffffffff80913210:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913214:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913218:	00 01 5f fa 	ldi	$r18,256
ffffffff8091321c:	00 cc 21 f8 	ldi	$r1,-13312($r1)
ffffffff80913220:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913224:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80913228:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091322c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913230:	00 00 5b 07 	call	ra,($r27),ffffffff80913234 <pmm_init+0x8d4>
ffffffff80913234:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913238:	cc 4d bd fb 	ldi	$r29,19916($r29)
ffffffff8091323c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913240:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80913244:	3f 02 3f fa 	ldi	$r17,575
ffffffff80913248:	10 d9 73 fa 	ldi	$r19,-9968($r19)
ffffffff8091324c:	83 00 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913250:	00 00 4d 88 	ldw	$r2,0($r13)
ffffffff80913254:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913258:	40 02 3f fa 	ldi	$r17,576
ffffffff8091325c:	46 d9 73 fa 	ldi	$r19,-9914($r19)
ffffffff80913260:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80913264:	7d 00 40 c0 	beq	$r2,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913268:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff8091326c:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913270:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913274:	00 21 5f fa 	ldi	$r18,8448
ffffffff80913278:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091327c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913280:	00 00 5b 07 	call	ra,($r27),ffffffff80913284 <pmm_init+0x924>
ffffffff80913284:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913288:	7c 4d bd fb 	ldi	$r29,19836($r29)
ffffffff8091328c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913290:	41 02 3f fa 	ldi	$r17,577
ffffffff80913294:	57 d9 73 fa 	ldi	$r19,-9897($r19)
ffffffff80913298:	70 00 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff8091329c:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809132a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809132a4:	42 02 3f fa 	ldi	$r17,578
ffffffff809132a8:	96 d9 73 fa 	ldi	$r19,-9834($r19)
ffffffff809132ac:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff809132b0:	6a 00 20 c0 	beq	$r1,ffffffff8091345c <pmm_init+0xafc>
ffffffff809132b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132b8:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff809132bc:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff809132c0:	00 01 1f fa 	ldi	$r16,256
ffffffff809132c4:	a7 d9 31 fa 	ldi	$r17,-9817($r17)
ffffffff809132c8:	19 06 5b 07 	call	ra,($r27),ffffffff80914b30 <strcpy>
ffffffff809132cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809132d0:	34 4d bd fb 	ldi	$r29,19764($r29)
ffffffff809132d4:	00 21 3f fa 	ldi	$r17,8448
ffffffff809132d8:	00 01 1f fa 	ldi	$r16,256
ffffffff809132dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132e0:	60 81 7b 8f 	ldl	$r27,-32416($r27)
ffffffff809132e4:	1e 06 5b 07 	call	ra,($r27),ffffffff80914b60 <strcmp>
ffffffff809132e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809132ec:	18 4d bd fb 	ldi	$r29,19736($r29)
ffffffff809132f0:	46 02 3f fa 	ldi	$r17,582
ffffffff809132f4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809132f8:	bc d9 73 fa 	ldi	$r19,-9796($r19)
ffffffff809132fc:	57 00 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913300:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80913304:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80913308:	30 82 4b 8c 	ldl	$r2,-32208($r11)
ffffffff8091330c:	33 01 b3 41 	subl	$r13,$r19,$r19
ffffffff80913310:	28 d5 a1 8d 	ldl	$r13,-10968($r1)
ffffffff80913314:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80913318:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff8091331c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913320:	13 03 6d 42 	mull	$r19,$r13,$r19
ffffffff80913324:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80913328:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff8091332c:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80913330:	5c 00 20 c0 	beq	$r1,ffffffff809134a4 <pmm_init+0xb44>
ffffffff80913334:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913338:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091333c:	d8 81 7b 8f 	ldl	$r27,-32296($r27)
ffffffff80913340:	00 01 1f fa 	ldi	$r16,256
ffffffff80913344:	13 01 33 40 	addl	$r1,$r19,$r19
ffffffff80913348:	00 01 f3 a3 	stb	$r31,256($r19)
ffffffff8091334c:	d4 05 5b 07 	call	ra,($r27),ffffffff80914aa0 <strlen>
ffffffff80913350:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913354:	b0 4c bd fb 	ldi	$r29,19632($r29)
ffffffff80913358:	49 02 3f fa 	ldi	$r17,585
ffffffff8091335c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913360:	f1 d9 73 fa 	ldi	$r19,-9743($r19)
ffffffff80913364:	3d 00 00 c4 	bne	$r0,ffffffff8091345c <pmm_init+0xafc>
ffffffff80913368:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff8091336c:	00 01 3f fa 	ldi	$r17,256
ffffffff80913370:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913374:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913378:	a9 fc 5b 07 	call	ra,($r27),ffffffff80912620 <page_remove_pdx2>
ffffffff8091337c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913380:	84 4c bd fb 	ldi	$r29,19588($r29)
ffffffff80913384:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913388:	00 21 3f fa 	ldi	$r17,8448
ffffffff8091338c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913390:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913394:	a2 fc 5b 07 	call	ra,($r27),ffffffff80912620 <page_remove_pdx2>
ffffffff80913398:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091339c:	68 4c bd fb 	ldi	$r29,19560($r29)
ffffffff809133a0:	07 00 1f fa 	ldi	$r16,7
ffffffff809133a4:	35 00 00 02 	sys_call	0x35
ffffffff809133a8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809133ac:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff809133b0:	00 00 5b 07 	call	ra,($r27),ffffffff809133b4 <pmm_init+0xa54>
ffffffff809133b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809133b8:	4c 4c bd fb 	ldi	$r29,19532($r29)
ffffffff809133bc:	42 07 e0 43 	mov	$r0,$r2
ffffffff809133c0:	50 07 ff 43 	clr	$r16
ffffffff809133c4:	35 00 00 02 	sys_call	0x35
ffffffff809133c8:	0f 05 e2 41 	cmpeq	fp,$r2,fp
ffffffff809133cc:	20 00 e0 c1 	beq	fp,ffffffff80913450 <pmm_init+0xaf0>
ffffffff809133d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809133d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809133d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809133dc:	12 da 10 fa 	ldi	$r16,-9710($r16)
ffffffff809133e0:	6b f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809133e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809133e8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809133ec:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809133f0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809133f4:	1c 4c bd fb 	ldi	$r29,19484($r29)
ffffffff809133f8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809133fc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913400:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80913404:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80913408:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff8091340c:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80913410:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913414:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913418:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091341c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913420:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff80913424:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80913428:	c5 fd ff 13 	br	ffffffff80912b40 <pmm_init+0x1e0>
ffffffff8091342c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913430:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913434:	33 01 61 42 	subl	$r19,$r1,$r19
ffffffff80913438:	97 fd ff 13 	br	ffffffff80912a98 <pmm_init+0x138>
ffffffff8091343c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913440:	01 00 5f f8 	ldi	$r2,1
ffffffff80913444:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80913448:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff8091344c:	e8 fd ff 13 	br	ffffffff80912bf0 <pmm_init+0x290>
ffffffff80913450:	5a 02 3f fa 	ldi	$r17,602
ffffffff80913454:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913458:	bc d8 73 fa 	ldi	$r19,-10052($r19)
ffffffff8091345c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913460:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913464:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913468:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091346c:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80913470:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff80913474:	b2 f3 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913478:	02 02 3f fa 	ldi	$r17,514
ffffffff8091347c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913480:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913484:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913488:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091348c:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff80913490:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff80913494:	aa f3 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913498:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091349c:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff809134a0:	b3 f9 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff809134a4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809134a8:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809134ac:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809134b0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809134b4:	74 00 3f fa 	ldi	$r17,116
ffffffff809134b8:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff809134bc:	4f d5 10 fa 	ldi	$r16,-10929($r16)
ffffffff809134c0:	9f f3 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff809134c4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809134c8:	f7 01 3f fa 	ldi	$r17,503
ffffffff809134cc:	59 d6 73 fa 	ldi	$r19,-10663($r19)
ffffffff809134d0:	e2 ff ff 13 	br	ffffffff8091345c <pmm_init+0xafc>
ffffffff809134d4:	81 fd ff 13 	br	ffffffff80912adc <pmm_init+0x17c>
ffffffff809134d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809134e0 <pgdir_alloc_page>:
ffffffff809134e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809134e4:	20 4b bd fb 	ldi	$r29,19232($r29)
ffffffff809134e8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809134ec:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809134f0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809134f4:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809134f8:	4c 07 f1 43 	mov	$r17,$r12
ffffffff809134fc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80913500:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913504:	4d 07 f2 43 	mov	$r18,$r13
ffffffff80913508:	07 00 1f fa 	ldi	$r16,7
ffffffff8091350c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913510:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913514:	35 00 00 02 	sys_call	0x35
ffffffff80913518:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff8091351c:	90 80 4a 8d 	ldl	$r10,-32624($r10)
ffffffff80913520:	01 00 1f fa 	ldi	$r16,1
ffffffff80913524:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80913528:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff8091352c:	00 00 5b 07 	call	ra,($r27),ffffffff80913530 <pgdir_alloc_page+0x50>
ffffffff80913530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913534:	d0 4a bd fb 	ldi	$r29,19152($r29)
ffffffff80913538:	49 07 e0 43 	mov	$r0,$r9
ffffffff8091353c:	50 07 ff 43 	clr	$r16
ffffffff80913540:	35 00 00 02 	sys_call	0x35
ffffffff80913544:	0a 00 20 c1 	beq	$r9,ffffffff80913570 <pgdir_alloc_page+0x90>
ffffffff80913548:	53 07 ed 43 	mov	$r13,$r19
ffffffff8091354c:	52 07 ec 43 	mov	$r12,$r18
ffffffff80913550:	51 07 e9 43 	mov	$r9,$r17
ffffffff80913554:	50 07 eb 43 	mov	$r11,$r16
ffffffff80913558:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091355c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913560:	00 00 5b 07 	call	ra,($r27),ffffffff80913564 <pgdir_alloc_page+0x84>
ffffffff80913564:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913568:	9c 4a bd fb 	ldi	$r29,19100($r29)
ffffffff8091356c:	0c 00 00 c4 	bne	$r0,ffffffff809135a0 <pgdir_alloc_page+0xc0>
ffffffff80913570:	40 07 e9 43 	mov	$r9,$r0
ffffffff80913574:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913578:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091357c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913580:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913584:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913588:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff8091358c:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80913590:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913594:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913598:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091359c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809135a0:	07 00 1f fa 	ldi	$r16,7
ffffffff809135a4:	35 00 00 02 	sys_call	0x35
ffffffff809135a8:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809135ac:	01 00 3f fa 	ldi	$r17,1
ffffffff809135b0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809135b4:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809135b8:	00 00 5b 07 	call	ra,($r27),ffffffff809135bc <pgdir_alloc_page+0xdc>
ffffffff809135bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809135c0:	44 4a bd fb 	ldi	$r29,19012($r29)
ffffffff809135c4:	50 07 ff 43 	clr	$r16
ffffffff809135c8:	35 00 00 02 	sys_call	0x35
ffffffff809135cc:	49 07 ff 43 	clr	$r9
ffffffff809135d0:	e7 ff ff 13 	br	ffffffff80913570 <pgdir_alloc_page+0x90>
ffffffff809135d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809135d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809135dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809135e0 <kmalloc>:
ffffffff809135e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809135e4:	20 4a bd fb 	ldi	$r29,18976($r29)
ffffffff809135e8:	01 00 5f fc 	ldih	$r2,1
ffffffff809135ec:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809135f0:	ff ff 30 f8 	ldi	$r1,-1($r16)
ffffffff809135f4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809135f8:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff809135fc:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913600:	62 02 3f fa 	ldi	$r17,610
ffffffff80913604:	31 da 73 fa 	ldi	$r19,-9679($r19)
ffffffff80913608:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff8091360c:	2a 00 20 c0 	beq	$r1,ffffffff809136b8 <kmalloc+0xd8>
ffffffff80913610:	ff 1f 50 f8 	ldi	$r2,8191($r16)
ffffffff80913614:	07 00 1f fa 	ldi	$r16,7
ffffffff80913618:	22 a9 41 48 	srl	$r2,0xd,$r2
ffffffff8091361c:	35 00 00 02 	sys_call	0x35
ffffffff80913620:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913624:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80913628:	50 07 e2 43 	mov	$r2,$r16
ffffffff8091362c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913630:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913634:	00 00 5b 07 	call	ra,($r27),ffffffff80913638 <kmalloc+0x58>
ffffffff80913638:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091363c:	c8 49 bd fb 	ldi	$r29,18888($r29)
ffffffff80913640:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913644:	50 07 ff 43 	clr	$r16
ffffffff80913648:	35 00 00 02 	sys_call	0x35
ffffffff8091364c:	17 00 40 c0 	beq	$r2,ffffffff809136ac <kmalloc+0xcc>
ffffffff80913650:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913654:	30 82 61 8c 	ldl	$r3,-32208($r1)
ffffffff80913658:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091365c:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80913660:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff80913664:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80913668:	33 01 53 40 	subl	$r2,$r19,$r19
ffffffff8091366c:	28 d5 41 8c 	ldl	$r2,-10968($r1)
ffffffff80913670:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80913674:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80913678:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff8091367c:	13 03 62 42 	mull	$r19,$r2,$r19
ffffffff80913680:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80913684:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff80913688:	61 05 23 40 	cmpult	$r1,$r3,$r1
ffffffff8091368c:	11 00 20 c0 	beq	$r1,ffffffff809136d4 <kmalloc+0xf4>
ffffffff80913690:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913694:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80913698:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091369c:	00 00 01 8c 	ldl	$r0,0($r1)
ffffffff809136a0:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff809136a4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809136a8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809136ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809136b0:	65 02 3f fa 	ldi	$r17,613
ffffffff809136b4:	4a da 73 fa 	ldi	$r19,-9654($r19)
ffffffff809136b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809136bc:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809136c0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809136c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809136c8:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff809136cc:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff809136d0:	1b f3 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff809136d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809136d8:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809136dc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809136e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809136e4:	74 00 3f fa 	ldi	$r17,116
ffffffff809136e8:	5d d5 52 fa 	ldi	$r18,-10915($r18)
ffffffff809136ec:	4f d5 10 fa 	ldi	$r16,-10929($r16)
ffffffff809136f0:	13 f3 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff809136f4:	5f 07 ff 43 	nop	
ffffffff809136f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809136fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913700 <kfree>:
ffffffff80913700:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913704:	00 49 bd fb 	ldi	$r29,18688($r29)
ffffffff80913708:	01 00 5f fc 	ldih	$r2,1
ffffffff8091370c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913710:	ff ff 31 f8 	ldi	$r1,-1($r17)
ffffffff80913714:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff80913718:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091371c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80913720:	38 00 20 c0 	beq	$r1,ffffffff80913804 <kfree+0x104>
ffffffff80913724:	2d 00 00 c2 	beq	$r16,ffffffff809137dc <kfree+0xdc>
ffffffff80913728:	00 80 3f fc 	ldih	$r1,-32768
ffffffff8091372c:	ff 1f 31 fa 	ldi	$r17,8191($r17)
ffffffff80913730:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913734:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff80913738:	81 05 01 42 	cmpule	$r16,$r1,$r1
ffffffff8091373c:	20 00 20 c0 	beq	$r1,ffffffff809137c0 <kfree+0xc0>
ffffffff80913740:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913744:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80913748:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091374c:	30 01 01 42 	subl	$r16,$r1,$r16
ffffffff80913750:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913754:	21 a9 01 4a 	srl	$r16,0xd,$r1
ffffffff80913758:	30 82 42 8c 	ldl	$r2,-32208($r2)
ffffffff8091375c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80913760:	1b 00 40 c0 	beq	$r2,ffffffff809137d0 <kfree+0xd0>
ffffffff80913764:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913768:	07 00 1f fa 	ldi	$r16,7
ffffffff8091376c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913770:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913774:	f0 81 42 8c 	ldl	$r2,-32272($r2)
ffffffff80913778:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091377c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80913780:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80913784:	35 00 00 02 	sys_call	0x35
ffffffff80913788:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091378c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80913790:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913794:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913798:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff8091379c:	00 00 5b 07 	call	ra,($r27),ffffffff809137a0 <kfree+0xa0>
ffffffff809137a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137a4:	60 48 bd fb 	ldi	$r29,18528($r29)
ffffffff809137a8:	50 07 ff 43 	clr	$r16
ffffffff809137ac:	35 00 00 02 	sys_call	0x35
ffffffff809137b0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809137b4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809137b8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809137bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809137c0:	01 00 3f f8 	ldi	$r1,1
ffffffff809137c4:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809137c8:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809137cc:	e0 ff ff 13 	br	ffffffff80913750 <kfree+0x50>
ffffffff809137d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137d4:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff809137d8:	e5 f8 5b 07 	call	ra,($r27),ffffffff80911b70 <pa2page.part.4>
ffffffff809137dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137e0:	6d 02 3f fa 	ldi	$r17,621
ffffffff809137e4:	57 da 73 fa 	ldi	$r19,-9641($r19)
ffffffff809137e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137ec:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809137f0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809137f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809137f8:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff809137fc:	80 d5 10 fa 	ldi	$r16,-10880($r16)
ffffffff80913800:	cf f2 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913804:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913808:	6c 02 3f fa 	ldi	$r17,620
ffffffff8091380c:	31 da 73 fa 	ldi	$r19,-9679($r19)
ffffffff80913810:	f5 ff ff 13 	br	ffffffff809137e8 <kfree+0xe8>
ffffffff80913814:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913818:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091381c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913820 <check_vma_overlap.isra.0.part.1>:
ffffffff80913820:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913824:	e0 47 bd fb 	ldi	$r29,18400($r29)
ffffffff80913828:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091382c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913830:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913834:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913838:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091383c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913840:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913844:	79 00 3f fa 	ldi	$r17,121
ffffffff80913848:	63 da 73 fa 	ldi	$r19,-9629($r19)
ffffffff8091384c:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80913850:	81 da 10 fa 	ldi	$r16,-9599($r16)
ffffffff80913854:	ba f2 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913858:	5f 07 ff 43 	nop	
ffffffff8091385c:	00 00 00 00 	sys_call/b	0

ffffffff80913860 <mm_create>:
ffffffff80913860:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913864:	a0 47 bd fb 	ldi	$r29,18336($r29)
ffffffff80913868:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091386c:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80913870:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913874:	30 00 1f fa 	ldi	$r16,48
ffffffff80913878:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091387c:	58 ff 5b 07 	call	ra,($r27),ffffffff809135e0 <kmalloc>
ffffffff80913880:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913884:	80 47 bd fb 	ldi	$r29,18304($r29)
ffffffff80913888:	06 00 00 c0 	beq	$r0,ffffffff809138a4 <mm_create+0x44>
ffffffff8091388c:	08 00 00 ac 	stl	$r0,8($r0)
ffffffff80913890:	00 00 00 ac 	stl	$r0,0($r0)
ffffffff80913894:	10 00 e0 af 	stl	$r31,16($r0)
ffffffff80913898:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff8091389c:	20 00 e0 ab 	stw	$r31,32($r0)
ffffffff809138a0:	28 00 e0 af 	stl	$r31,40($r0)
ffffffff809138a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809138a8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809138ac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809138b0 <find_vma>:
ffffffff809138b0:	17 00 00 c2 	beq	$r16,ffffffff80913910 <find_vma+0x60>
ffffffff809138b4:	10 00 10 8c 	ldl	$r0,16($r16)
ffffffff809138b8:	03 00 00 c0 	beq	$r0,ffffffff809138c8 <find_vma+0x18>
ffffffff809138bc:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff809138c0:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff809138c4:	16 00 20 c4 	bne	$r1,ffffffff80913920 <find_vma+0x70>
ffffffff809138c8:	40 07 f0 43 	mov	$r16,$r0
ffffffff809138cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809138d0:	08 00 00 8c 	ldl	$r0,8($r0)
ffffffff809138d4:	01 05 00 42 	cmpeq	$r16,$r0,$r1
ffffffff809138d8:	0d 00 20 c4 	bne	$r1,ffffffff80913910 <find_vma+0x60>
ffffffff809138dc:	e8 ff 20 8c 	ldl	$r1,-24($r0)
ffffffff809138e0:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff809138e4:	fa ff 3f c0 	beq	$r1,ffffffff809138d0 <find_vma+0x20>
ffffffff809138e8:	f0 ff 20 8c 	ldl	$r1,-16($r0)
ffffffff809138ec:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff809138f0:	f7 ff 3f c4 	bne	$r1,ffffffff809138d0 <find_vma+0x20>
ffffffff809138f4:	e0 ff 00 f8 	ldi	$r0,-32($r0)
ffffffff809138f8:	05 00 00 c0 	beq	$r0,ffffffff80913910 <find_vma+0x60>
ffffffff809138fc:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80913900:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913904:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913908:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091390c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913910:	40 07 ff 43 	clr	$r0
ffffffff80913914:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913918:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091391c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913920:	10 00 20 8c 	ldl	$r1,16($r0)
ffffffff80913924:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80913928:	e7 ff 3f c4 	bne	$r1,ffffffff809138c8 <find_vma+0x18>
ffffffff8091392c:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80913930:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913934:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913938:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091393c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913940 <insert_vma_struct>:
ffffffff80913940:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913944:	c0 46 bd fb 	ldi	$r29,18112($r29)
ffffffff80913948:	08 00 b1 8c 	ldl	$r5,8($r17)
ffffffff8091394c:	10 00 d1 8c 	ldl	$r6,16($r17)
ffffffff80913950:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913954:	42 07 f0 43 	mov	$r16,$r2
ffffffff80913958:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091395c:	61 05 a6 40 	cmpult	$r5,$r6,$r1
ffffffff80913960:	07 00 20 c4 	bne	$r1,ffffffff80913980 <insert_vma_struct+0x40>
ffffffff80913964:	30 00 e0 13 	br	ffffffff80913a28 <insert_vma_struct+0xe8>
ffffffff80913968:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091396c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913970:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80913974:	64 05 a3 40 	cmpult	$r5,$r3,$r4
ffffffff80913978:	1d 00 80 c4 	bne	$r4,ffffffff809139f0 <insert_vma_struct+0xb0>
ffffffff8091397c:	42 07 e1 43 	mov	$r1,$r2
ffffffff80913980:	08 00 22 8c 	ldl	$r1,8($r2)
ffffffff80913984:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80913988:	f9 ff 7f c0 	beq	$r3,ffffffff80913970 <insert_vma_struct+0x30>
ffffffff8091398c:	03 05 50 40 	cmpeq	$r2,$r16,$r3
ffffffff80913990:	41 07 f0 43 	mov	$r16,$r1
ffffffff80913994:	35 00 60 c4 	bne	$r3,ffffffff80913a6c <insert_vma_struct+0x12c>
ffffffff80913998:	f0 ff 82 8c 	ldl	$r4,-16($r2)
ffffffff8091399c:	e8 ff 62 8c 	ldl	$r3,-24($r2)
ffffffff809139a0:	63 05 64 40 	cmpult	$r3,$r4,$r3
ffffffff809139a4:	2e 00 60 c0 	beq	$r3,ffffffff80913a60 <insert_vma_struct+0x120>
ffffffff809139a8:	65 05 a4 40 	cmpult	$r5,$r4,$r5
ffffffff809139ac:	28 00 a0 c4 	bne	$r5,ffffffff80913a50 <insert_vma_struct+0x110>
ffffffff809139b0:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff809139b4:	1a 00 60 c0 	beq	$r3,ffffffff80913a20 <insert_vma_struct+0xe0>
ffffffff809139b8:	20 00 70 88 	ldw	$r3,32($r16)
ffffffff809139bc:	00 00 11 ae 	stl	$r16,0($r17)
ffffffff809139c0:	20 00 91 f8 	ldi	$r4,32($r17)
ffffffff809139c4:	00 00 81 ac 	stl	$r4,0($r1)
ffffffff809139c8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809139cc:	08 00 82 ac 	stl	$r4,8($r2)
ffffffff809139d0:	28 00 31 ac 	stl	$r1,40($r17)
ffffffff809139d4:	20 00 51 ac 	stl	$r2,32($r17)
ffffffff809139d8:	01 20 60 48 	addw	$r3,0x1,$r1
ffffffff809139dc:	20 00 30 a8 	stw	$r1,32($r16)
ffffffff809139e0:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809139e4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809139e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809139ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809139f0:	04 05 50 40 	cmpeq	$r2,$r16,$r4
ffffffff809139f4:	e8 ff 9f c0 	beq	$r4,ffffffff80913998 <insert_vma_struct+0x58>
ffffffff809139f8:	86 05 c3 40 	cmpule	$r6,$r3,$r6
ffffffff809139fc:	14 00 c0 c0 	beq	$r6,ffffffff80913a50 <insert_vma_struct+0x110>
ffffffff80913a00:	f0 ff 81 8c 	ldl	$r4,-16($r1)
ffffffff80913a04:	83 05 83 40 	cmpule	$r4,$r3,$r3
ffffffff80913a08:	eb ff 7f c0 	beq	$r3,ffffffff809139b8 <insert_vma_struct+0x78>
ffffffff80913a0c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a10:	7b 00 3f fa 	ldi	$r17,123
ffffffff80913a14:	ca da 73 fa 	ldi	$r19,-9526($r19)
ffffffff80913a18:	06 00 e0 13 	br	ffffffff80913a34 <insert_vma_struct+0xf4>
ffffffff80913a1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913a20:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80913a24:	f4 ff ff 13 	br	ffffffff809139f8 <insert_vma_struct+0xb8>
ffffffff80913a28:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a2c:	82 00 3f fa 	ldi	$r17,130
ffffffff80913a30:	8f da 73 fa 	ldi	$r19,-9585($r19)
ffffffff80913a34:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a38:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913a3c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913a40:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913a44:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80913a48:	81 da 10 fa 	ldi	$r16,-9599($r16)
ffffffff80913a4c:	3c f2 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913a50:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a54:	7a 00 3f fa 	ldi	$r17,122
ffffffff80913a58:	ab da 73 fa 	ldi	$r19,-9557($r19)
ffffffff80913a5c:	f5 ff ff 13 	br	ffffffff80913a34 <insert_vma_struct+0xf4>
ffffffff80913a60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a64:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913a68:	6d ff 5b 07 	call	ra,($r27),ffffffff80913820 <check_vma_overlap.isra.0.part.1>
ffffffff80913a6c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80913a70:	d1 ff ff 13 	br	ffffffff809139b8 <insert_vma_struct+0x78>
ffffffff80913a74:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913a78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913a7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913a80 <mm_destroy>:
ffffffff80913a80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913a84:	80 45 bd fb 	ldi	$r29,17792($r29)
ffffffff80913a88:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913a8c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913a90:	49 07 f0 43 	mov	$r16,$r9
ffffffff80913a94:	08 00 10 8e 	ldl	$r16,8($r16)
ffffffff80913a98:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913a9c:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80913aa0:	11 00 20 c4 	bne	$r1,ffffffff80913ae8 <mm_destroy+0x68>
ffffffff80913aa4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913aa8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913aac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913ab0:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80913ab4:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80913ab8:	30 00 3f fa 	ldi	$r17,48
ffffffff80913abc:	e0 ff 10 fa 	ldi	$r16,-32($r16)
ffffffff80913ac0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ac4:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80913ac8:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff80913acc:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80913ad0:	0b ff 5b 07 	call	ra,($r27),ffffffff80913700 <kfree>
ffffffff80913ad4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ad8:	08 00 09 8e 	ldl	$r16,8($r9)
ffffffff80913adc:	2c 45 bd fb 	ldi	$r29,17708($r29)
ffffffff80913ae0:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80913ae4:	f2 ff 3f c0 	beq	$r1,ffffffff80913ab0 <mm_destroy+0x30>
ffffffff80913ae8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913aec:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80913af0:	50 07 e9 43 	mov	$r9,$r16
ffffffff80913af4:	30 00 3f fa 	ldi	$r17,48
ffffffff80913af8:	01 ff 5b 07 	call	ra,($r27),ffffffff80913700 <kfree>
ffffffff80913afc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b00:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913b04:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913b08:	04 45 bd fb 	ldi	$r29,17668($r29)
ffffffff80913b0c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80913b10:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913b14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913b18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913b1c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913b20 <vmm_init>:
ffffffff80913b20:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913b24:	e0 44 bd fb 	ldi	$r29,17632($r29)
ffffffff80913b28:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b2c:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80913b30:	c0 ff de fb 	ldi	sp,-64(sp)
ffffffff80913b34:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913b38:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913b3c:	32 00 3f f9 	ldi	$r9,50
ffffffff80913b40:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913b44:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913b48:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80913b4c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80913b50:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80913b54:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80913b58:	41 f8 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff80913b5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b60:	a4 44 bd fb 	ldi	$r29,17572($r29)
ffffffff80913b64:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80913b68:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b6c:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80913b70:	3b f8 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff80913b74:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b78:	8c 44 bd fb 	ldi	$r29,17548($r29)
ffffffff80913b7c:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80913b80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b84:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80913b88:	00 00 5b 07 	call	ra,($r27),ffffffff80913b8c <vmm_init+0x6c>
ffffffff80913b8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b90:	74 44 bd fb 	ldi	$r29,17524($r29)
ffffffff80913b94:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b98:	4a 07 e0 43 	mov	$r0,$r10
ffffffff80913b9c:	c5 00 3f fa 	ldi	$r17,197
ffffffff80913ba0:	e8 da 73 fa 	ldi	$r19,-9496($r19)
ffffffff80913ba4:	0e 00 00 c4 	bne	$r0,ffffffff80913be0 <vmm_init+0xc0>
ffffffff80913ba8:	19 00 e0 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913bac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913bb0:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80913bb4:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80913bb8:	fb ff 29 f9 	ldi	$r9,-5($r9)
ffffffff80913bbc:	51 07 e0 43 	mov	$r0,$r17
ffffffff80913bc0:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913bc4:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80913bc8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913bcc:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80913bd0:	5b ff 5b 07 	call	ra,($r27),ffffffff80913940 <insert_vma_struct>
ffffffff80913bd4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913bd8:	2c 44 bd fb 	ldi	$r29,17452($r29)
ffffffff80913bdc:	14 00 20 c1 	beq	$r9,ffffffff80913c30 <vmm_init+0x110>
ffffffff80913be0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913be4:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80913be8:	30 00 1f fa 	ldi	$r16,48
ffffffff80913bec:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80913bf0:	7b fe 5b 07 	call	ra,($r27),ffffffff809135e0 <kmalloc>
ffffffff80913bf4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913bf8:	0c 44 bd fb 	ldi	$r29,17420($r29)
ffffffff80913bfc:	ec ff 1f c4 	bne	$r0,ffffffff80913bb0 <vmm_init+0x90>
ffffffff80913c00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c04:	cc 00 3f fa 	ldi	$r17,204
ffffffff80913c08:	b7 dc 73 fa 	ldi	$r19,-9033($r19)
ffffffff80913c0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c10:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c14:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913c18:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913c1c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913c20:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80913c24:	81 da 10 fa 	ldi	$r16,-9599($r16)
ffffffff80913c28:	c5 f1 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913c2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c30:	37 00 3f f9 	ldi	$r9,55
ffffffff80913c34:	0f 00 e0 13 	br	ffffffff80913c74 <vmm_init+0x154>
ffffffff80913c38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c40:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80913c44:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80913c48:	51 07 e0 43 	mov	$r0,$r17
ffffffff80913c4c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913c50:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80913c54:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff80913c58:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c5c:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80913c60:	37 ff 5b 07 	call	ra,($r27),ffffffff80913940 <insert_vma_struct>
ffffffff80913c64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c68:	9c 43 bd fb 	ldi	$r29,17308($r29)
ffffffff80913c6c:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80913c70:	0f 00 20 c0 	beq	$r1,ffffffff80913cb0 <vmm_init+0x190>
ffffffff80913c74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c78:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80913c7c:	30 00 1f fa 	ldi	$r16,48
ffffffff80913c80:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80913c84:	56 fe 5b 07 	call	ra,($r27),ffffffff809135e0 <kmalloc>
ffffffff80913c88:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c8c:	78 43 bd fb 	ldi	$r29,17272($r29)
ffffffff80913c90:	eb ff 1f c4 	bne	$r0,ffffffff80913c40 <vmm_init+0x120>
ffffffff80913c94:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c98:	d2 00 3f fa 	ldi	$r17,210
ffffffff80913c9c:	b7 dc 73 fa 	ldi	$r19,-9033($r19)
ffffffff80913ca0:	db ff ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913ca4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913ca8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913cac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913cb0:	08 00 2a 8c 	ldl	$r1,8($r10)
ffffffff80913cb4:	07 00 5f f8 	ldi	$r2,7
ffffffff80913cb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913cbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913cc0:	03 05 41 41 	cmpeq	$r10,$r1,$r3
ffffffff80913cc4:	2c 01 60 c4 	bne	$r3,ffffffff80914178 <vmm_init+0x658>
ffffffff80913cc8:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80913ccc:	fe ff 82 f8 	ldi	$r4,-2($r2)
ffffffff80913cd0:	03 05 64 40 	cmpeq	$r3,$r4,$r3
ffffffff80913cd4:	1c 01 60 c0 	beq	$r3,ffffffff80914148 <vmm_init+0x628>
ffffffff80913cd8:	f0 ff 61 8c 	ldl	$r3,-16($r1)
ffffffff80913cdc:	03 05 62 40 	cmpeq	$r3,$r2,$r3
ffffffff80913ce0:	19 01 60 c0 	beq	$r3,ffffffff80914148 <vmm_init+0x628>
ffffffff80913ce4:	05 00 42 f8 	ldi	$r2,5($r2)
ffffffff80913ce8:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80913cec:	05 fe 62 f8 	ldi	$r3,-507($r2)
ffffffff80913cf0:	f3 ff 7f c4 	bne	$r3,ffffffff80913cc0 <vmm_init+0x1a0>
ffffffff80913cf4:	05 00 3f f9 	ldi	$r9,5
ffffffff80913cf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913cfc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913d00:	51 07 e9 43 	mov	$r9,$r17
ffffffff80913d04:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913d08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d0c:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913d10:	00 00 5b 07 	call	ra,($r27),ffffffff80913d14 <vmm_init+0x1f4>
ffffffff80913d14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d18:	ec 42 bd fb 	ldi	$r29,17132($r29)
ffffffff80913d1c:	4f 07 e0 43 	mov	$r0,fp
ffffffff80913d20:	1d 01 00 c0 	beq	$r0,ffffffff80914198 <vmm_init+0x678>
ffffffff80913d24:	01 00 29 fa 	ldi	$r17,1($r9)
ffffffff80913d28:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913d2c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d30:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913d34:	00 00 5b 07 	call	ra,($r27),ffffffff80913d38 <vmm_init+0x218>
ffffffff80913d38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d3c:	c8 42 bd fb 	ldi	$r29,17096($r29)
ffffffff80913d40:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80913d44:	10 01 00 c0 	beq	$r0,ffffffff80914188 <vmm_init+0x668>
ffffffff80913d48:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80913d4c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913d50:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913d54:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d58:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913d5c:	00 00 5b 07 	call	ra,($r27),ffffffff80913d60 <vmm_init+0x240>
ffffffff80913d60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d64:	a0 42 bd fb 	ldi	$r29,17056($r29)
ffffffff80913d68:	13 01 00 c4 	bne	$r0,ffffffff809141b8 <vmm_init+0x698>
ffffffff80913d6c:	03 00 29 fa 	ldi	$r17,3($r9)
ffffffff80913d70:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913d74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d78:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913d7c:	00 00 5b 07 	call	ra,($r27),ffffffff80913d80 <vmm_init+0x260>
ffffffff80913d80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d84:	80 42 bd fb 	ldi	$r29,17024($r29)
ffffffff80913d88:	07 01 00 c4 	bne	$r0,ffffffff809141a8 <vmm_init+0x688>
ffffffff80913d8c:	04 00 29 fa 	ldi	$r17,4($r9)
ffffffff80913d90:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913d94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d98:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913d9c:	00 00 5b 07 	call	ra,($r27),ffffffff80913da0 <vmm_init+0x280>
ffffffff80913da0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913da4:	60 42 bd fb 	ldi	$r29,16992($r29)
ffffffff80913da8:	07 01 00 c4 	bne	$r0,ffffffff809141c8 <vmm_init+0x6a8>
ffffffff80913dac:	08 00 2f 8c 	ldl	$r1,8(fp)
ffffffff80913db0:	01 05 29 40 	cmpeq	$r1,$r9,$r1
ffffffff80913db4:	e8 00 20 c0 	beq	$r1,ffffffff80914158 <vmm_init+0x638>
ffffffff80913db8:	10 00 6f 8c 	ldl	$r3,16(fp)
ffffffff80913dbc:	0d 05 6d 40 	cmpeq	$r3,$r13,$r13
ffffffff80913dc0:	e5 00 a0 c1 	beq	$r13,ffffffff80914158 <vmm_init+0x638>
ffffffff80913dc4:	08 00 4e 8c 	ldl	$r2,8($r14)
ffffffff80913dc8:	02 05 49 40 	cmpeq	$r2,$r9,$r2
ffffffff80913dcc:	e6 00 40 c0 	beq	$r2,ffffffff80914168 <vmm_init+0x648>
ffffffff80913dd0:	10 00 2e 8c 	ldl	$r1,16($r14)
ffffffff80913dd4:	01 05 23 40 	cmpeq	$r1,$r3,$r1
ffffffff80913dd8:	e3 00 20 c0 	beq	$r1,ffffffff80914168 <vmm_init+0x648>
ffffffff80913ddc:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff80913de0:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80913de4:	c6 ff 3f c4 	bne	$r1,ffffffff80913d00 <vmm_init+0x1e0>
ffffffff80913de8:	04 00 3f f9 	ldi	$r9,4
ffffffff80913dec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913df0:	51 07 e9 43 	mov	$r9,$r17
ffffffff80913df4:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913df8:	0d 00 e9 43 	addw	$r31,$r9,$r13
ffffffff80913dfc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e00:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913e04:	00 00 5b 07 	call	ra,($r27),ffffffff80913e08 <vmm_init+0x2e8>
ffffffff80913e08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e0c:	f8 41 bd fb 	ldi	$r29,16888($r29)
ffffffff80913e10:	17 00 00 c0 	beq	$r0,ffffffff80913e70 <vmm_init+0x350>
ffffffff80913e14:	10 00 60 8e 	ldl	$r19,16($r0)
ffffffff80913e18:	08 00 40 8e 	ldl	$r18,8($r0)
ffffffff80913e1c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913e20:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913e24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e28:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913e2c:	da db 10 fa 	ldi	$r16,-9254($r16)
ffffffff80913e30:	d7 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913e34:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e38:	cc 41 bd fb 	ldi	$r29,16844($r29)
ffffffff80913e3c:	f4 00 3f fa 	ldi	$r17,244
ffffffff80913e40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e44:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913e48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913e4c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913e50:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913e54:	ff db 73 fa 	ldi	$r19,-9217($r19)
ffffffff80913e58:	1e d2 52 fa 	ldi	$r18,-11746($r18)
ffffffff80913e5c:	81 da 10 fa 	ldi	$r16,-9599($r16)
ffffffff80913e60:	37 f1 5b 07 	call	ra,($r27),ffffffff80910340 <__panic>
ffffffff80913e64:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e70:	ff ff 29 f9 	ldi	$r9,-1($r9)
ffffffff80913e74:	01 00 29 f8 	ldi	$r1,1($r9)
ffffffff80913e78:	dd ff 3f c4 	bne	$r1,ffffffff80913df0 <vmm_init+0x2d0>
ffffffff80913e7c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80913e80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e84:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80913e88:	fd fe 5b 07 	call	ra,($r27),ffffffff80913a80 <mm_destroy>
ffffffff80913e8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e90:	74 41 bd fb 	ldi	$r29,16756($r29)
ffffffff80913e94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e98:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80913e9c:	70 f7 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff80913ea0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ea4:	60 41 bd fb 	ldi	$r29,16736($r29)
ffffffff80913ea8:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff80913eac:	f9 00 3f fa 	ldi	$r17,249
ffffffff80913eb0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913eb4:	bc d8 73 fa 	ldi	$r19,-10052($r19)
ffffffff80913eb8:	55 ff 9f c1 	beq	$r12,ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913ebc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ec0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913ec4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913ec8:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80913ecc:	e8 81 4a 8d 	ldl	$r10,-32280($r10)
ffffffff80913ed0:	13 dc 10 fa 	ldi	$r16,-9197($r16)
ffffffff80913ed4:	ae f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913ed8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913edc:	28 41 bd fb 	ldi	$r29,16680($r29)
ffffffff80913ee0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ee4:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80913ee8:	5d f7 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff80913eec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ef0:	14 41 bd fb 	ldi	$r29,16660($r29)
ffffffff80913ef4:	49 07 e0 43 	mov	$r0,$r9
ffffffff80913ef8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913efc:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80913f00:	00 00 5b 07 	call	ra,($r27),ffffffff80913f04 <vmm_init+0x3e4>
ffffffff80913f04:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f08:	fc 40 bd fb 	ldi	$r29,16636($r29)
ffffffff80913f0c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913f10:	00 00 0a ac 	stl	$r0,0($r10)
ffffffff80913f14:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913f18:	08 01 3f fa 	ldi	$r17,264
ffffffff80913f1c:	32 dc 73 fa 	ldi	$r19,-9166($r19)
ffffffff80913f20:	3b ff 1f c0 	beq	$r0,ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913f24:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913f28:	10 81 21 8c 	ldl	$r1,-32496($r1)
ffffffff80913f2c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913f30:	0b 01 3f fa 	ldi	$r17,267
ffffffff80913f34:	02 d9 73 fa 	ldi	$r19,-9982($r19)
ffffffff80913f38:	00 00 c1 8d 	ldl	$r14,0($r1)
ffffffff80913f3c:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913f40:	18 00 c0 ad 	stl	$r14,24($r0)
ffffffff80913f44:	32 ff 3f c4 	bne	$r1,ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913f48:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f4c:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80913f50:	30 00 1f fa 	ldi	$r16,48
ffffffff80913f54:	a2 fd 5b 07 	call	ra,($r27),ffffffff809135e0 <kmalloc>
ffffffff80913f58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f5c:	a8 40 bd fb 	ldi	$r29,16552($r29)
ffffffff80913f60:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80913f64:	74 00 00 c0 	beq	$r0,ffffffff80914138 <vmm_init+0x618>
ffffffff80913f68:	80 00 3f fc 	ldih	$r1,128
ffffffff80913f6c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80913f70:	50 07 ed 43 	mov	$r13,$r16
ffffffff80913f74:	08 00 e0 af 	stl	$r31,8($r0)
ffffffff80913f78:	10 00 20 ac 	stl	$r1,16($r0)
ffffffff80913f7c:	02 00 3f f8 	ldi	$r1,2
ffffffff80913f80:	18 00 20 ac 	stl	$r1,24($r0)
ffffffff80913f84:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f88:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80913f8c:	6c fe 5b 07 	call	ra,($r27),ffffffff80913940 <insert_vma_struct>
ffffffff80913f90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f94:	70 40 bd fb 	ldi	$r29,16496($r29)
ffffffff80913f98:	00 01 3f fa 	ldi	$r17,256
ffffffff80913f9c:	50 07 ed 43 	mov	$r13,$r16
ffffffff80913fa0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913fa4:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80913fa8:	00 00 5b 07 	call	ra,($r27),ffffffff80913fac <vmm_init+0x48c>
ffffffff80913fac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913fb0:	54 40 bd fb 	ldi	$r29,16468($r29)
ffffffff80913fb4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913fb8:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff80913fbc:	00 01 3f f8 	ldi	$r1,256
ffffffff80913fc0:	14 01 3f fa 	ldi	$r17,276
ffffffff80913fc4:	4a dc 73 fa 	ldi	$r19,-9142($r19)
ffffffff80913fc8:	11 ff 9f c1 	beq	$r12,ffffffff80913c10 <vmm_init+0xf0>
ffffffff80913fcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fd0:	00 00 21 a0 	stb	$r1,0($r1)
ffffffff80913fd4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80913fd8:	9c fe 41 f8 	ldi	$r2,-356($r1)
ffffffff80913fdc:	fc ff 5f c4 	bne	$r2,ffffffff80913fd0 <vmm_init+0x4b0>
ffffffff80913fe0:	00 01 3f f8 	ldi	$r1,256
ffffffff80913fe4:	56 13 7f f8 	ldi	$r3,4950
ffffffff80913fe8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913ff0:	00 00 41 80 	ldbu	$r2,0($r1)
ffffffff80913ff4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80913ff8:	9c fe 81 f8 	ldi	$r4,-356($r1)
ffffffff80913ffc:	42 0d e2 43 	sextb	$r2,$r2
ffffffff80914000:	23 00 62 40 	subw	$r3,$r2,$r3
ffffffff80914004:	fa ff 9f c4 	bne	$r4,ffffffff80913ff0 <vmm_init+0x4d0>
ffffffff80914008:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091400c:	1e 01 3f fa 	ldi	$r17,286
ffffffff80914010:	64 dc 73 fa 	ldi	$r19,-9116($r19)
ffffffff80914014:	fe fe 7f c4 	bne	$r3,ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914018:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091401c:	48 81 7b 8f 	ldl	$r27,-32440($r27)
ffffffff80914020:	51 07 ff 43 	clr	$r17
ffffffff80914024:	50 07 ee 43 	mov	$r14,$r16
ffffffff80914028:	cd f9 5b 07 	call	ra,($r27),ffffffff80912760 <page_remove>
ffffffff8091402c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914030:	18 00 ed af 	stl	$r31,24($r13)
ffffffff80914034:	d4 3f bd fb 	ldi	$r29,16340($r29)
ffffffff80914038:	50 07 ed 43 	mov	$r13,$r16
ffffffff8091403c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914040:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80914044:	8e fe 5b 07 	call	ra,($r27),ffffffff80913a80 <mm_destroy>
ffffffff80914048:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091404c:	b8 3f bd fb 	ldi	$r29,16312($r29)
ffffffff80914050:	00 00 ea af 	stl	$r31,0($r10)
ffffffff80914054:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914058:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff8091405c:	00 f7 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff80914060:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914064:	a0 3f bd fb 	ldi	$r29,16288($r29)
ffffffff80914068:	09 05 20 41 	cmpeq	$r9,$r0,$r9
ffffffff8091406c:	34 01 3f fa 	ldi	$r17,308
ffffffff80914070:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914074:	bc d8 73 fa 	ldi	$r19,-10052($r19)
ffffffff80914078:	e5 fe 3f c1 	beq	$r9,ffffffff80913c10 <vmm_init+0xf0>
ffffffff8091407c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914080:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80914084:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914088:	6d dc 10 fa 	ldi	$r16,-9107($r16)
ffffffff8091408c:	40 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80914090:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914094:	70 3f bd fb 	ldi	$r29,16240($r29)
ffffffff80914098:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091409c:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff809140a0:	ef f6 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff809140a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809140a8:	5c 3f bd fb 	ldi	$r29,16220($r29)
ffffffff809140ac:	0b 05 60 41 	cmpeq	$r11,$r0,$r11
ffffffff809140b0:	ba 00 3f fa 	ldi	$r17,186
ffffffff809140b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809140b8:	bc d8 73 fa 	ldi	$r19,-10052($r19)
ffffffff809140bc:	d4 fe 7f c1 	beq	$r11,ffffffff80913c10 <vmm_init+0xf0>
ffffffff809140c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809140c4:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff809140c8:	e5 f6 5b 07 	call	ra,($r27),ffffffff80911c60 <nr_free_pages>
ffffffff809140cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809140d0:	34 3f bd fb 	ldi	$r29,16180($r29)
ffffffff809140d4:	51 07 e0 43 	mov	$r0,$r17
ffffffff809140d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809140dc:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809140e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809140e4:	89 dc 10 fa 	ldi	$r16,-9079($r16)
ffffffff809140e8:	29 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809140ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809140f0:	14 3f bd fb 	ldi	$r29,16148($r29)
ffffffff809140f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809140f8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809140fc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914100:	9f dc 10 fa 	ldi	$r16,-9057($r16)
ffffffff80914104:	22 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80914108:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091410c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914110:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914114:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80914118:	f8 3e bd fb 	ldi	$r29,16120($r29)
ffffffff8091411c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80914120:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914124:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80914128:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091412c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80914130:	40 00 de fb 	ldi	sp,64(sp)
ffffffff80914134:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914138:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091413c:	0f 01 3f fa 	ldi	$r17,271
ffffffff80914140:	b7 dc 73 fa 	ldi	$r19,-9033($r19)
ffffffff80914144:	b2 fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914148:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091414c:	db 00 3f fa 	ldi	$r17,219
ffffffff80914150:	0a db 73 fa 	ldi	$r19,-9462($r19)
ffffffff80914154:	ae fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914158:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091415c:	eb 00 3f fa 	ldi	$r17,235
ffffffff80914160:	80 db 73 fa 	ldi	$r19,-9344($r19)
ffffffff80914164:	aa fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914168:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091416c:	ec 00 3f fa 	ldi	$r17,236
ffffffff80914170:	ad db 73 fa 	ldi	$r19,-9299($r19)
ffffffff80914174:	a6 fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914178:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091417c:	d9 00 3f fa 	ldi	$r17,217
ffffffff80914180:	f3 da 73 fa 	ldi	$r19,-9485($r19)
ffffffff80914184:	a2 fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914188:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091418c:	e3 00 3f fa 	ldi	$r17,227
ffffffff80914190:	4c db 73 fa 	ldi	$r19,-9396($r19)
ffffffff80914194:	9e fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff80914198:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091419c:	e1 00 3f fa 	ldi	$r17,225
ffffffff809141a0:	3f db 73 fa 	ldi	$r19,-9409($r19)
ffffffff809141a4:	9a fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff809141a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809141ac:	e7 00 3f fa 	ldi	$r17,231
ffffffff809141b0:	66 db 73 fa 	ldi	$r19,-9370($r19)
ffffffff809141b4:	96 fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff809141b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809141bc:	e5 00 3f fa 	ldi	$r17,229
ffffffff809141c0:	59 db 73 fa 	ldi	$r19,-9383($r19)
ffffffff809141c4:	92 fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff809141c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809141cc:	e9 00 3f fa 	ldi	$r17,233
ffffffff809141d0:	73 db 73 fa 	ldi	$r19,-9357($r19)
ffffffff809141d4:	8e fe ff 13 	br	ffffffff80913c10 <vmm_init+0xf0>
ffffffff809141d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809141dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809141e0 <do_pgfault>:
ffffffff809141e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809141e4:	20 3e bd fb 	ldi	$r29,15904($r29)
ffffffff809141e8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809141ec:	51 07 f2 43 	mov	$r18,$r17
ffffffff809141f0:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809141f4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809141f8:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809141fc:	4c 07 f2 43 	mov	$r18,$r12
ffffffff80914200:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914204:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80914208:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff8091420c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914210:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80914214:	00 00 5b 07 	call	ra,($r27),ffffffff80914218 <do_pgfault+0x38>
ffffffff80914218:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091421c:	e8 3d bd fb 	ldi	$r29,15848($r29)
ffffffff80914220:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914224:	38 82 22 88 	ldw	$r1,-32200($r2)
ffffffff80914228:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff8091422c:	38 82 22 a8 	stw	$r1,-32200($r2)
ffffffff80914230:	03 00 00 c0 	beq	$r0,ffffffff80914240 <do_pgfault+0x60>
ffffffff80914234:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff80914238:	81 05 2c 40 	cmpule	$r1,$r12,$r1
ffffffff8091423c:	08 00 20 c4 	bne	$r1,ffffffff80914260 <do_pgfault+0x80>
ffffffff80914240:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914244:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80914248:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091424c:	51 07 ec 43 	mov	$r12,$r17
ffffffff80914250:	c3 dc 10 fa 	ldi	$r16,-9021($r16)
ffffffff80914254:	ce ef 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80914258:	ff ff ff 13 	br	ffffffff80914258 <do_pgfault+0x78>
ffffffff8091425c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914260:	18 00 40 8d 	ldl	$r10,24($r0)
ffffffff80914264:	01 00 3f fc 	ldih	$r1,1
ffffffff80914268:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff8091426c:	00 e0 3f f9 	ldi	$r9,-8192
ffffffff80914270:	00 cc 41 f8 	ldi	$r2,-13312($r1)
ffffffff80914274:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914278:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff8091427c:	00 88 21 f8 	ldi	$r1,-30720($r1)
ffffffff80914280:	09 07 89 41 	and	$r12,$r9,$r9
ffffffff80914284:	01 00 5f fa 	ldi	$r18,1
ffffffff80914288:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091428c:	0a 47 40 49 	and	$r10,0x2,$r10
ffffffff80914290:	42 00 41 45 	seleq	$r10,$r1,$r2,$r2
ffffffff80914294:	4a 07 e2 43 	mov	$r2,$r10
ffffffff80914298:	85 f6 5b 07 	call	ra,($r27),ffffffff80911cb0 <get_pte>
ffffffff8091429c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809142a0:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff809142a4:	64 3d bd fb 	ldi	$r29,15716($r29)
ffffffff809142a8:	08 00 20 c0 	beq	$r1,ffffffff809142cc <do_pgfault+0xec>
ffffffff809142ac:	40 07 ff 43 	clr	$r0
ffffffff809142b0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809142b4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809142b8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809142bc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809142c0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809142c4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809142c8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809142cc:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff809142d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809142d4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809142d8:	52 07 ea 43 	mov	$r10,$r18
ffffffff809142dc:	51 07 e9 43 	mov	$r9,$r17
ffffffff809142e0:	7f fc 5b 07 	call	ra,($r27),ffffffff809134e0 <pgdir_alloc_page>
ffffffff809142e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809142e8:	1c 3d bd fb 	ldi	$r29,15644($r29)
ffffffff809142ec:	ef ff 1f c4 	bne	$r0,ffffffff809142ac <do_pgfault+0xcc>
ffffffff809142f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809142f4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809142f8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809142fc:	f3 dc 10 fa 	ldi	$r16,-8973($r16)
ffffffff80914300:	a3 ef 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80914304:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914308:	fc 3c bd fb 	ldi	$r29,15612($r29)
ffffffff8091430c:	fc ff 1f f8 	ldi	$r0,-4
ffffffff80914310:	e7 ff ff 13 	br	ffffffff809142b0 <do_pgfault+0xd0>
ffffffff80914314:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914318:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091431c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914320 <printnum>:
ffffffff80914320:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914324:	e0 3c bd fb 	ldi	$r29,15584($r29)
ffffffff80914328:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091432c:	38 80 7b 8f 	ldl	$r27,-32712($r27)
ffffffff80914330:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80914334:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80914338:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091433c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80914340:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80914344:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80914348:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff8091434c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80914350:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80914354:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80914358:	4c 07 f1 43 	mov	$r17,$r12
ffffffff8091435c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80914360:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914364:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80914368:	73 02 fb 06 	call	$r23,($r27),ffffffff80914d38 <__remlu>
ffffffff8091436c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff80914370:	1f 00 20 c4 	bne	$r1,ffffffff809143f0 <printnum+0xd0>
ffffffff80914374:	0a 00 20 cd 	ble	$r9,ffffffff809143a0 <printnum+0x80>
ffffffff80914378:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091437c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914380:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff80914384:	51 07 ec 43 	mov	$r12,$r17
ffffffff80914388:	50 07 ed 43 	mov	$r13,$r16
ffffffff8091438c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80914390:	00 00 5b 07 	call	ra,($r27),ffffffff80914394 <printnum+0x74>
ffffffff80914394:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914398:	6c 3c bd fb 	ldi	$r29,15468($r29)
ffffffff8091439c:	f8 ff 3f c5 	bne	$r9,ffffffff80914380 <printnum+0x60>
ffffffff809143a0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809143a4:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff809143a8:	51 07 ec 43 	mov	$r12,$r17
ffffffff809143ac:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809143b0:	1a dd 21 f8 	ldi	$r1,-8934($r1)
ffffffff809143b4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff809143b8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff809143bc:	50 0d f0 43 	sextb	$r16,$r16
ffffffff809143c0:	00 00 5b 07 	call	ra,($r27),ffffffff809143c4 <printnum+0xa4>
ffffffff809143c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809143c8:	3c 3c bd fb 	ldi	$r29,15420($r29)
ffffffff809143cc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809143d0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809143d4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809143d8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809143dc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809143e0:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809143e4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809143e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809143ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809143f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809143f4:	00 81 7b 8f 	ldl	$r27,-32512($r27)
ffffffff809143f8:	54 07 e9 43 	mov	$r9,$r20
ffffffff809143fc:	18 02 fb 06 	call	$r23,($r27),ffffffff80914c60 <__divlu>
ffffffff80914400:	52 07 fb 43 	mov	$r27,$r18
ffffffff80914404:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914408:	10 82 7b 8f 	ldl	$r27,-32240($r27)
ffffffff8091440c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80914320 <printnum>
ffffffff80914410:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914414:	f0 3b bd fb 	ldi	$r29,15344($r29)
ffffffff80914418:	e1 ff ff 13 	br	ffffffff809143a0 <printnum+0x80>
ffffffff8091441c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914420 <vprintfmt>:
ffffffff80914420:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914424:	e0 3b bd fb 	ldi	$r29,15328($r29)
ffffffff80914428:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091442c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80914430:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80914434:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80914438:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091443c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80914440:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80914444:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80914448:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff8091444c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80914450:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914454:	4f 07 f2 43 	mov	$r18,fp
ffffffff80914458:	3c dd 6b f9 	ldi	$r11,-8900($r11)
ffffffff8091445c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80914460:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80914464:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80914468:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff8091446c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff80914470:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff80914474:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff80914478:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff8091447c:	0b 00 40 c4 	bne	$r2,ffffffff809144ac <vprintfmt+0x8c>
ffffffff80914480:	1b 00 00 c2 	beq	$r16,ffffffff809144f0 <vprintfmt+0xd0>
ffffffff80914484:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914488:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091448c:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80914490:	00 00 5b 07 	call	ra,($r27),ffffffff80914494 <vprintfmt+0x74>
ffffffff80914494:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914498:	6c 3b bd fb 	ldi	$r29,15212($r29)
ffffffff8091449c:	11 00 ee 27 	fillcs	17($r14)
ffffffff809144a0:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff809144a4:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809144a8:	f5 ff 5f c0 	beq	$r2,ffffffff80914480 <vprintfmt+0x60>
ffffffff809144ac:	ff ff 9f f8 	ldi	$r4,-1
ffffffff809144b0:	20 00 bf fa 	ldi	$r21,32
ffffffff809144b4:	45 07 ff 43 	clr	$r5
ffffffff809144b8:	48 07 ff 43 	clr	$r8
ffffffff809144bc:	4d 07 e4 43 	mov	$r4,$r13
ffffffff809144c0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff809144c4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff809144c8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff809144cc:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff809144d0:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff809144d4:	f2 00 e0 c0 	beq	$r7,ffffffff809148a0 <vprintfmt+0x480>
ffffffff809144d8:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff809144dc:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff809144e0:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff809144e4:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff809144e8:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff809144ec <vprintfmt+0xcc>
ffffffff809144ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809144f4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809144f8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809144fc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80914500:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914504:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80914508:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091450c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80914510:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80914514:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914518:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091451c:	30 00 bf fa 	ldi	$r21,48
ffffffff80914520:	e7 ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff80914524:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80914528:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091452c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914530:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80914534:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80914538:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091453c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80914540:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80914544:	c8 00 40 c0 	beq	$r2,ffffffff80914868 <vprintfmt+0x448>
ffffffff80914548:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091454c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914550:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80914554:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80914558:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff8091455c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80914560:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80914564:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80914568:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff8091456c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff80914570:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff80914574:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff80914578:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff8091457c:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80914580:	f3 ff 5f c4 	bne	$r2,ffffffff80914550 <vprintfmt+0x130>
ffffffff80914584:	b8 00 e0 13 	br	ffffffff80914868 <vprintfmt+0x448>
ffffffff80914588:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff8091458c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914590:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914594:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80914598:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff8091459c:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff809145a0:	00 00 5b 07 	call	ra,($r27),ffffffff809145a4 <vprintfmt+0x184>
ffffffff809145a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809145a8:	5c 3a bd fb 	ldi	$r29,14940($r29)
ffffffff809145ac:	b0 ff ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff809145b0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809145b4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809145b8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809145bc:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809145c0:	e0 00 20 c4 	bne	$r1,ffffffff80914944 <vprintfmt+0x524>
ffffffff809145c4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff809145c8:	52 07 ee 43 	mov	$r14,$r18
ffffffff809145cc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809145d0:	0a 00 7f fa 	ldi	$r19,10
ffffffff809145d4:	2e 00 c0 d5 	bge	$r14,ffffffff80914690 <vprintfmt+0x270>
ffffffff809145d8:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809145dc:	51 07 e9 43 	mov	$r9,$r17
ffffffff809145e0:	2d 00 1f fa 	ldi	$r16,45
ffffffff809145e4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809145e8:	00 00 5b 07 	call	ra,($r27),ffffffff809145ec <vprintfmt+0x1cc>
ffffffff809145ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809145f0:	14 3a bd fb 	ldi	$r29,14868($r29)
ffffffff809145f4:	32 01 ee 43 	negl	$r14,$r18
ffffffff809145f8:	0a 00 7f fa 	ldi	$r19,10
ffffffff809145fc:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80914600:	23 00 e0 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914604:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80914608:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091460c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914610:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80914614:	21 01 e2 43 	negl	$r2,$r1
ffffffff80914618:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091461c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80914620:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80914624:	af 00 20 c0 	beq	$r1,ffffffff809148e4 <vprintfmt+0x4c4>
ffffffff80914628:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091462c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80914630:	f8 de 42 f8 	ldi	$r2,-8456($r2)
ffffffff80914634:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80914638:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091463c:	a9 00 20 c0 	beq	$r1,ffffffff809148e4 <vprintfmt+0x4c4>
ffffffff80914640:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914644:	53 07 e1 43 	mov	$r1,$r19
ffffffff80914648:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091464c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80914650:	30 d2 52 fa 	ldi	$r18,-11728($r18)
ffffffff80914654:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914658:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff8091465c:	f8 00 5b 07 	call	ra,($r27),ffffffff80914a40 <printfmt>
ffffffff80914660:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914664:	a0 39 bd fb 	ldi	$r29,14752($r29)
ffffffff80914668:	81 ff ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff8091466c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914670:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80914674:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80914678:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff8091467c:	c0 00 20 c4 	bne	$r1,ffffffff80914980 <vprintfmt+0x560>
ffffffff80914680:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80914684:	08 00 7f fa 	ldi	$r19,8
ffffffff80914688:	4c 07 e2 43 	mov	$r2,$r12
ffffffff8091468c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914690:	54 07 ed 43 	mov	$r13,$r20
ffffffff80914694:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914698:	50 07 ea 43 	mov	$r10,$r16
ffffffff8091469c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809146a0:	10 82 7b 8f 	ldl	$r27,-32240($r27)
ffffffff809146a4:	1e ff 5b 07 	call	ra,($r27),ffffffff80914320 <printnum>
ffffffff809146a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809146ac:	58 39 bd fb 	ldi	$r29,14680($r29)
ffffffff809146b0:	6f ff ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff809146b4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff809146b8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809146bc:	80 ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff809146c0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809146c4:	30 00 1f fa 	ldi	$r16,48
ffffffff809146c8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809146cc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809146d0:	00 00 5b 07 	call	ra,($r27),ffffffff809146d4 <vprintfmt+0x2b4>
ffffffff809146d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809146d8:	2c 39 bd fb 	ldi	$r29,14636($r29)
ffffffff809146dc:	51 07 e9 43 	mov	$r9,$r17
ffffffff809146e0:	78 00 1f fa 	ldi	$r16,120
ffffffff809146e4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809146e8:	00 00 5b 07 	call	ra,($r27),ffffffff809146ec <vprintfmt+0x2cc>
ffffffff809146ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809146f0:	14 39 bd fb 	ldi	$r29,14612($r29)
ffffffff809146f4:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809146f8:	10 00 7f fa 	ldi	$r19,16
ffffffff809146fc:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80914700:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80914704:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914708:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091470c:	e0 ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914710:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914714:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80914718:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091471c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80914720:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80914724:	2b dd 7b fb 	ldi	$r27,-8917($r27)
ffffffff80914728:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091472c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80914730:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914734:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80914738:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091473c:	96 00 20 c4 	bne	$r1,ffffffff80914998 <vprintfmt+0x578>
ffffffff80914740:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80914744:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80914748:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff8091474c:	19 00 00 c2 	beq	$r16,ffffffff809147b4 <vprintfmt+0x394>
ffffffff80914750:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80914754:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914758:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091475c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914760:	03 00 80 c8 	blt	$r4,ffffffff80914770 <vprintfmt+0x350>
ffffffff80914764:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80914768:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff8091476c:	11 00 c0 c0 	beq	$r6,ffffffff809147b4 <vprintfmt+0x394>
ffffffff80914770:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914774:	65 00 a0 c4 	bne	$r5,ffffffff8091490c <vprintfmt+0x4ec>
ffffffff80914778:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff8091477c:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914780:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914784:	00 00 5b 07 	call	ra,($r27),ffffffff80914788 <vprintfmt+0x368>
ffffffff80914788:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091478c:	78 38 bd fb 	ldi	$r29,14456($r29)
ffffffff80914790:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914794:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914798:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff8091479c:	00 00 ee 27 	fillcs	0($r14)
ffffffff809147a0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809147a4:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809147a8:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809147ac:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809147b0:	eb ff 1f c6 	bne	$r16,ffffffff80914760 <vprintfmt+0x340>
ffffffff809147b4:	2e ff bf cd 	ble	$r13,ffffffff80914470 <vprintfmt+0x50>
ffffffff809147b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809147bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809147c0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809147c4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809147c8:	20 00 1f fa 	ldi	$r16,32
ffffffff809147cc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809147d0:	00 00 5b 07 	call	ra,($r27),ffffffff809147d4 <vprintfmt+0x3b4>
ffffffff809147d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809147d8:	2c 38 bd fb 	ldi	$r29,14380($r29)
ffffffff809147dc:	f8 ff bf c5 	bne	$r13,ffffffff809147c0 <vprintfmt+0x3a0>
ffffffff809147e0:	23 ff ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff809147e4:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809147e8:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809147ec:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809147f0:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809147f4:	5c 00 20 c4 	bne	$r1,ffffffff80914968 <vprintfmt+0x548>
ffffffff809147f8:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff809147fc:	0a 00 7f fa 	ldi	$r19,10
ffffffff80914800:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914804:	a2 ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914808:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091480c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80914810:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80914814:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80914818:	4d 00 20 c4 	bne	$r1,ffffffff80914950 <vprintfmt+0x530>
ffffffff8091481c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80914820:	10 00 7f fa 	ldi	$r19,16
ffffffff80914824:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914828:	99 ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff8091482c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914830:	01 00 bf f8 	ldi	$r5,1
ffffffff80914834:	22 ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff80914838:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091483c:	25 00 1f fa 	ldi	$r16,37
ffffffff80914840:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914844:	00 00 5b 07 	call	ra,($r27),ffffffff80914848 <vprintfmt+0x428>
ffffffff80914848:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091484c:	b8 37 bd fb 	ldi	$r29,14264($r29)
ffffffff80914850:	07 ff ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff80914854:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80914858:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091485c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80914860:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914864:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80914868:	42 07 ed 43 	mov	$r13,$r2
ffffffff8091486c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80914870:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80914874:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80914878:	4d 07 e2 43 	mov	$r2,$r13
ffffffff8091487c:	10 ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff80914880:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914884:	2d 00 bf fa 	ldi	$r21,45
ffffffff80914888:	0d ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff8091488c:	54 07 ed 43 	mov	$r13,$r20
ffffffff80914890:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914894:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff80914898:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff8091489c:	08 ff ff 13 	br	ffffffff809144c0 <vprintfmt+0xa0>
ffffffff809148a0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809148a4:	25 00 1f fa 	ldi	$r16,37
ffffffff809148a8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809148ac:	4f 07 ee 43 	mov	$r14,fp
ffffffff809148b0:	00 00 5b 07 	call	ra,($r27),ffffffff809148b4 <vprintfmt+0x494>
ffffffff809148b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809148b8:	4c 37 bd fb 	ldi	$r29,14156($r29)
ffffffff809148bc:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff809148c0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809148c4:	ea fe 3f c4 	bne	$r1,ffffffff80914470 <vprintfmt+0x50>
ffffffff809148c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809148cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809148d0:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff809148d4:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff809148d8:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809148dc:	fc ff 3f c0 	beq	$r1,ffffffff809148d0 <vprintfmt+0x4b0>
ffffffff809148e0:	e3 fe ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff809148e4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809148e8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809148ec:	50 07 ea 43 	mov	$r10,$r16
ffffffff809148f0:	32 dd 52 fa 	ldi	$r18,-8910($r18)
ffffffff809148f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809148f8:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff809148fc:	50 00 5b 07 	call	ra,($r27),ffffffff80914a40 <printfmt>
ffffffff80914900:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914904:	00 37 bd fb 	ldi	$r29,14080($r29)
ffffffff80914908:	d9 fe ff 13 	br	ffffffff80914470 <vprintfmt+0x50>
ffffffff8091490c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80914910:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80914914:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80914918:	97 ff 3f c4 	bne	$r1,ffffffff80914778 <vprintfmt+0x358>
ffffffff8091491c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80914920:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914924:	3f 00 1f fa 	ldi	$r16,63
ffffffff80914928:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091492c:	00 00 5b 07 	call	ra,($r27),ffffffff80914930 <vprintfmt+0x510>
ffffffff80914930:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914934:	d0 36 bd fb 	ldi	$r29,14032($r29)
ffffffff80914938:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff8091493c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914940:	95 ff ff 13 	br	ffffffff80914798 <vprintfmt+0x378>
ffffffff80914944:	1f ff 1f c5 	bne	$r8,ffffffff809145c4 <vprintfmt+0x1a4>
ffffffff80914948:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff8091494c:	1e ff ff 13 	br	ffffffff809145c8 <vprintfmt+0x1a8>
ffffffff80914950:	b2 ff 1f c5 	bne	$r8,ffffffff8091481c <vprintfmt+0x3fc>
ffffffff80914954:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914958:	10 00 7f fa 	ldi	$r19,16
ffffffff8091495c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914960:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80914964:	4a ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914968:	a3 ff 1f c5 	bne	$r8,ffffffff809147f8 <vprintfmt+0x3d8>
ffffffff8091496c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914970:	0a 00 7f fa 	ldi	$r19,10
ffffffff80914974:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914978:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff8091497c:	44 ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914980:	3f ff 1f c5 	bne	$r8,ffffffff80914680 <vprintfmt+0x260>
ffffffff80914984:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914988:	08 00 7f fa 	ldi	$r19,8
ffffffff8091498c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914990:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80914994:	3e ff ff 13 	br	ffffffff80914690 <vprintfmt+0x270>
ffffffff80914998:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091499c:	b8 80 7b 8f 	ldl	$r27,-32584($r27)
ffffffff809149a0:	51 07 e4 43 	mov	$r4,$r17
ffffffff809149a4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809149a8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809149ac:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809149b0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809149b4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809149b8:	45 00 5b 07 	call	ra,($r27),ffffffff80914ad0 <strnlen>
ffffffff809149bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809149c0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff809149c4:	44 36 bd fb 	ldi	$r29,13892($r29)
ffffffff809149c8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809149cc:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809149d0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809149d4:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff809149d8:	10 00 a0 cd 	ble	$r13,ffffffff80914a1c <vprintfmt+0x5fc>
ffffffff809149dc:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff809149e0:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809149e4:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809149e8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809149ec:	50 07 ee 43 	mov	$r14,$r16
ffffffff809149f0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809149f4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809149f8:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809149fc:	00 00 5b 07 	call	ra,($r27),ffffffff80914a00 <vprintfmt+0x5e0>
ffffffff80914a00:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a04:	00 36 bd fb 	ldi	$r29,13824($r29)
ffffffff80914a08:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80914a0c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914a10:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914a14:	f2 ff bf c5 	bne	$r13,ffffffff809149e0 <vprintfmt+0x5c0>
ffffffff80914a18:	4d 07 ff 43 	clr	$r13
ffffffff80914a1c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80914a20:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80914a24:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80914a28:	91 fe 1f c2 	beq	$r16,ffffffff80914470 <vprintfmt+0x50>
ffffffff80914a2c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80914a30:	4b ff ff 13 	br	ffffffff80914760 <vprintfmt+0x340>
ffffffff80914a34:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914a38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914a3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914a40 <printfmt>:
ffffffff80914a40:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914a44:	c0 35 bd fb 	ldi	$r29,13760($r29)
ffffffff80914a48:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80914a4c:	18 00 5f f8 	ldi	$r2,24
ffffffff80914a50:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80914a54:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80914a58:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80914a5c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80914a60:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80914a64:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80914a68:	53 07 e1 43 	mov	$r1,$r19
ffffffff80914a6c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80914a70:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914a74:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80914a78:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80914a7c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80914a80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914a84:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80914a88:	65 fe 5b 07 	call	ra,($r27),ffffffff80914420 <vprintfmt>
ffffffff80914a8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a90:	74 35 bd fb 	ldi	$r29,13684($r29)
ffffffff80914a94:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914a98:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80914a9c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80914aa0 <strlen>:
ffffffff80914aa0:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80914aa4:	40 07 ff 43 	clr	$r0
ffffffff80914aa8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff80914aac:	04 00 40 c0 	beq	$r2,ffffffff80914ac0 <strlen+0x20>
ffffffff80914ab0:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80914ab4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914ab8:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80914abc:	fc ff 5f c4 	bne	$r2,ffffffff80914ab0 <strlen+0x10>
ffffffff80914ac0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914ac4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914ac8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914acc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914ad0 <strnlen>:
ffffffff80914ad0:	13 00 20 c2 	beq	$r17,ffffffff80914b20 <strnlen+0x50>
ffffffff80914ad4:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80914ad8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff80914adc:	10 00 40 c0 	beq	$r2,ffffffff80914b20 <strnlen+0x50>
ffffffff80914ae0:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80914ae4:	04 00 e0 13 	br	ffffffff80914af8 <strnlen+0x28>
ffffffff80914ae8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914aec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914af0:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80914af4:	06 00 40 c0 	beq	$r2,ffffffff80914b10 <strnlen+0x40>
ffffffff80914af8:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff80914afc:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80914b00:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914b04:	fa ff 5f c0 	beq	$r2,ffffffff80914af0 <strnlen+0x20>
ffffffff80914b08:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914b0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b10:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914b14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b20:	40 07 ff 43 	clr	$r0
ffffffff80914b24:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914b28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b2c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914b30 <strcpy>:
ffffffff80914b30:	41 07 f0 43 	mov	$r16,$r1
ffffffff80914b34:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b40:	01 00 31 fa 	ldi	$r17,1($r17)
ffffffff80914b44:	ff ff 51 80 	ldbu	$r2,-1($r17)
ffffffff80914b48:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914b4c:	43 0d e2 43 	sextb	$r2,$r3
ffffffff80914b50:	ff ff 41 a0 	stb	$r2,-1($r1)
ffffffff80914b54:	fa ff 7f c4 	bne	$r3,ffffffff80914b40 <strcpy+0x10>
ffffffff80914b58:	40 07 f0 43 	mov	$r16,$r0
ffffffff80914b5c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80914b60 <strcmp>:
ffffffff80914b60:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80914b64:	00 00 11 80 	ldbu	$r0,0($r17)
ffffffff80914b68:	42 0d e1 43 	sextb	$r1,$r2
ffffffff80914b6c:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80914b70:	1b 00 40 c0 	beq	$r2,ffffffff80914be0 <strcmp+0x80>
ffffffff80914b74:	02 05 40 40 	cmpeq	$r2,$r0,$r2
ffffffff80914b78:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80914b7c:	08 00 40 c4 	bne	$r2,ffffffff80914ba0 <strcmp+0x40>
ffffffff80914b80:	0e 00 e0 13 	br	ffffffff80914bbc <strcmp+0x5c>
ffffffff80914b84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b90:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80914b94:	51 07 e2 43 	mov	$r2,$r17
ffffffff80914b98:	02 05 20 40 	cmpeq	$r1,$r0,$r2
ffffffff80914b9c:	0c 00 40 c0 	beq	$r2,ffffffff80914bd0 <strcmp+0x70>
ffffffff80914ba0:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff80914ba4:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80914ba8:	01 00 51 f8 	ldi	$r2,1($r17)
ffffffff80914bac:	01 00 11 80 	ldbu	$r0,1($r17)
ffffffff80914bb0:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80914bb4:	f6 ff 3f c4 	bne	$r1,ffffffff80914b90 <strcmp+0x30>
ffffffff80914bb8:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80914bbc:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80914bc0:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80914bc4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914bc8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914bcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914bd0:	01 e7 3f 48 	and	$r1,0xff,$r1
ffffffff80914bd4:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80914bd8:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80914bdc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914be0:	41 07 ff 43 	clr	$r1
ffffffff80914be4:	f5 ff ff 13 	br	ffffffff80914bbc <strcmp+0x5c>
ffffffff80914be8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914bec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914bf0 <memset>:
ffffffff80914bf0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80914bf4:	16 00 40 c2 	beq	$r18,ffffffff80914c50 <memset+0x60>
ffffffff80914bf8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80914bfc:	41 07 f0 43 	mov	$r16,$r1
ffffffff80914c00:	0c 00 60 c4 	bne	$r3,ffffffff80914c34 <memset+0x44>
ffffffff80914c04:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914c08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914c0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914c10:	50 00 e1 9b 	fillde	80($r1)
ffffffff80914c14:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80914c18:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff80914c1c:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80914c20:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80914c24:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80914c28:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff80914c2c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80914c30:	f7 ff 7f c0 	beq	$r3,ffffffff80914c10 <memset+0x20>
ffffffff80914c34:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80914c38:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff80914c3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914c40:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914c44:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80914c48:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff80914c4c:	fc ff 7f c0 	beq	$r3,ffffffff80914c40 <memset+0x50>
ffffffff80914c50:	40 07 f0 43 	mov	$r16,$r0
ffffffff80914c54:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914c58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914c5c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914c60 <__divlu>:
ffffffff80914c60:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80914c64:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80914c68:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80914c6c:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80914c70:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff80914c74:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80914c78:	5b 07 ff 43 	clr	$r27
ffffffff80914c7c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914c80:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80914c84:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80914c88:	0d 00 20 c0 	beq	$r1,ffffffff80914cc0 <__divlu+0x60>
ffffffff80914c8c:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff80914c90:	03 00 20 c8 	blt	$r1,ffffffff80914ca0 <__divlu+0x40>
ffffffff80914c94:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80914c98:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80914c9c:	fb ff 9f c7 	bne	$r28,ffffffff80914c8c <__divlu+0x2c>
ffffffff80914ca0:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80914ca4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80914ca8:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80914cac:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80914cb0:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80914cb4:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80914cb8:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80914cbc:	f8 ff 1f c4 	bne	$r0,ffffffff80914ca0 <__divlu+0x40>
ffffffff80914cc0:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80914cc4:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80914cc8:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80914ccc:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914cd0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80914cd4:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80914cd8:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914cdc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914ce0 <__divl>:
ffffffff80914ce0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80914ce4:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80914ce8:	de ff 9f d7 	bge	$r28,ffffffff80914c64 <__divlu+0x4>
ffffffff80914cec:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80914cf0:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80914cf4:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80914cf8:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80914cfc:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80914d00:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80914d04:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914d08:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80914d0c:	d4 ff ff 16 	bsr	$r23,ffffffff80914c60 <__divlu>
ffffffff80914d10:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80914d14:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80914d18:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff80914d1c:	23 01 fb 43 	negl	$r27,$r3
ffffffff80914d20:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80914d24:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80914d28:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914d2c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80914d30:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914d34:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914d38 <__remlu>:
ffffffff80914d38:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80914d3c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80914d40:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80914d44:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80914d48:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff80914d4c:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80914d50:	42 07 ff 43 	clr	$r2
ffffffff80914d54:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914d58:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80914d5c:	0b 00 20 c0 	beq	$r1,ffffffff80914d8c <__remlu+0x54>
ffffffff80914d60:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80914d64:	03 00 20 c8 	blt	$r1,ffffffff80914d74 <__remlu+0x3c>
ffffffff80914d68:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80914d6c:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80914d70:	fb ff 9f c7 	bne	$r28,ffffffff80914d60 <__remlu+0x28>
ffffffff80914d74:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80914d78:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff80914d7c:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff80914d80:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80914d84:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff80914d88:	fa ff 1f c4 	bne	$r0,ffffffff80914d74 <__remlu+0x3c>
ffffffff80914d8c:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80914d90:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80914d94:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80914d98:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914d9c:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80914da0:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914da4:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914da8 <__reml>:
ffffffff80914da8:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80914dac:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80914db0:	e2 ff 9f d7 	bge	$r28,ffffffff80914d3c <__remlu+0x4>
ffffffff80914db4:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80914db8:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80914dbc:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80914dc0:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80914dc4:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80914dc8:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80914dcc:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914dd0:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80914dd4:	d8 ff ff 16 	bsr	$r23,ffffffff80914d38 <__remlu>
ffffffff80914dd8:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80914ddc:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80914de0:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80914de4:	23 01 fb 43 	negl	$r27,$r3
ffffffff80914de8:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80914dec:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80914df0:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914df4:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80914df8:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914dfc:	00 00 fe ff 	ldih	$r31,0(sp)
