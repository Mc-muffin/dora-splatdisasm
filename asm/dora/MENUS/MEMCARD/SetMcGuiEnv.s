.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetMcGuiEnv
/* 193E0 80028BE0 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 193E4 80028BE4 9000B0AF */  sw         $s0, 0x90($sp)
/* 193E8 80028BE8 21808000 */  addu       $s0, $a0, $zero
/* 193EC 80028BEC 0180033C */  lui        $v1, %hi(D_8001181C)
/* 193F0 80028BF0 1C18668C */  lw         $a2, %lo(D_8001181C)($v1)
/* 193F4 80028BF4 1C186224 */  addiu      $v0, $v1, %lo(D_8001181C)
/* 193F8 80028BF8 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 193FC 80028BFC 9800B2AF */  sw         $s2, 0x98($sp)
/* 19400 80028C00 9400B1AF */  sw         $s1, 0x94($sp)
/* 19404 80028C04 0400478C */  lw         $a3, 0x4($v0)
/* 19408 80028C08 0800438C */  lw         $v1, 0x8($v0)
/* 1940C 80028C0C 0C00488C */  lw         $t0, 0xC($v0)
/* 19410 80028C10 1000498C */  lw         $t1, 0x10($v0)
/* 19414 80028C14 14004A8C */  lw         $t2, 0x14($v0)
/* 19418 80028C18 01000524 */  addiu      $a1, $zero, 0x1
/* 1941C 80028C1C 1000A6AF */  sw         $a2, 0x10($sp)
/* 19420 80028C20 1400A7AF */  sw         $a3, 0x14($sp)
/* 19424 80028C24 1800A3AF */  sw         $v1, 0x18($sp)
/* 19428 80028C28 1C00A8AF */  sw         $t0, 0x1C($sp)
/* 1942C 80028C2C 2000A9AF */  sw         $t1, 0x20($sp)
/* 19430 80028C30 6EC1010C */  jal        McGuiSetExternalFont
/* 19434 80028C34 2400AAAF */   sw        $t2, 0x24($sp)
/* 19438 80028C38 01001224 */  addiu      $s2, $zero, 0x1
/* 1943C 80028C3C 40000224 */  addiu      $v0, $zero, 0x40
/* 19440 80028C40 B413848F */  lw         $a0, %gp_rel(mcguiTIMBuffer)($gp)
/* 19444 80028C44 A413858F */  lw         $a1, %gp_rel(mcbackgroundTIMBuffer)($gp)
/* 19448 80028C48 80000324 */  addiu      $v1, $zero, 0x80
/* 1944C 80028C4C F20002A2 */  sb         $v0, 0xF2($s0)
/* 19450 80028C50 0B80023C */  lui        $v0, %hi(gPad)
/* 19454 80028C54 48B74224 */  addiu      $v0, $v0, %lo(gPad)
/* 19458 80028C58 6C0002AE */  sw         $v0, 0x6C($s0)
/* 1945C 80028C5C 40004224 */  addiu      $v0, $v0, 0x40
/* 19460 80028C60 01001124 */  addiu      $s1, $zero, 0x1
/* 19464 80028C64 F30003A2 */  sb         $v1, 0xF3($s0)
/* 19468 80028C68 40000324 */  addiu      $v1, $zero, 0x40
/* 1946C 80028C6C 700002AE */  sw         $v0, 0x70($s0)
/* 19470 80028C70 10000224 */  addiu      $v0, $zero, 0x10
/* 19474 80028C74 780003AE */  sw         $v1, 0x78($s0)
/* 19478 80028C78 900003AE */  sw         $v1, 0x90($s0)
/* 1947C 80028C7C 7F000324 */  addiu      $v1, $zero, 0x7F
/* 19480 80028C80 7C0002AE */  sw         $v0, 0x7C($s0)
/* 19484 80028C84 940002AE */  sw         $v0, 0x94($s0)
/* 19488 80028C88 20000224 */  addiu      $v0, $zero, 0x20
/* 1948C 80028C8C C40002AE */  sw         $v0, 0xC4($s0)
/* 19490 80028C90 00100224 */  addiu      $v0, $zero, 0x1000
/* 19494 80028C94 CC0002AE */  sw         $v0, 0xCC($s0)
/* 19498 80028C98 D00002AE */  sw         $v0, 0xD0($s0)
/* 1949C 80028C9C 02000224 */  addiu      $v0, $zero, 0x2
/* 194A0 80028CA0 A40003AE */  sw         $v1, 0xA4($s0)
/* 194A4 80028CA4 B80003AE */  sw         $v1, 0xB8($s0)
/* 194A8 80028CA8 D40003AE */  sw         $v1, 0xD4($s0)
/* 194AC 80028CAC 03000324 */  addiu      $v1, $zero, 0x3
/* 194B0 80028CB0 640012A6 */  sh         $s2, 0x64($s0)
/* 194B4 80028CB4 F00000A2 */  sb         $zero, 0xF0($s0)
/* 194B8 80028CB8 F10000A2 */  sb         $zero, 0xF1($s0)
/* 194BC 80028CBC 740011AE */  sw         $s1, 0x74($s0)
/* 194C0 80028CC0 800000AE */  sw         $zero, 0x80($s0)
/* 194C4 80028CC4 8C0011AE */  sw         $s1, 0x8C($s0)
/* 194C8 80028CC8 980000AE */  sw         $zero, 0x98($s0)
/* 194CC 80028CCC A80000AE */  sw         $zero, 0xA8($s0)
/* 194D0 80028CD0 AC0000AE */  sw         $zero, 0xAC($s0)
/* 194D4 80028CD4 B00000AE */  sw         $zero, 0xB0($s0)
/* 194D8 80028CD8 B40000AE */  sw         $zero, 0xB4($s0)
/* 194DC 80028CDC BC0000AE */  sw         $zero, 0xBC($s0)
/* 194E0 80028CE0 C00000AE */  sw         $zero, 0xC0($s0)
/* 194E4 80028CE4 C80011AE */  sw         $s1, 0xC8($s0)
/* 194E8 80028CE8 D80000AE */  sw         $zero, 0xD8($s0)
/* 194EC 80028CEC EC0004AE */  sw         $a0, 0xEC($s0)
/* 194F0 80028CF0 680005AE */  sw         $a1, 0x68($s0)
/* 194F4 80028CF4 DC0011AE */  sw         $s1, 0xDC($s0)
/* 194F8 80028CF8 E00002AE */  sw         $v0, 0xE0($s0)
/* 194FC 80028CFC 04000224 */  addiu      $v0, $zero, 0x4
/* 19500 80028D00 E40003AE */  sw         $v1, 0xE4($s0)
/* 19504 80028D04 0180033C */  lui        $v1, %hi(D_80011834)
/* 19508 80028D08 E80002AE */  sw         $v0, 0xE8($s0)
/* 1950C 80028D0C 3418628C */  lw         $v0, %lo(D_80011834)($v1)
/* 19510 80028D10 34186324 */  addiu      $v1, $v1, %lo(D_80011834)
/* 19514 80028D14 000002AE */  sw         $v0, 0x0($s0)
/* 19518 80028D18 0400628C */  lw         $v0, 0x4($v1)
/* 1951C 80028D1C 00000000 */  nop
/* 19520 80028D20 040002AE */  sw         $v0, 0x4($s0)
/* 19524 80028D24 0800658C */  lw         $a1, 0x8($v1)
/* 19528 80028D28 1000A427 */  addiu      $a0, $sp, 0x10
/* 1952C 80028D2C 080005AE */  sw         $a1, 0x8($s0)
/* 19530 80028D30 0C006290 */  lbu        $v0, 0xC($v1)
/* 19534 80028D34 15000526 */  addiu      $a1, $s0, 0x15
/* 19538 80028D38 5FA3000C */  jal        strtosjis
/* 1953C 80028D3C 0C0002A2 */   sb        $v0, 0xC($s0)
/* 19540 80028D40 560012A2 */  sb         $s2, 0x56($s0)
/* 19544 80028D44 B013838F */  lw         $v1, %gp_rel(gamedata)($gp)
/* 19548 80028D48 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 1954C 80028D4C 9800B28F */  lw         $s2, 0x98($sp)
/* 19550 80028D50 0880023C */  lui        $v0, %hi(TIM_HAND)
/* 19554 80028D54 570011A2 */  sb         $s1, 0x57($s0)
/* 19558 80028D58 9400B18F */  lw         $s1, 0x94($sp)
/* 1955C 80028D5C B8694224 */  addiu      $v0, $v0, %lo(TIM_HAND)
/* 19560 80028D60 5C0002AE */  sw         $v0, 0x5C($s0)
/* 19564 80028D64 001E0224 */  addiu      $v0, $zero, 0x1E00
/* 19568 80028D68 580002AE */  sw         $v0, 0x58($s0)
/* 1956C 80028D6C 600003AE */  sw         $v1, 0x60($s0)
/* 19570 80028D70 9000B08F */  lw         $s0, 0x90($sp)
/* 19574 80028D74 0800E003 */  jr         $ra
/* 19578 80028D78 A000BD27 */   addiu     $sp, $sp, 0xA0
.size SetMcGuiEnv, . - SetMcGuiEnv
