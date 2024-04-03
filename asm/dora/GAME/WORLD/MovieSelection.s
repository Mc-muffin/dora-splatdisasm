.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MovieSelection
/* 141CC 800239CC 0980023C */  lui        $v0, %hi(TaskerReloadState)
/* 141D0 800239D0 EC51428C */  lw         $v0, %lo(TaskerReloadState)($v0)
/* 141D4 800239D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 141D8 800239D8 1400BFAF */  sw         $ra, 0x14($sp)
/* 141DC 800239DC 3B014010 */  beqz       $v0, .L80023ECC
/* 141E0 800239E0 1000B0AF */   sw        $s0, 0x10($sp)
/* 141E4 800239E4 0980023C */  lui        $v0, %hi(gLevel)
/* 141E8 800239E8 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 141EC 800239EC 00000000 */  nop
/* 141F0 800239F0 36014014 */  bnez       $v0, .L80023ECC
/* 141F4 800239F4 00000000 */   nop
/* 141F8 800239F8 0980023C */  lui        $v0, %hi(gWorld)
/* 141FC 800239FC 3C56428C */  lw         $v0, %lo(gWorld)($v0)
/* 14200 80023A00 00000000 */  nop
/* 14204 80023A04 FFFF4424 */  addiu      $a0, $v0, -0x1
/* 14208 80023A08 0900832C */  sltiu      $v1, $a0, 0x9
/* 1420C 80023A0C 2F016010 */  beqz       $v1, .L80023ECC
/* 14210 80023A10 0180023C */   lui       $v0, %hi(jtbl_800113D0)
/* 14214 80023A14 D0134224 */  addiu      $v0, $v0, %lo(jtbl_800113D0)
/* 14218 80023A18 80180400 */  sll        $v1, $a0, 2
/* 1421C 80023A1C 21186200 */  addu       $v1, $v1, $v0
/* 14220 80023A20 0000648C */  lw         $a0, 0x0($v1)
/* 14224 80023A24 00000000 */  nop
/* 14228 80023A28 08008000 */  jr         $a0
/* 1422C 80023A2C 00000000 */   nop
jlabel .L80023A30
/* 14230 80023A30 F866010C */  jal        ClearJoyPad
/* 14234 80023A34 01001024 */   addiu     $s0, $zero, 0x1
/* 14238 80023A38 C46C010C */  jal        ScreenOn
/* 1423C 80023A3C 00000000 */   nop
/* 14240 80023A40 A66E000C */  jal        InitMemMalloc
/* 14244 80023A44 00000000 */   nop
/* 14248 80023A48 9B3E010C */  jal        AllocIntroMovieRAM
/* 1424C 80023A4C 00000000 */   nop
/* 14250 80023A50 D63E010C */  jal        PlayFullScreenMovie
/* 14254 80023A54 03000424 */   addiu     $a0, $zero, 0x3
/* 14258 80023A58 9F3C010C */  jal        CheckMovieRequest
/* 1425C 80023A5C 00000000 */   nop
/* 14260 80023A60 913E010C */  jal        DeAllocIntroMovieRAM
/* 14264 80023A64 00000000 */   nop
/* 14268 80023A68 A66E000C */  jal        InitMemMalloc
/* 1426C 80023A6C 00000000 */   nop
/* 14270 80023A70 F866010C */  jal        ClearJoyPad
/* 14274 80023A74 00000000 */   nop
/* 14278 80023A78 0980013C */  lui        $at, %hi(MovieDone)
/* 1427C 80023A7C F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 14280 80023A80 F866010C */  jal        ClearJoyPad
/* 14284 80023A84 00000000 */   nop
/* 14288 80023A88 C46C010C */  jal        ScreenOn
/* 1428C 80023A8C 00000000 */   nop
/* 14290 80023A90 A66E000C */  jal        InitMemMalloc
/* 14294 80023A94 00000000 */   nop
/* 14298 80023A98 9B3E010C */  jal        AllocIntroMovieRAM
/* 1429C 80023A9C 00000000 */   nop
/* 142A0 80023AA0 7B8F0008 */  j          .L80023DEC
/* 142A4 80023AA4 04000424 */   addiu     $a0, $zero, 0x4
jlabel .L80023AA8
/* 142A8 80023AA8 F866010C */  jal        ClearJoyPad
/* 142AC 80023AAC 01001024 */   addiu     $s0, $zero, 0x1
/* 142B0 80023AB0 C46C010C */  jal        ScreenOn
/* 142B4 80023AB4 00000000 */   nop
/* 142B8 80023AB8 A66E000C */  jal        InitMemMalloc
/* 142BC 80023ABC 00000000 */   nop
/* 142C0 80023AC0 9B3E010C */  jal        AllocIntroMovieRAM
/* 142C4 80023AC4 00000000 */   nop
/* 142C8 80023AC8 D63E010C */  jal        PlayFullScreenMovie
/* 142CC 80023ACC 07000424 */   addiu     $a0, $zero, 0x7
/* 142D0 80023AD0 9F3C010C */  jal        CheckMovieRequest
/* 142D4 80023AD4 00000000 */   nop
/* 142D8 80023AD8 913E010C */  jal        DeAllocIntroMovieRAM
/* 142DC 80023ADC 00000000 */   nop
/* 142E0 80023AE0 A66E000C */  jal        InitMemMalloc
/* 142E4 80023AE4 00000000 */   nop
/* 142E8 80023AE8 F866010C */  jal        ClearJoyPad
/* 142EC 80023AEC 00000000 */   nop
/* 142F0 80023AF0 0980013C */  lui        $at, %hi(MovieDone)
/* 142F4 80023AF4 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 142F8 80023AF8 F866010C */  jal        ClearJoyPad
/* 142FC 80023AFC 00000000 */   nop
/* 14300 80023B00 C46C010C */  jal        ScreenOn
/* 14304 80023B04 00000000 */   nop
/* 14308 80023B08 A66E000C */  jal        InitMemMalloc
/* 1430C 80023B0C 00000000 */   nop
/* 14310 80023B10 9B3E010C */  jal        AllocIntroMovieRAM
/* 14314 80023B14 00000000 */   nop
/* 14318 80023B18 7B8F0008 */  j          .L80023DEC
/* 1431C 80023B1C 08000424 */   addiu     $a0, $zero, 0x8
jlabel .L80023B20
/* 14320 80023B20 F866010C */  jal        ClearJoyPad
/* 14324 80023B24 01001024 */   addiu     $s0, $zero, 0x1
/* 14328 80023B28 C46C010C */  jal        ScreenOn
/* 1432C 80023B2C 00000000 */   nop
/* 14330 80023B30 A66E000C */  jal        InitMemMalloc
/* 14334 80023B34 00000000 */   nop
/* 14338 80023B38 9B3E010C */  jal        AllocIntroMovieRAM
/* 1433C 80023B3C 00000000 */   nop
/* 14340 80023B40 D63E010C */  jal        PlayFullScreenMovie
/* 14344 80023B44 0B000424 */   addiu     $a0, $zero, 0xB
/* 14348 80023B48 9F3C010C */  jal        CheckMovieRequest
/* 1434C 80023B4C 00000000 */   nop
/* 14350 80023B50 913E010C */  jal        DeAllocIntroMovieRAM
/* 14354 80023B54 00000000 */   nop
/* 14358 80023B58 A66E000C */  jal        InitMemMalloc
/* 1435C 80023B5C 00000000 */   nop
/* 14360 80023B60 F866010C */  jal        ClearJoyPad
/* 14364 80023B64 00000000 */   nop
/* 14368 80023B68 0980013C */  lui        $at, %hi(MovieDone)
/* 1436C 80023B6C F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 14370 80023B70 F866010C */  jal        ClearJoyPad
/* 14374 80023B74 00000000 */   nop
/* 14378 80023B78 C46C010C */  jal        ScreenOn
/* 1437C 80023B7C 00000000 */   nop
/* 14380 80023B80 A66E000C */  jal        InitMemMalloc
/* 14384 80023B84 00000000 */   nop
/* 14388 80023B88 9B3E010C */  jal        AllocIntroMovieRAM
/* 1438C 80023B8C 00000000 */   nop
/* 14390 80023B90 7B8F0008 */  j          .L80023DEC
/* 14394 80023B94 0C000424 */   addiu     $a0, $zero, 0xC
jlabel .L80023B98
/* 14398 80023B98 F866010C */  jal        ClearJoyPad
/* 1439C 80023B9C 01001024 */   addiu     $s0, $zero, 0x1
/* 143A0 80023BA0 C46C010C */  jal        ScreenOn
/* 143A4 80023BA4 00000000 */   nop
/* 143A8 80023BA8 A66E000C */  jal        InitMemMalloc
/* 143AC 80023BAC 00000000 */   nop
/* 143B0 80023BB0 9B3E010C */  jal        AllocIntroMovieRAM
/* 143B4 80023BB4 00000000 */   nop
/* 143B8 80023BB8 D63E010C */  jal        PlayFullScreenMovie
/* 143BC 80023BBC 0E000424 */   addiu     $a0, $zero, 0xE
/* 143C0 80023BC0 9F3C010C */  jal        CheckMovieRequest
/* 143C4 80023BC4 00000000 */   nop
/* 143C8 80023BC8 913E010C */  jal        DeAllocIntroMovieRAM
/* 143CC 80023BCC 00000000 */   nop
/* 143D0 80023BD0 A66E000C */  jal        InitMemMalloc
/* 143D4 80023BD4 00000000 */   nop
/* 143D8 80023BD8 F866010C */  jal        ClearJoyPad
/* 143DC 80023BDC 00000000 */   nop
/* 143E0 80023BE0 0980013C */  lui        $at, %hi(MovieDone)
/* 143E4 80023BE4 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 143E8 80023BE8 F866010C */  jal        ClearJoyPad
/* 143EC 80023BEC 00000000 */   nop
/* 143F0 80023BF0 C46C010C */  jal        ScreenOn
/* 143F4 80023BF4 00000000 */   nop
/* 143F8 80023BF8 A66E000C */  jal        InitMemMalloc
/* 143FC 80023BFC 00000000 */   nop
/* 14400 80023C00 9B3E010C */  jal        AllocIntroMovieRAM
/* 14404 80023C04 00000000 */   nop
/* 14408 80023C08 7B8F0008 */  j          .L80023DEC
/* 1440C 80023C0C 0F000424 */   addiu     $a0, $zero, 0xF
jlabel .L80023C10
/* 14410 80023C10 F866010C */  jal        ClearJoyPad
/* 14414 80023C14 01001024 */   addiu     $s0, $zero, 0x1
/* 14418 80023C18 C46C010C */  jal        ScreenOn
/* 1441C 80023C1C 00000000 */   nop
/* 14420 80023C20 A66E000C */  jal        InitMemMalloc
/* 14424 80023C24 00000000 */   nop
/* 14428 80023C28 9B3E010C */  jal        AllocIntroMovieRAM
/* 1442C 80023C2C 00000000 */   nop
/* 14430 80023C30 D63E010C */  jal        PlayFullScreenMovie
/* 14434 80023C34 11000424 */   addiu     $a0, $zero, 0x11
/* 14438 80023C38 9F3C010C */  jal        CheckMovieRequest
/* 1443C 80023C3C 00000000 */   nop
/* 14440 80023C40 913E010C */  jal        DeAllocIntroMovieRAM
/* 14444 80023C44 00000000 */   nop
/* 14448 80023C48 A66E000C */  jal        InitMemMalloc
/* 1444C 80023C4C 00000000 */   nop
/* 14450 80023C50 F866010C */  jal        ClearJoyPad
/* 14454 80023C54 00000000 */   nop
/* 14458 80023C58 0980013C */  lui        $at, %hi(MovieDone)
/* 1445C 80023C5C F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 14460 80023C60 F866010C */  jal        ClearJoyPad
/* 14464 80023C64 00000000 */   nop
/* 14468 80023C68 C46C010C */  jal        ScreenOn
/* 1446C 80023C6C 00000000 */   nop
/* 14470 80023C70 A66E000C */  jal        InitMemMalloc
/* 14474 80023C74 00000000 */   nop
/* 14478 80023C78 9B3E010C */  jal        AllocIntroMovieRAM
/* 1447C 80023C7C 00000000 */   nop
/* 14480 80023C80 7B8F0008 */  j          .L80023DEC
/* 14484 80023C84 12000424 */   addiu     $a0, $zero, 0x12
jlabel .L80023C88
/* 14488 80023C88 F866010C */  jal        ClearJoyPad
/* 1448C 80023C8C 01001024 */   addiu     $s0, $zero, 0x1
/* 14490 80023C90 C46C010C */  jal        ScreenOn
/* 14494 80023C94 00000000 */   nop
/* 14498 80023C98 A66E000C */  jal        InitMemMalloc
/* 1449C 80023C9C 00000000 */   nop
/* 144A0 80023CA0 9B3E010C */  jal        AllocIntroMovieRAM
/* 144A4 80023CA4 00000000 */   nop
/* 144A8 80023CA8 D63E010C */  jal        PlayFullScreenMovie
/* 144AC 80023CAC 14000424 */   addiu     $a0, $zero, 0x14
/* 144B0 80023CB0 9F3C010C */  jal        CheckMovieRequest
/* 144B4 80023CB4 00000000 */   nop
/* 144B8 80023CB8 913E010C */  jal        DeAllocIntroMovieRAM
/* 144BC 80023CBC 00000000 */   nop
/* 144C0 80023CC0 A66E000C */  jal        InitMemMalloc
/* 144C4 80023CC4 00000000 */   nop
/* 144C8 80023CC8 F866010C */  jal        ClearJoyPad
/* 144CC 80023CCC 00000000 */   nop
/* 144D0 80023CD0 0980013C */  lui        $at, %hi(MovieDone)
/* 144D4 80023CD4 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 144D8 80023CD8 F866010C */  jal        ClearJoyPad
/* 144DC 80023CDC 00000000 */   nop
/* 144E0 80023CE0 C46C010C */  jal        ScreenOn
/* 144E4 80023CE4 00000000 */   nop
/* 144E8 80023CE8 A66E000C */  jal        InitMemMalloc
/* 144EC 80023CEC 00000000 */   nop
/* 144F0 80023CF0 9B3E010C */  jal        AllocIntroMovieRAM
/* 144F4 80023CF4 00000000 */   nop
/* 144F8 80023CF8 7B8F0008 */  j          .L80023DEC
/* 144FC 80023CFC 15000424 */   addiu     $a0, $zero, 0x15
jlabel .L80023D00
/* 14500 80023D00 F866010C */  jal        ClearJoyPad
/* 14504 80023D04 01001024 */   addiu     $s0, $zero, 0x1
/* 14508 80023D08 C46C010C */  jal        ScreenOn
/* 1450C 80023D0C 00000000 */   nop
/* 14510 80023D10 A66E000C */  jal        InitMemMalloc
/* 14514 80023D14 00000000 */   nop
/* 14518 80023D18 9B3E010C */  jal        AllocIntroMovieRAM
/* 1451C 80023D1C 00000000 */   nop
/* 14520 80023D20 D63E010C */  jal        PlayFullScreenMovie
/* 14524 80023D24 17000424 */   addiu     $a0, $zero, 0x17
/* 14528 80023D28 9F3C010C */  jal        CheckMovieRequest
/* 1452C 80023D2C 00000000 */   nop
/* 14530 80023D30 913E010C */  jal        DeAllocIntroMovieRAM
/* 14534 80023D34 00000000 */   nop
/* 14538 80023D38 A66E000C */  jal        InitMemMalloc
/* 1453C 80023D3C 00000000 */   nop
/* 14540 80023D40 F866010C */  jal        ClearJoyPad
/* 14544 80023D44 00000000 */   nop
/* 14548 80023D48 0980013C */  lui        $at, %hi(MovieDone)
/* 1454C 80023D4C F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 14550 80023D50 F866010C */  jal        ClearJoyPad
/* 14554 80023D54 00000000 */   nop
/* 14558 80023D58 C46C010C */  jal        ScreenOn
/* 1455C 80023D5C 00000000 */   nop
/* 14560 80023D60 A66E000C */  jal        InitMemMalloc
/* 14564 80023D64 00000000 */   nop
/* 14568 80023D68 9B3E010C */  jal        AllocIntroMovieRAM
/* 1456C 80023D6C 00000000 */   nop
/* 14570 80023D70 7B8F0008 */  j          .L80023DEC
/* 14574 80023D74 18000424 */   addiu     $a0, $zero, 0x18
jlabel .L80023D78
/* 14578 80023D78 F866010C */  jal        ClearJoyPad
/* 1457C 80023D7C 01001024 */   addiu     $s0, $zero, 0x1
/* 14580 80023D80 C46C010C */  jal        ScreenOn
/* 14584 80023D84 00000000 */   nop
/* 14588 80023D88 A66E000C */  jal        InitMemMalloc
/* 1458C 80023D8C 00000000 */   nop
/* 14590 80023D90 9B3E010C */  jal        AllocIntroMovieRAM
/* 14594 80023D94 00000000 */   nop
/* 14598 80023D98 D63E010C */  jal        PlayFullScreenMovie
/* 1459C 80023D9C 1B000424 */   addiu     $a0, $zero, 0x1B
/* 145A0 80023DA0 9F3C010C */  jal        CheckMovieRequest
/* 145A4 80023DA4 00000000 */   nop
/* 145A8 80023DA8 913E010C */  jal        DeAllocIntroMovieRAM
/* 145AC 80023DAC 00000000 */   nop
/* 145B0 80023DB0 A66E000C */  jal        InitMemMalloc
/* 145B4 80023DB4 00000000 */   nop
/* 145B8 80023DB8 F866010C */  jal        ClearJoyPad
/* 145BC 80023DBC 00000000 */   nop
/* 145C0 80023DC0 0980013C */  lui        $at, %hi(MovieDone)
/* 145C4 80023DC4 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 145C8 80023DC8 F866010C */  jal        ClearJoyPad
/* 145CC 80023DCC 00000000 */   nop
/* 145D0 80023DD0 C46C010C */  jal        ScreenOn
/* 145D4 80023DD4 00000000 */   nop
/* 145D8 80023DD8 A66E000C */  jal        InitMemMalloc
/* 145DC 80023DDC 00000000 */   nop
/* 145E0 80023DE0 9B3E010C */  jal        AllocIntroMovieRAM
/* 145E4 80023DE4 00000000 */   nop
/* 145E8 80023DE8 1C000424 */  addiu      $a0, $zero, 0x1C
.L80023DEC:
/* 145EC 80023DEC D63E010C */  jal        PlayFullScreenMovie
/* 145F0 80023DF0 00000000 */   nop
/* 145F4 80023DF4 9F3C010C */  jal        CheckMovieRequest
/* 145F8 80023DF8 00000000 */   nop
/* 145FC 80023DFC 913E010C */  jal        DeAllocIntroMovieRAM
/* 14600 80023E00 00000000 */   nop
/* 14604 80023E04 A66E000C */  jal        InitMemMalloc
/* 14608 80023E08 00000000 */   nop
/* 1460C 80023E0C F866010C */  jal        ClearJoyPad
/* 14610 80023E10 00000000 */   nop
/* 14614 80023E14 0980013C */  lui        $at, %hi(MovieDone)
/* 14618 80023E18 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 1461C 80023E1C B38F0008 */  j          .L80023ECC
/* 14620 80023E20 00000000 */   nop
jlabel .L80023E24
/* 14624 80023E24 F866010C */  jal        ClearJoyPad
/* 14628 80023E28 01001024 */   addiu     $s0, $zero, 0x1
/* 1462C 80023E2C C46C010C */  jal        ScreenOn
/* 14630 80023E30 00000000 */   nop
/* 14634 80023E34 A66E000C */  jal        InitMemMalloc
/* 14638 80023E38 00000000 */   nop
/* 1463C 80023E3C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14640 80023E40 00000000 */   nop
/* 14644 80023E44 D63E010C */  jal        PlayFullScreenMovie
/* 14648 80023E48 20000424 */   addiu     $a0, $zero, 0x20
/* 1464C 80023E4C 9F3C010C */  jal        CheckMovieRequest
/* 14650 80023E50 00000000 */   nop
/* 14654 80023E54 913E010C */  jal        DeAllocIntroMovieRAM
/* 14658 80023E58 00000000 */   nop
/* 1465C 80023E5C A66E000C */  jal        InitMemMalloc
/* 14660 80023E60 00000000 */   nop
/* 14664 80023E64 F866010C */  jal        ClearJoyPad
/* 14668 80023E68 00000000 */   nop
/* 1466C 80023E6C 0980013C */  lui        $at, %hi(MovieDone)
/* 14670 80023E70 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 14674 80023E74 F866010C */  jal        ClearJoyPad
/* 14678 80023E78 00000000 */   nop
/* 1467C 80023E7C C46C010C */  jal        ScreenOn
/* 14680 80023E80 00000000 */   nop
/* 14684 80023E84 A66E000C */  jal        InitMemMalloc
/* 14688 80023E88 00000000 */   nop
/* 1468C 80023E8C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14690 80023E90 00000000 */   nop
/* 14694 80023E94 D63E010C */  jal        PlayFullScreenMovie
/* 14698 80023E98 21000424 */   addiu     $a0, $zero, 0x21
/* 1469C 80023E9C 9F3C010C */  jal        CheckMovieRequest
/* 146A0 80023EA0 00000000 */   nop
/* 146A4 80023EA4 913E010C */  jal        DeAllocIntroMovieRAM
/* 146A8 80023EA8 00000000 */   nop
/* 146AC 80023EAC A66E000C */  jal        InitMemMalloc
/* 146B0 80023EB0 00000000 */   nop
/* 146B4 80023EB4 F866010C */  jal        ClearJoyPad
/* 146B8 80023EB8 00000000 */   nop
/* 146BC 80023EBC 0980013C */  lui        $at, %hi(MovieDone)
/* 146C0 80023EC0 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 146C4 80023EC4 0980013C */  lui        $at, %hi(ShownTitleScreen)
/* 146C8 80023EC8 C84920AC */  sw         $zero, %lo(ShownTitleScreen)($at)
.L80023ECC:
/* 146CC 80023ECC 0980023C */  lui        $v0, %hi(TaskerReloadState)
/* 146D0 80023ED0 EC51428C */  lw         $v0, %lo(TaskerReloadState)($v0)
/* 146D4 80023ED4 00000000 */  nop
/* 146D8 80023ED8 7E004010 */  beqz       $v0, .L800240D4
/* 146DC 80023EDC 01000224 */   addiu     $v0, $zero, 0x1
/* 146E0 80023EE0 0980103C */  lui        $s0, %hi(gLevel)
/* 146E4 80023EE4 3456108E */  lw         $s0, %lo(gLevel)($s0)
/* 146E8 80023EE8 00000000 */  nop
/* 146EC 80023EEC 29000216 */  bne        $s0, $v0, .L80023F94
/* 146F0 80023EF0 07000224 */   addiu     $v0, $zero, 0x7
/* 146F4 80023EF4 0980033C */  lui        $v1, %hi(gWorld)
/* 146F8 80023EF8 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 146FC 80023EFC 00000000 */  nop
/* 14700 80023F00 05006210 */  beq        $v1, $v0, .L80023F18
/* 14704 80023F04 08000224 */   addiu     $v0, $zero, 0x8
/* 14708 80023F08 0D006210 */  beq        $v1, $v0, .L80023F40
/* 1470C 80023F0C 00000000 */   nop
/* 14710 80023F10 E58F0008 */  j          .L80023F94
/* 14714 80023F14 00000000 */   nop
.L80023F18:
/* 14718 80023F18 F866010C */  jal        ClearJoyPad
/* 1471C 80023F1C 00000000 */   nop
/* 14720 80023F20 C46C010C */  jal        ScreenOn
/* 14724 80023F24 00000000 */   nop
/* 14728 80023F28 A66E000C */  jal        InitMemMalloc
/* 1472C 80023F2C 00000000 */   nop
/* 14730 80023F30 9B3E010C */  jal        AllocIntroMovieRAM
/* 14734 80023F34 00000000 */   nop
/* 14738 80023F38 D98F0008 */  j          .L80023F64
/* 1473C 80023F3C 1A000424 */   addiu     $a0, $zero, 0x1A
.L80023F40:
/* 14740 80023F40 F866010C */  jal        ClearJoyPad
/* 14744 80023F44 00000000 */   nop
/* 14748 80023F48 C46C010C */  jal        ScreenOn
/* 1474C 80023F4C 00000000 */   nop
/* 14750 80023F50 A66E000C */  jal        InitMemMalloc
/* 14754 80023F54 00000000 */   nop
/* 14758 80023F58 9B3E010C */  jal        AllocIntroMovieRAM
/* 1475C 80023F5C 00000000 */   nop
/* 14760 80023F60 1E000424 */  addiu      $a0, $zero, 0x1E
.L80023F64:
/* 14764 80023F64 D63E010C */  jal        PlayFullScreenMovie
/* 14768 80023F68 00000000 */   nop
/* 1476C 80023F6C 9F3C010C */  jal        CheckMovieRequest
/* 14770 80023F70 00000000 */   nop
/* 14774 80023F74 913E010C */  jal        DeAllocIntroMovieRAM
/* 14778 80023F78 00000000 */   nop
/* 1477C 80023F7C A66E000C */  jal        InitMemMalloc
/* 14780 80023F80 00000000 */   nop
/* 14784 80023F84 F866010C */  jal        ClearJoyPad
/* 14788 80023F88 00000000 */   nop
/* 1478C 80023F8C 0980013C */  lui        $at, %hi(MovieDone)
/* 14790 80023F90 F45130AC */  sw         $s0, %lo(MovieDone)($at)
.L80023F94:
/* 14794 80023F94 0980023C */  lui        $v0, %hi(TaskerReloadState)
/* 14798 80023F98 EC51428C */  lw         $v0, %lo(TaskerReloadState)($v0)
/* 1479C 80023F9C 00000000 */  nop
/* 147A0 80023FA0 4C004010 */  beqz       $v0, .L800240D4
/* 147A4 80023FA4 02000224 */   addiu     $v0, $zero, 0x2
/* 147A8 80023FA8 0980033C */  lui        $v1, %hi(gLevel)
/* 147AC 80023FAC 3456638C */  lw         $v1, %lo(gLevel)($v1)
/* 147B0 80023FB0 00000000 */  nop
/* 147B4 80023FB4 47006214 */  bne        $v1, $v0, .L800240D4
/* 147B8 80023FB8 00000000 */   nop
/* 147BC 80023FBC 0980103C */  lui        $s0, %hi(gWorld)
/* 147C0 80023FC0 3C56108E */  lw         $s0, %lo(gWorld)($s0)
/* 147C4 80023FC4 00000000 */  nop
/* 147C8 80023FC8 22000312 */  beq        $s0, $v1, .L80024054
/* 147CC 80023FCC 0300022E */   sltiu     $v0, $s0, 0x3
/* 147D0 80023FD0 05004010 */  beqz       $v0, .L80023FE8
/* 147D4 80023FD4 01000224 */   addiu     $v0, $zero, 0x1
/* 147D8 80023FD8 08000212 */  beq        $s0, $v0, .L80023FFC
/* 147DC 80023FDC 00000000 */   nop
/* 147E0 80023FE0 35900008 */  j          .L800240D4
/* 147E4 80023FE4 00000000 */   nop
.L80023FE8:
/* 147E8 80023FE8 08000224 */  addiu      $v0, $zero, 0x8
/* 147EC 80023FEC 23000212 */  beq        $s0, $v0, .L8002407C
/* 147F0 80023FF0 00000000 */   nop
/* 147F4 80023FF4 35900008 */  j          .L800240D4
/* 147F8 80023FF8 00000000 */   nop
.L80023FFC:
/* 147FC 80023FFC F866010C */  jal        ClearJoyPad
/* 14800 80024000 00000000 */   nop
/* 14804 80024004 C46C010C */  jal        ScreenOn
/* 14808 80024008 00000000 */   nop
/* 1480C 8002400C A66E000C */  jal        InitMemMalloc
/* 14810 80024010 00000000 */   nop
/* 14814 80024014 9B3E010C */  jal        AllocIntroMovieRAM
/* 14818 80024018 00000000 */   nop
/* 1481C 8002401C D63E010C */  jal        PlayFullScreenMovie
/* 14820 80024020 06000424 */   addiu     $a0, $zero, 0x6
/* 14824 80024024 9F3C010C */  jal        CheckMovieRequest
/* 14828 80024028 00000000 */   nop
/* 1482C 8002402C 913E010C */  jal        DeAllocIntroMovieRAM
/* 14830 80024030 00000000 */   nop
/* 14834 80024034 A66E000C */  jal        InitMemMalloc
/* 14838 80024038 00000000 */   nop
/* 1483C 8002403C F866010C */  jal        ClearJoyPad
/* 14840 80024040 00000000 */   nop
/* 14844 80024044 0980013C */  lui        $at, %hi(MovieDone)
/* 14848 80024048 F45130AC */  sw         $s0, %lo(MovieDone)($at)
/* 1484C 8002404C 35900008 */  j          .L800240D4
/* 14850 80024050 00000000 */   nop
.L80024054:
/* 14854 80024054 F866010C */  jal        ClearJoyPad
/* 14858 80024058 00000000 */   nop
/* 1485C 8002405C C46C010C */  jal        ScreenOn
/* 14860 80024060 00000000 */   nop
/* 14864 80024064 A66E000C */  jal        InitMemMalloc
/* 14868 80024068 00000000 */   nop
/* 1486C 8002406C 9B3E010C */  jal        AllocIntroMovieRAM
/* 14870 80024070 00000000 */   nop
/* 14874 80024074 28900008 */  j          .L800240A0
/* 14878 80024078 0A000424 */   addiu     $a0, $zero, 0xA
.L8002407C:
/* 1487C 8002407C F866010C */  jal        ClearJoyPad
/* 14880 80024080 00000000 */   nop
/* 14884 80024084 C46C010C */  jal        ScreenOn
/* 14888 80024088 00000000 */   nop
/* 1488C 8002408C A66E000C */  jal        InitMemMalloc
/* 14890 80024090 00000000 */   nop
/* 14894 80024094 9B3E010C */  jal        AllocIntroMovieRAM
/* 14898 80024098 00000000 */   nop
/* 1489C 8002409C 1F000424 */  addiu      $a0, $zero, 0x1F
.L800240A0:
/* 148A0 800240A0 D63E010C */  jal        PlayFullScreenMovie
/* 148A4 800240A4 00000000 */   nop
/* 148A8 800240A8 9F3C010C */  jal        CheckMovieRequest
/* 148AC 800240AC 00000000 */   nop
/* 148B0 800240B0 913E010C */  jal        DeAllocIntroMovieRAM
/* 148B4 800240B4 00000000 */   nop
/* 148B8 800240B8 A66E000C */  jal        InitMemMalloc
/* 148BC 800240BC 00000000 */   nop
/* 148C0 800240C0 F866010C */  jal        ClearJoyPad
/* 148C4 800240C4 00000000 */   nop
/* 148C8 800240C8 01000324 */  addiu      $v1, $zero, 0x1
/* 148CC 800240CC 0980013C */  lui        $at, %hi(MovieDone)
/* 148D0 800240D0 F45123AC */  sw         $v1, %lo(MovieDone)($at)
.L800240D4:
/* 148D4 800240D4 1400BF8F */  lw         $ra, 0x14($sp)
/* 148D8 800240D8 1000B08F */  lw         $s0, 0x10($sp)
/* 148DC 800240DC 0800E003 */  jr         $ra
/* 148E0 800240E0 1800BD27 */   addiu     $sp, $sp, 0x18
.size MovieSelection, . - MovieSelection
