.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitGameAudioPreMalloc
/* 242BC 80033ABC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 242C0 80033AC0 0180043C */  lui        $a0, %hi(D_800125FC)
/* 242C4 80033AC4 0980053C */  lui        $a1, %hi(gWorld)
/* 242C8 80033AC8 3C56A58C */  lw         $a1, %lo(gWorld)($a1)
/* 242CC 80033ACC 0880033C */  lui        $v1, %hi(WorldList)
/* 242D0 80033AD0 1800B2AF */  sw         $s2, 0x18($sp)
/* 242D4 80033AD4 0980123C */  lui        $s2, %hi(gLevel)
/* 242D8 80033AD8 3456528E */  lw         $s2, %lo(gLevel)($s2)
/* 242DC 80033ADC 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 242E0 80033AE0 2000BFAF */  sw         $ra, 0x20($sp)
/* 242E4 80033AE4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 242E8 80033AE8 1400B1AF */  sw         $s1, 0x14($sp)
/* 242EC 80033AEC 1000B0AF */  sw         $s0, 0x10($sp)
/* 242F0 80033AF0 80100500 */  sll        $v0, $a1, 2
/* 242F4 80033AF4 21104500 */  addu       $v0, $v0, $a1
/* 242F8 80033AF8 80100200 */  sll        $v0, $v0, 2
/* 242FC 80033AFC 21104300 */  addu       $v0, $v0, $v1
/* 24300 80033B00 1000538C */  lw         $s3, 0x10($v0)
/* 24304 80033B04 B35C010C */  jal        GetSizeOfFile
/* 24308 80033B08 FC258424 */   addiu     $a0, $a0, %lo(D_800125FC)
/* 2430C 80033B0C 0180043C */  lui        $a0, %hi(D_80012610)
/* 24310 80033B10 0980023C */  lui        $v0, %hi(MEM_PolyPool)
/* 24314 80033B14 E057428C */  lw         $v0, %lo(MEM_PolyPool)($v0)
/* 24318 80033B18 00000000 */  nop
/* 2431C 80033B1C 381482AF */  sw         $v0, %gp_rel(MenuPreMallocVB)($gp)
/* 24320 80033B20 B35C010C */  jal        GetSizeOfFile
/* 24324 80033B24 10268424 */   addiu     $a0, $a0, %lo(D_80012610)
/* 24328 80033B28 2B3F010C */  jal        new_malloc
/* 2432C 80033B2C 21204000 */   addu      $a0, $v0, $zero
/* 24330 80033B30 0180043C */  lui        $a0, %hi(D_80012628)
/* 24334 80033B34 241482AF */  sw         $v0, %gp_rel(MenuPreMallocPXV)($gp)
/* 24338 80033B38 B35C010C */  jal        GetSizeOfFile
/* 2433C 80033B3C 28268424 */   addiu     $a0, $a0, %lo(D_80012628)
/* 24340 80033B40 0180043C */  lui        $a0, %hi(D_80012640)
/* 24344 80033B44 0980023C */  lui        $v0, %hi(MEM_PolyPool)
/* 24348 80033B48 E057428C */  lw         $v0, %lo(MEM_PolyPool)($v0)
/* 2434C 80033B4C 00000000 */  nop
/* 24350 80033B50 301482AF */  sw         $v0, %gp_rel(GenericPreMallocVB)($gp)
/* 24354 80033B54 B35C010C */  jal        GetSizeOfFile
/* 24358 80033B58 40268424 */   addiu     $a0, $a0, %lo(D_80012640)
/* 2435C 80033B5C 2B3F010C */  jal        new_malloc
/* 24360 80033B60 21204000 */   addu      $a0, $v0, $zero
/* 24364 80033B64 0A80113C */  lui        $s1, %hi(vbfilename)
/* 24368 80033B68 988B3126 */  addiu      $s1, $s1, %lo(vbfilename)
/* 2436C 80033B6C 21202002 */  addu       $a0, $s1, $zero
/* 24370 80033B70 0180053C */  lui        $a1, %hi(D_80012658)
/* 24374 80033B74 5826A524 */  addiu      $a1, $a1, %lo(D_80012658)
/* 24378 80033B78 21306002 */  addu       $a2, $s3, $zero
/* 2437C 80033B7C 01005226 */  addiu      $s2, $s2, 0x1
/* 24380 80033B80 341482AF */  sw         $v0, %gp_rel(GenericPreMallocPXV)($gp)
/* 24384 80033B84 53C5010C */  jal        sprintf
/* 24388 80033B88 21384002 */   addu      $a3, $s2, $zero
/* 2438C 80033B8C 0A80103C */  lui        $s0, %hi(pxvfilename)
/* 24390 80033B90 188D1026 */  addiu      $s0, $s0, %lo(pxvfilename)
/* 24394 80033B94 21200002 */  addu       $a0, $s0, $zero
/* 24398 80033B98 0180053C */  lui        $a1, %hi(D_80012670)
/* 2439C 80033B9C 7026A524 */  addiu      $a1, $a1, %lo(D_80012670)
/* 243A0 80033BA0 21306002 */  addu       $a2, $s3, $zero
/* 243A4 80033BA4 53C5010C */  jal        sprintf
/* 243A8 80033BA8 21384002 */   addu      $a3, $s2, $zero
/* 243AC 80033BAC B35C010C */  jal        GetSizeOfFile
/* 243B0 80033BB0 21202002 */   addu      $a0, $s1, $zero
/* 243B4 80033BB4 0980033C */  lui        $v1, %hi(MEM_PolyPool)
/* 243B8 80033BB8 E057638C */  lw         $v1, %lo(MEM_PolyPool)($v1)
/* 243BC 80033BBC 00000000 */  nop
/* 243C0 80033BC0 281483AF */  sw         $v1, %gp_rel(WorldPreMallocVB)($gp)
/* 243C4 80033BC4 B35C010C */  jal        GetSizeOfFile
/* 243C8 80033BC8 21200002 */   addu      $a0, $s0, $zero
/* 243CC 80033BCC 2B3F010C */  jal        new_malloc
/* 243D0 80033BD0 21204000 */   addu      $a0, $v0, $zero
/* 243D4 80033BD4 2000BF8F */  lw         $ra, 0x20($sp)
/* 243D8 80033BD8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 243DC 80033BDC 1800B28F */  lw         $s2, 0x18($sp)
/* 243E0 80033BE0 1400B18F */  lw         $s1, 0x14($sp)
/* 243E4 80033BE4 1000B08F */  lw         $s0, 0x10($sp)
/* 243E8 80033BE8 2C1482AF */  sw         $v0, %gp_rel(WorldPreMallocPXV)($gp)
/* 243EC 80033BEC 0800E003 */  jr         $ra
/* 243F0 80033BF0 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitGameAudioPreMalloc, . - InitGameAudioPreMalloc
