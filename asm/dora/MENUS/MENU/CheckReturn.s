.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckReturn
/* 184A8 80027CA8 0980023C */  lui        $v0, %hi(Trg0)
/* 184AC 80027CAC 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 184B0 80027CB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 184B4 80027CB4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 184B8 80027CB8 21888000 */  addu       $s1, $a0, $zero
/* 184BC 80027CBC 1800B0AF */  sw         $s0, 0x18($sp)
/* 184C0 80027CC0 2180A000 */  addu       $s0, $a1, $zero
/* 184C4 80027CC4 00104230 */  andi       $v0, $v0, 0x1000
/* 184C8 80027CC8 1A004010 */  beqz       $v0, .L80027D34
/* 184CC 80027CCC 2000BFAF */   sw        $ra, 0x20($sp)
/* 184D0 80027CD0 1A000424 */  addiu      $a0, $zero, 0x1A
/* 184D4 80027CD4 21280000 */  addu       $a1, $zero, $zero
/* 184D8 80027CD8 6F4A010C */  jal        pxm_sendevent
/* 184DC 80027CDC 21300000 */   addu      $a2, $zero, $zero
/* 184E0 80027CE0 1000A427 */  addiu      $a0, $sp, 0x10
/* 184E4 80027CE4 480790AF */  sw         $s0, %gp_rel(MainMenuSelection)($gp)
/* 184E8 80027CE8 9C13908F */  lw         $s0, %gp_rel(Menu00)($gp)
/* 184EC 80027CEC C0020224 */  addiu      $v0, $zero, 0x2C0
/* 184F0 80027CF0 1000A2A7 */  sh         $v0, 0x10($sp)
/* 184F4 80027CF4 40010224 */  addiu      $v0, $zero, 0x140
/* 184F8 80027CF8 1400A2A7 */  sh         $v0, 0x14($sp)
/* 184FC 80027CFC F0000224 */  addiu      $v0, $zero, 0xF0
/* 18500 80027D00 440791AF */  sw         $s1, %gp_rel(MainMenuState)($gp)
/* 18504 80027D04 1200A0A7 */  sh         $zero, 0x12($sp)
/* 18508 80027D08 1600A2A7 */  sh         $v0, 0x16($sp)
/* 1850C 80027D0C E1DB010C */  jal        LoadImage
/* 18510 80027D10 08020526 */   addiu     $a1, $s0, 0x208
/* 18514 80027D14 36DB010C */  jal        DrawSync
/* 18518 80027D18 21200000 */   addu      $a0, $zero, $zero
/* 1851C 80027D1C 03000016 */  bnez       $s0, .L80027D2C
/* 18520 80027D20 00000000 */   nop
/* 18524 80027D24 1C40010C */  jal        new_free
/* 18528 80027D28 21200000 */   addu      $a0, $zero, $zero
.L80027D2C:
/* 1852C 80027D2C EBD6010C */  jal        VSync
/* 18530 80027D30 21200000 */   addu      $a0, $zero, $zero
.L80027D34:
/* 18534 80027D34 2000BF8F */  lw         $ra, 0x20($sp)
/* 18538 80027D38 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1853C 80027D3C 1800B08F */  lw         $s0, 0x18($sp)
/* 18540 80027D40 0800E003 */  jr         $ra
/* 18544 80027D44 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckReturn, . - CheckReturn
