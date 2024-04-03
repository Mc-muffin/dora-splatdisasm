.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel colourprintf
/* 23D6C 8003356C 0980023C */  lui        $v0, %hi(D_80094AFC)
/* 23D70 80033570 FC4A438C */  lw         $v1, %lo(D_80094AFC)($v0)
/* 23D74 80033574 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 23D78 80033578 9000BFAF */  sw         $ra, 0x90($sp)
/* 23D7C 8003357C 1000A3AF */  sw         $v1, 0x10($sp)
/* 23D80 80033580 1100A4A3 */  sb         $a0, 0x11($sp)
/* 23D84 80033584 47C2010C */  jal        strcat
/* 23D88 80033588 1000A427 */   addiu     $a0, $sp, 0x10
/* 23D8C 8003358C 9000BF8F */  lw         $ra, 0x90($sp)
/* 23D90 80033590 00000000 */  nop
/* 23D94 80033594 0800E003 */  jr         $ra
/* 23D98 80033598 9800BD27 */   addiu     $sp, $sp, 0x98
.size colourprintf, . - colourprintf
