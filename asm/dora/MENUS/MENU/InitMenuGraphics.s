.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMenuGraphics
/* 15FC0 800257C0 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 15FC4 800257C4 8400BFAF */  sw         $ra, 0x84($sp)
/* 15FC8 800257C8 A195010C */  jal        ResetDepthTable
/* 15FCC 800257CC 8000B0AF */   sw        $s0, 0x80($sp)
/* 15FD0 800257D0 1000A427 */  addiu      $a0, $sp, 0x10
/* 15FD4 800257D4 0980033C */  lui        $v1, %hi(ETActor)
/* 15FD8 800257D8 B05A6324 */  addiu      $v1, $v1, %lo(ETActor)
/* 15FDC 800257DC 0180103C */  lui        $s0, %hi(D_80011458)
/* 15FE0 800257E0 58141026 */  addiu      $s0, $s0, %lo(D_80011458)
/* 15FE4 800257E4 1000628C */  lw         $v0, 0x10($v1)
/* 15FE8 800257E8 21280002 */  addu       $a1, $s0, $zero
/* 15FEC 800257EC 00014234 */  ori        $v0, $v0, 0x100
/* 15FF0 800257F0 53C5010C */  jal        sprintf
/* 15FF4 800257F4 100062AC */   sw        $v0, 0x10($v1)
/* 15FF8 800257F8 B35C010C */  jal        GetSizeOfFile
/* 15FFC 800257FC 1000A427 */   addiu     $a0, $sp, 0x10
/* 16000 80025800 2B3F010C */  jal        new_malloc
/* 16004 80025804 21204000 */   addu      $a0, $v0, $zero
/* 16008 80025808 1000A427 */  addiu      $a0, $sp, 0x10
/* 1600C 8002580C 9C1382AF */  sw         $v0, %gp_rel(Menu00)($gp)
/* 16010 80025810 495C010C */  jal        LoadFile
/* 16014 80025814 21284000 */   addu      $a1, $v0, $zero
/* 16018 80025818 1000A427 */  addiu      $a0, $sp, 0x10
/* 1601C 8002581C 53C5010C */  jal        sprintf
/* 16020 80025820 21280002 */   addu      $a1, $s0, $zero
/* 16024 80025824 B35C010C */  jal        GetSizeOfFile
/* 16028 80025828 1000A427 */   addiu     $a0, $sp, 0x10
/* 1602C 8002582C 2B3F010C */  jal        new_malloc
/* 16030 80025830 21204000 */   addu      $a0, $v0, $zero
/* 16034 80025834 1000A427 */  addiu      $a0, $sp, 0x10
/* 16038 80025838 A01382AF */  sw         $v0, %gp_rel(Menu01)($gp)
/* 1603C 8002583C 495C010C */  jal        LoadFile
/* 16040 80025840 21284000 */   addu      $a1, $v0, $zero
/* 16044 80025844 7800A327 */  addiu      $v1, $sp, 0x78
/* 16048 80025848 21206000 */  addu       $a0, $v1, $zero
/* 1604C 8002584C 9C13908F */  lw         $s0, %gp_rel(Menu00)($gp)
/* 16050 80025850 C0020224 */  addiu      $v0, $zero, 0x2C0
/* 16054 80025854 7800A2A7 */  sh         $v0, 0x78($sp)
/* 16058 80025858 40010224 */  addiu      $v0, $zero, 0x140
/* 1605C 8002585C 7A00A0A7 */  sh         $zero, 0x7A($sp)
/* 16060 80025860 040062A4 */  sh         $v0, 0x4($v1)
/* 16064 80025864 F0000224 */  addiu      $v0, $zero, 0xF0
/* 16068 80025868 060062A4 */  sh         $v0, 0x6($v1)
/* 1606C 8002586C E1DB010C */  jal        LoadImage
/* 16070 80025870 08020526 */   addiu     $a1, $s0, 0x208
/* 16074 80025874 36DB010C */  jal        DrawSync
/* 16078 80025878 21200000 */   addu      $a0, $zero, $zero
/* 1607C 8002587C 03000016 */  bnez       $s0, .L8002588C
/* 16080 80025880 00000000 */   nop
/* 16084 80025884 1C40010C */  jal        new_free
/* 16088 80025888 21200000 */   addu      $a0, $zero, $zero
.L8002588C:
/* 1608C 8002588C EBD6010C */  jal        VSync
/* 16090 80025890 21200000 */   addu      $a0, $zero, $zero
/* 16094 80025894 8400BF8F */  lw         $ra, 0x84($sp)
/* 16098 80025898 8000B08F */  lw         $s0, 0x80($sp)
/* 1609C 8002589C 0800E003 */  jr         $ra
/* 160A0 800258A0 8800BD27 */   addiu     $sp, $sp, 0x88
.size InitMenuGraphics, . - InitMenuGraphics
