.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadTexture
/* 4814C 8005794C C8FDBD27 */  addiu      $sp, $sp, -0x238
/* 48150 80057950 2C02B1AF */  sw         $s1, 0x22C($sp)
/* 48154 80057954 21880000 */  addu       $s1, $zero, $zero
/* 48158 80057958 2802B0AF */  sw         $s0, 0x228($sp)
/* 4815C 8005795C 3002BFAF */  sw         $ra, 0x230($sp)
/* 48160 80057960 B35C010C */  jal        GetSizeOfFile
/* 48164 80057964 21808000 */   addu      $s0, $a0, $zero
/* 48168 80057968 53004010 */  beqz       $v0, .L80057AB8
/* 4816C 8005796C 00000000 */   nop
/* 48170 80057970 2B3F010C */  jal        new_malloc
/* 48174 80057974 21204000 */   addu      $a0, $v0, $zero
/* 48178 80057978 21884000 */  addu       $s1, $v0, $zero
/* 4817C 8005797C 4F002012 */  beqz       $s1, .L80057ABC
/* 48180 80057980 21102002 */   addu      $v0, $s1, $zero
/* 48184 80057984 21200002 */  addu       $a0, $s0, $zero
/* 48188 80057988 495C010C */  jal        LoadFile
/* 4818C 8005798C 21282002 */   addu      $a1, $s1, $zero
/* 48190 80057990 04002396 */  lhu        $v1, 0x4($s1)
/* 48194 80057994 1000A527 */  addiu      $a1, $sp, 0x10
/* 48198 80057998 1400A3A7 */  sh         $v1, 0x14($sp)
/* 4819C 8005799C 06002296 */  lhu        $v0, 0x6($s1)
/* 481A0 800579A0 21300000 */  addu       $a2, $zero, $zero
/* 481A4 800579A4 1600A2A7 */  sh         $v0, 0x16($sp)
/* 481A8 800579A8 00002492 */  lbu        $a0, 0x0($s1)
/* 481AC 800579AC 0771010C */  jal        AllocVRAM
/* 481B0 800579B0 21380000 */   addu      $a3, $zero, $zero
/* 481B4 800579B4 21804000 */  addu       $s0, $v0, $zero
/* 481B8 800579B8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 481BC 800579BC 15000212 */  beq        $s0, $v0, .L80057A14
/* 481C0 800579C0 0C80033C */   lui       $v1, %hi(VRAMItems)
/* 481C4 800579C4 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 481C8 800579C8 80101000 */  sll        $v0, $s0, 2
/* 481CC 800579CC 21105000 */  addu       $v0, $v0, $s0
/* 481D0 800579D0 80100200 */  sll        $v0, $v0, 2
/* 481D4 800579D4 21104300 */  addu       $v0, $v0, $v1
/* 481D8 800579D8 03004388 */  lwl        $v1, 0x3($v0)
/* 481DC 800579DC 00004398 */  lwr        $v1, 0x0($v0)
/* 481E0 800579E0 07004488 */  lwl        $a0, 0x7($v0)
/* 481E4 800579E4 04004498 */  lwr        $a0, 0x4($v0)
/* 481E8 800579E8 1B00A3AB */  swl        $v1, 0x1B($sp)
/* 481EC 800579EC 1800A3BB */  swr        $v1, 0x18($sp)
/* 481F0 800579F0 1F00A4AB */  swl        $a0, 0x1F($sp)
/* 481F4 800579F4 1C00A4BB */  swr        $a0, 0x1C($sp)
/* 481F8 800579F8 36DB010C */  jal        DrawSync
/* 481FC 800579FC 21200000 */   addu      $a0, $zero, $zero
/* 48200 80057A00 1800A427 */  addiu      $a0, $sp, 0x18
/* 48204 80057A04 E1DB010C */  jal        LoadImage
/* 48208 80057A08 08022526 */   addiu     $a1, $s1, 0x208
/* 4820C 80057A0C 36DB010C */  jal        DrawSync
/* 48210 80057A10 21200000 */   addu      $a0, $zero, $zero
.L80057A14:
/* 48214 80057A14 9C1690A7 */  sh         $s0, %gp_rel(TexInfo)($gp)
/* 48218 80057A18 08002326 */  addiu      $v1, $s1, 0x8
/* 4821C 80057A1C 21306000 */  addu       $a2, $v1, $zero
/* 48220 80057A20 007C0724 */  addiu      $a3, $zero, 0x7C00
/* 48224 80057A24 00FC0534 */  ori        $a1, $zero, 0xFC00
/* 48228 80057A28 FF000424 */  addiu      $a0, $zero, 0xFF
.L80057A2C:
/* 4822C 80057A2C 00006294 */  lhu        $v0, 0x0($v1)
/* 48230 80057A30 00000000 */  nop
/* 48234 80057A34 03004710 */  beq        $v0, $a3, .L80057A44
/* 48238 80057A38 00000000 */   nop
/* 4823C 80057A3C 03004514 */  bne        $v0, $a1, .L80057A4C
/* 48240 80057A40 00000000 */   nop
.L80057A44:
/* 48244 80057A44 945E0108 */  j          .L80057A50
/* 48248 80057A48 000060A4 */   sh        $zero, 0x0($v1)
.L80057A4C:
/* 4824C 80057A4C 000062A4 */  sh         $v0, 0x0($v1)
.L80057A50:
/* 48250 80057A50 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 48254 80057A54 F5FF8104 */  bgez       $a0, .L80057A2C
/* 48258 80057A58 02006324 */   addiu     $v1, $v1, 0x2
/* 4825C 80057A5C 50108497 */  lhu        $a0, %gp_rel(ImageClutId)($gp)
/* 48260 80057A60 01000224 */  addiu      $v0, $zero, 0x1
/* 48264 80057A64 2000A2A7 */  sh         $v0, 0x20($sp)
/* 48268 80057A68 01008324 */  addiu      $v1, $a0, 0x1
/* 4826C 80057A6C 501083A7 */  sh         $v1, %gp_rel(ImageClutId)($gp)
/* 48270 80057A70 2200A4A7 */  sh         $a0, 0x22($sp)
/* 48274 80057A74 00002292 */  lbu        $v0, 0x0($s1)
/* 48278 80057A78 00000000 */  nop
/* 4827C 80057A7C 05004014 */  bnez       $v0, .L80057A94
/* 48280 80057A80 00000000 */   nop
/* 48284 80057A84 0E74010C */  jal        Alloc16CLUT
/* 48288 80057A88 2120C000 */   addu      $a0, $a2, $zero
/* 4828C 80057A8C A85E0108 */  j          .L80057AA0
/* 48290 80057A90 FFFF4330 */   andi      $v1, $v0, 0xFFFF
.L80057A94:
/* 48294 80057A94 9274010C */  jal        Alloc256CLUT
/* 48298 80057A98 2120C000 */   addu      $a0, $a2, $zero
/* 4829C 80057A9C FFFF4330 */  andi       $v1, $v0, 0xFFFF
.L80057AA0:
/* 482A0 80057AA0 0980023C */  lui        $v0, %hi(TheClutRow)
/* 482A4 80057AA4 96594294 */  lhu        $v0, %lo(TheClutRow)($v0)
/* 482A8 80057AA8 9E1683A7 */  sh         $v1, %gp_rel(TexInfo + 0x2)($gp)
/* 482AC 80057AAC A01682A7 */  sh         $v0, %gp_rel(TexInfo + 0x4)($gp)
/* 482B0 80057AB0 1C40010C */  jal        new_free
/* 482B4 80057AB4 21202002 */   addu      $a0, $s1, $zero
.L80057AB8:
/* 482B8 80057AB8 21102002 */  addu       $v0, $s1, $zero
.L80057ABC:
/* 482BC 80057ABC 3002BF8F */  lw         $ra, 0x230($sp)
/* 482C0 80057AC0 2C02B18F */  lw         $s1, 0x22C($sp)
/* 482C4 80057AC4 2802B08F */  lw         $s0, 0x228($sp)
/* 482C8 80057AC8 0800E003 */  jr         $ra
/* 482CC 80057ACC 3802BD27 */   addiu     $sp, $sp, 0x238
.size LoadTexture, . - LoadTexture
