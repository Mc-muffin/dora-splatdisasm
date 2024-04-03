.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FlashCursor
/* 3DFB4 8004D7B4 380E8293 */  lbu        $v0, %gp_rel(CursorR)($gp)
/* 3DFB8 8004D7B8 390E8393 */  lbu        $v1, %gp_rel(CursorG)($gp)
/* 3DFBC 8004D7BC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3DFC0 8004D7C0 2400BFAF */  sw         $ra, 0x24($sp)
/* 3DFC4 8004D7C4 2000B2AF */  sw         $s2, 0x20($sp)
/* 3DFC8 8004D7C8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3DFCC 8004D7CC 1800B0AF */  sw         $s0, 0x18($sp)
/* 3DFD0 8004D7D0 0A004224 */  addiu      $v0, $v0, 0xA
/* 3DFD4 8004D7D4 380E82A3 */  sb         $v0, %gp_rel(CursorR)($gp)
/* 3DFD8 8004D7D8 FF004430 */  andi       $a0, $v0, 0xFF
/* 3DFDC 8004D7DC 3A0E8293 */  lbu        $v0, %gp_rel(CursorB)($gp)
/* 3DFE0 8004D7E0 28006324 */  addiu      $v1, $v1, 0x28
/* 3DFE4 8004D7E4 390E83A3 */  sb         $v1, %gp_rel(CursorG)($gp)
/* 3DFE8 8004D7E8 FF006530 */  andi       $a1, $v1, 0xFF
/* 3DFEC 8004D7EC 14004224 */  addiu      $v0, $v0, 0x14
/* 3DFF0 8004D7F0 3A0E82A3 */  sb         $v0, %gp_rel(CursorB)($gp)
/* 3DFF4 8004D7F4 C989010C */  jal        SetLineColor
/* 3DFF8 8004D7F8 FF004630 */   andi      $a2, $v0, 0xFF
/* 3DFFC 8004D7FC 80000724 */  addiu      $a3, $zero, 0x80
/* 3E000 8004D800 180E848F */  lw         $a0, %gp_rel(EditCelX)($gp)
/* 3E004 8004D804 1C0E858F */  lw         $a1, %gp_rel(EditCelY)($gp)
/* 3E008 8004D808 200E868F */  lw         $a2, %gp_rel(EditCelZ)($gp)
/* 3E00C 8004D80C 80000224 */  addiu      $v0, $zero, 0x80
/* 3E010 8004D810 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E014 8004D814 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E018 8004D818 C0210400 */  sll        $a0, $a0, 7
/* 3E01C 8004D81C 40008434 */  ori        $a0, $a0, 0x40
/* 3E020 8004D820 C0290500 */  sll        $a1, $a1, 7
/* 3E024 8004D824 C0FFA524 */  addiu      $a1, $a1, -0x40
/* 3E028 8004D828 C0310600 */  sll        $a2, $a2, 7
/* 3E02C 8004D82C CF89010C */  jal        DrawBox
/* 3E030 8004D830 4000C634 */   ori       $a2, $a2, 0x40
/* 3E034 8004D834 340E838F */  lw         $v1, %gp_rel(FlashCounter)($gp)
/* 3E038 8004D838 00000000 */  nop
/* 3E03C 8004D83C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 3E040 8004D840 340E83AF */  sw         $v1, %gp_rel(FlashCounter)($gp)
/* 3E044 8004D844 2700601C */  bgtz       $v1, .L8004D8E4
/* 3E048 8004D848 00000000 */   nop
/* 3E04C 8004D84C 300E828F */  lw         $v0, %gp_rel(FlipFlopState)($gp)
/* 3E050 8004D850 00000000 */  nop
/* 3E054 8004D854 15004014 */  bnez       $v0, .L8004D8AC
/* 3E058 8004D858 0A80103C */   lui       $s0, %hi(CelStack)
/* 3E05C 8004D85C 180E928F */  lw         $s2, %gp_rel(EditCelX)($gp)
/* 3E060 8004D860 1C0E908F */  lw         $s0, %gp_rel(EditCelY)($gp)
/* 3E064 8004D864 200E918F */  lw         $s1, %gp_rel(EditCelZ)($gp)
/* 3E068 8004D868 21204002 */  addu       $a0, $s2, $zero
/* 3E06C 8004D86C 21280002 */  addu       $a1, $s0, $zero
/* 3E070 8004D870 1694010C */  jal        GetCelIndex
/* 3E074 8004D874 21302002 */   addu      $a2, $s1, $zero
/* 3E078 8004D878 21204002 */  addu       $a0, $s2, $zero
/* 3E07C 8004D87C 21280002 */  addu       $a1, $s0, $zero
/* 3E080 8004D880 21302002 */  addu       $a2, $s1, $zero
/* 3E084 8004D884 0A80083C */  lui        $t0, %hi(CelStack)
/* 3E088 8004D888 240E878F */  lw         $a3, %gp_rel(EditCel)($gp)
/* 3E08C 8004D88C 306B0325 */  addiu      $v1, $t0, %lo(CelStack)
/* 3E090 8004D890 0C0062A4 */  sh         $v0, 0xC($v1)
/* 3E094 8004D894 306B12AD */  sw         $s2, %lo(CelStack)($t0)
/* 3E098 8004D898 040070AC */  sw         $s0, 0x4($v1)
/* 3E09C 8004D89C 2C94010C */  jal        SetCelIndex
/* 3E0A0 8004D8A0 080071AC */   sw        $s1, 0x8($v1)
/* 3E0A4 8004D8A4 34360108 */  j          .L8004D8D0
/* 3E0A8 8004D8A8 00000000 */   nop
.L8004D8AC:
/* 3E0AC 8004D8AC 306B048E */  lw         $a0, %lo(CelStack)($s0)
/* 3E0B0 8004D8B0 306B1026 */  addiu      $s0, $s0, %lo(CelStack)
/* 3E0B4 8004D8B4 0400058E */  lw         $a1, 0x4($s0)
/* 3E0B8 8004D8B8 0800068E */  lw         $a2, 0x8($s0)
/* 3E0BC 8004D8BC 0C000786 */  lh         $a3, 0xC($s0)
/* 3E0C0 8004D8C0 2C94010C */  jal        SetCelIndex
/* 3E0C4 8004D8C4 00000000 */   nop
/* 3E0C8 8004D8C8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3E0CC 8004D8CC 0C0002A6 */  sh         $v0, 0xC($s0)
.L8004D8D0:
/* 3E0D0 8004D8D0 300E828F */  lw         $v0, %gp_rel(FlipFlopState)($gp)
/* 3E0D4 8004D8D4 05000324 */  addiu      $v1, $zero, 0x5
/* 3E0D8 8004D8D8 340E83AF */  sw         $v1, %gp_rel(FlashCounter)($gp)
/* 3E0DC 8004D8DC 01004238 */  xori       $v0, $v0, 0x1
/* 3E0E0 8004D8E0 300E82AF */  sw         $v0, %gp_rel(FlipFlopState)($gp)
.L8004D8E4:
/* 3E0E4 8004D8E4 2400BF8F */  lw         $ra, 0x24($sp)
/* 3E0E8 8004D8E8 2000B28F */  lw         $s2, 0x20($sp)
/* 3E0EC 8004D8EC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3E0F0 8004D8F0 1800B08F */  lw         $s0, 0x18($sp)
/* 3E0F4 8004D8F4 0800E003 */  jr         $ra
/* 3E0F8 8004D8F8 2800BD27 */   addiu     $sp, $sp, 0x28
.size FlashCursor, . - FlashCursor
