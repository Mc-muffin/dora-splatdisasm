.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitFade
/* 4BA4C 8005B24C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BA50 8005B250 06000A24 */  addiu      $t2, $zero, 0x6
/* 4BA54 8005B254 28000924 */  addiu      $t1, $zero, 0x28
/* 4BA58 8005B258 00E1063C */  lui        $a2, (0xE1000240 >> 16)
/* 4BA5C 8005B25C 4002C634 */  ori        $a2, $a2, (0xE1000240 & 0xFFFF)
/* 4BA60 8005B260 08000824 */  addiu      $t0, $zero, 0x8
/* 4BA64 8005B264 0B80023C */  lui        $v0, %hi(FadeTile)
/* 4BA68 8005B268 40B94424 */  addiu      $a0, $v0, %lo(FadeTile)
/* 4BA6C 8005B26C 01000724 */  addiu      $a3, $zero, 0x1
/* 4BA70 8005B270 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4BA74 8005B274 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4BA78 8005B278 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4BA7C 8005B27C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BA80 8005B280 F01680AF */  sw         $zero, %gp_rel(gFadeCount)($gp)
/* 4BA84 8005B284 0100422C */  sltiu      $v0, $v0, 0x1
/* 4BA88 8005B288 C0110200 */  sll        $v0, $v0, 7
/* 4BA8C 8005B28C 21104300 */  addu       $v0, $v0, $v1
/* 4BA90 8005B290 60004584 */  lh         $a1, 0x60($v0)
/* 4BA94 8005B294 62004384 */  lh         $v1, 0x62($v0)
/* 4BA98 8005B298 02002235 */  ori        $v0, $t1, 0x2
.L8005B29C:
/* 4BA9C 8005B29C 03008AA0 */  sb         $t2, 0x3($a0)
/* 4BAA0 8005B2A0 0B0082A0 */  sb         $v0, 0xB($a0)
/* 4BAA4 8005B2A4 040086AC */  sw         $a2, 0x4($a0)
/* 4BAA8 8005B2A8 080088A0 */  sb         $t0, 0x8($a0)
/* 4BAAC 8005B2AC 090088A0 */  sb         $t0, 0x9($a0)
/* 4BAB0 8005B2B0 0A0088A0 */  sb         $t0, 0xA($a0)
/* 4BAB4 8005B2B4 0C0080A4 */  sh         $zero, 0xC($a0)
/* 4BAB8 8005B2B8 0E0080A4 */  sh         $zero, 0xE($a0)
/* 4BABC 8005B2BC 100085A4 */  sh         $a1, 0x10($a0)
/* 4BAC0 8005B2C0 120080A4 */  sh         $zero, 0x12($a0)
/* 4BAC4 8005B2C4 140080A4 */  sh         $zero, 0x14($a0)
/* 4BAC8 8005B2C8 160083A4 */  sh         $v1, 0x16($a0)
/* 4BACC 8005B2CC 180085A4 */  sh         $a1, 0x18($a0)
/* 4BAD0 8005B2D0 1A0083A4 */  sh         $v1, 0x1A($a0)
/* 4BAD4 8005B2D4 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 4BAD8 8005B2D8 F0FFE104 */  bgez       $a3, .L8005B29C
/* 4BADC 8005B2DC 1C008424 */   addiu     $a0, $a0, 0x1C
/* 4BAE0 8005B2E0 36DB010C */  jal        DrawSync
/* 4BAE4 8005B2E4 21200000 */   addu      $a0, $zero, $zero
/* 4BAE8 8005B2E8 0B80043C */  lui        $a0, %hi(gDoubleBuffer + 0x5C)
/* 4BAEC 8005B2EC E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4BAF0 8005B2F0 D4B98424 */  addiu      $a0, $a0, %lo(gDoubleBuffer + 0x5C)
/* 4BAF4 8005B2F4 C0190300 */  sll        $v1, $v1, 7
/* 4BAF8 8005B2F8 42DD010C */  jal        PutDispEnv
/* 4BAFC 8005B2FC 21206400 */   addu      $a0, $v1, $a0
/* 4BB00 8005B300 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BB04 8005B304 00000000 */  nop
/* 4BB08 8005B308 0800E003 */  jr         $ra
/* 4BB0C 8005B30C 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitFade, . - InitFade
