.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel mov_setvolume
/* 3FCAC 8004F4AC 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 3FCB0 8004F4B0 03000224 */  addiu      $v0, $zero, 0x3
/* 3FCB4 8004F4B4 00240400 */  sll        $a0, $a0, 16
/* 3FCB8 8004F4B8 03240400 */  sra        $a0, $a0, 16
/* 3FCBC 8004F4BC 5400A4A7 */  sh         $a0, 0x54($sp)
/* 3FCC0 8004F4C0 5600A4A7 */  sh         $a0, 0x56($sp)
/* 3FCC4 8004F4C4 5000A427 */  addiu      $a0, $sp, 0x50
/* 3FCC8 8004F4C8 7800BFAF */  sw         $ra, 0x78($sp)
/* 3FCCC 8004F4CC 2708020C */  jal        SpuSetCommonAttr
/* 3FCD0 8004F4D0 5000A2AF */   sw        $v0, 0x50($sp)
/* 3FCD4 8004F4D4 7800BF8F */  lw         $ra, 0x78($sp)
/* 3FCD8 8004F4D8 00000000 */  nop
/* 3FCDC 8004F4DC 0800E003 */  jr         $ra
/* 3FCE0 8004F4E0 8000BD27 */   addiu     $sp, $sp, 0x80
.size mov_setvolume, . - mov_setvolume
