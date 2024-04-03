.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextAddStringC
/* 495C4 80058DC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 495C8 80058DC8 21508000 */  addu       $t2, $a0, $zero
/* 495CC 80058DCC 21404001 */  addu       $t0, $t2, $zero
/* 495D0 80058DD0 21480000 */  addu       $t1, $zero, $zero
/* 495D4 80058DD4 1000BFAF */  sw         $ra, 0x10($sp)
/* 495D8 80058DD8 00004291 */  lbu        $v0, 0x0($t2)
/* 495DC 80058DDC 00000000 */  nop
/* 495E0 80058DE0 12004010 */  beqz       $v0, .L80058E2C
/* 495E4 80058DE4 2158A000 */   addu      $t3, $a1, $zero
/* 495E8 80058DE8 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 495EC 80058DEC 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 495F0 80058DF0 80100200 */  sll        $v0, $v0, 2
/* 495F4 80058DF4 21104400 */  addu       $v0, $v0, $a0
/* 495F8 80058DF8 0000438C */  lw         $v1, 0x0($v0)
/* 495FC 80058DFC 00000000 */  nop
/* 49600 80058E00 20006524 */  addiu      $a1, $v1, 0x20
/* 49604 80058E04 1800648C */  lw         $a0, 0x18($v1)
/* 49608 80058E08 00000291 */  lbu        $v0, 0x0($t0)
.L80058E0C:
/* 4960C 80058E0C 01000825 */  addiu      $t0, $t0, 0x1
/* 49610 80058E10 80100200 */  sll        $v0, $v0, 2
/* 49614 80058E14 2110A200 */  addu       $v0, $a1, $v0
/* 49618 80058E18 00004390 */  lbu        $v1, 0x0($v0)
/* 4961C 80058E1C 00000291 */  lbu        $v0, 0x0($t0)
/* 49620 80058E20 21186400 */  addu       $v1, $v1, $a0
/* 49624 80058E24 F9FF4014 */  bnez       $v0, .L80058E0C
/* 49628 80058E28 21482301 */   addu      $t1, $t1, $v1
.L80058E2C:
/* 4962C 80058E2C C22F0900 */  srl        $a1, $t1, 31
/* 49630 80058E30 21282501 */  addu       $a1, $t1, $a1
/* 49634 80058E34 43280500 */  sra        $a1, $a1, 1
/* 49638 80058E38 21204001 */  addu       $a0, $t2, $zero
/* 4963C 80058E3C EA60010C */  jal        TextAddString
/* 49640 80058E40 23286501 */   subu      $a1, $t3, $a1
/* 49644 80058E44 1000BF8F */  lw         $ra, 0x10($sp)
/* 49648 80058E48 00000000 */  nop
/* 4964C 80058E4C 0800E003 */  jr         $ra
/* 49650 80058E50 1800BD27 */   addiu     $sp, $sp, 0x18
.size TextAddStringC, . - TextAddStringC
