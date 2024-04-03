.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitSound
/* 3FCE4 8004F4E4 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 3FCE8 8004F4E8 7800BFAF */  sw         $ra, 0x78($sp)
/* 3FCEC 8004F4EC 73FF010C */  jal        SpuInit
/* 3FCF0 8004F4F0 00000000 */   nop
/* 3FCF4 8004F4F4 04000424 */  addiu      $a0, $zero, 0x4
/* 3FCF8 8004F4F8 0A80053C */  lui        $a1, %hi(mov_spu_malloc_rec)
/* 3FCFC 8004F4FC D302020C */  jal        SpuInitMalloc
/* 3FD00 8004F500 1075A524 */   addiu     $a1, $a1, %lo(mov_spu_malloc_rec)
/* 3FD04 8004F504 5000A427 */  addiu      $a0, $sp, 0x50
/* 3FD08 8004F508 03000224 */  addiu      $v0, $zero, 0x3
/* 3FD0C 8004F50C FF3F0324 */  addiu      $v1, $zero, 0x3FFF
/* 3FD10 8004F510 5000A2AF */  sw         $v0, 0x50($sp)
/* 3FD14 8004F514 5400A3A7 */  sh         $v1, 0x54($sp)
/* 3FD18 8004F518 2708020C */  jal        SpuSetCommonAttr
/* 3FD1C 8004F51C 5600A3A7 */   sh        $v1, 0x56($sp)
/* 3FD20 8004F520 AF05020C */  jal        SpuSetTransferMode
/* 3FD24 8004F524 21200000 */   addu      $a0, $zero, $zero
/* 3FD28 8004F528 7800BF8F */  lw         $ra, 0x78($sp)
/* 3FD2C 8004F52C 00000000 */  nop
/* 3FD30 8004F530 0800E003 */  jr         $ra
/* 3FD34 8004F534 8000BD27 */   addiu     $sp, $sp, 0x80
.size InitSound, . - InitSound
