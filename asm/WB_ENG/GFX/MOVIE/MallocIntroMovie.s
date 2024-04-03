.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MallocIntroMovie
/* 40218 8004FA18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4021C 8004FA1C 1000BFAF */  sw         $ra, 0x10($sp)
/* 40220 8004FA20 CFFD010C */  jal        DecDCTReset
/* 40224 8004FA24 21200000 */   addu      $a0, $zero, $zero
/* 40228 8004FA28 0700043C */  lui        $a0, (0x71000 >> 16)
/* 4022C 8004FA2C 2B3F010C */  jal        new_malloc
/* 40230 8004FA30 00108434 */   ori       $a0, $a0, (0x71000 & 0xFFFF)
/* 40234 8004FA34 1000BF8F */  lw         $ra, 0x10($sp)
/* 40238 8004FA38 00000000 */  nop
/* 4023C 8004FA3C 0800E003 */  jr         $ra
/* 40240 8004FA40 1800BD27 */   addiu     $sp, $sp, 0x18
.size MallocIntroMovie, . - MallocIntroMovie
