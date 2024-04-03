.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CreateCelDepth2
/* 51D78 80061578 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 51D7C 8006157C 40008424 */  addiu      $a0, $a0, 0x40
/* 51D80 80061580 C0FFA524 */  addiu      $a1, $a1, -0x40
/* 51D84 80061584 3800A28F */  lw         $v0, 0x38($sp)
/* 51D88 80061588 3C00A38F */  lw         $v1, 0x3C($sp)
/* 51D8C 8006158C 4000A88F */  lw         $t0, 0x40($sp)
/* 51D90 80061590 4000C624 */  addiu      $a2, $a2, 0x40
/* 51D94 80061594 2000BFAF */  sw         $ra, 0x20($sp)
/* 51D98 80061598 1000A2AF */  sw         $v0, 0x10($sp)
/* 51D9C 8006159C 1400A3AF */  sw         $v1, 0x14($sp)
/* 51DA0 800615A0 8380010C */  jal        DrawCelDepth2
/* 51DA4 800615A4 1800A8AF */   sw        $t0, 0x18($sp)
/* 51DA8 800615A8 2000BF8F */  lw         $ra, 0x20($sp)
/* 51DAC 800615AC 00000000 */  nop
/* 51DB0 800615B0 0800E003 */  jr         $ra
/* 51DB4 800615B4 2800BD27 */   addiu     $sp, $sp, 0x28
.size CreateCelDepth2, . - CreateCelDepth2
