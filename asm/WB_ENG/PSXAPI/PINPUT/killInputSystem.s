.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel killInputSystem
/* 4A298 80059A98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4A29C 80059A9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4A2A0 80059AA0 520A020C */  jal        PadStopCom
/* 4A2A4 80059AA4 00000000 */   nop
/* 4A2A8 80059AA8 EBD6010C */  jal        VSync
/* 4A2AC 80059AAC F0000424 */   addiu     $a0, $zero, 0xF0
/* 4A2B0 80059AB0 B4D7010C */  jal        StopCallback
/* 4A2B4 80059AB4 00000000 */   nop
/* 4A2B8 80059AB8 1000BF8F */  lw         $ra, 0x10($sp)
/* 4A2BC 80059ABC 00000000 */  nop
/* 4A2C0 80059AC0 0800E003 */  jr         $ra
/* 4A2C4 80059AC4 1800BD27 */   addiu     $sp, $sp, 0x18
.size killInputSystem, . - killInputSystem
