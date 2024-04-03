.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateTranslationTween
/* 2954C 80038D4C 00240400 */  sll        $a0, $a0, 16
/* 29550 80038D50 03240400 */  sra        $a0, $a0, 16
/* 29554 80038D54 002C0500 */  sll        $a1, $a1, 16
/* 29558 80038D58 032C0500 */  sra        $a1, $a1, 16
/* 2955C 80038D5C 2A10A400 */  slt        $v0, $a1, $a0
/* 29560 80038D60 07004010 */  beqz       $v0, .L80038D80
/* 29564 80038D64 00000000 */   nop
/* 29568 80038D68 23108500 */  subu       $v0, $a0, $a1
/* 2956C 80038D6C 18004600 */  mult       $v0, $a2
/* 29570 80038D70 12100000 */  mflo       $v0
/* 29574 80038D74 03120200 */  sra        $v0, $v0, 8
/* 29578 80038D78 65E30008 */  j          .L80038D94
/* 2957C 80038D7C 21104500 */   addu      $v0, $v0, $a1
.L80038D80:
/* 29580 80038D80 2310A400 */  subu       $v0, $a1, $a0
/* 29584 80038D84 18004600 */  mult       $v0, $a2
/* 29588 80038D88 12100000 */  mflo       $v0
/* 2958C 80038D8C 03120200 */  sra        $v0, $v0, 8
/* 29590 80038D90 2310A200 */  subu       $v0, $a1, $v0
.L80038D94:
/* 29594 80038D94 00140200 */  sll        $v0, $v0, 16
/* 29598 80038D98 0800E003 */  jr         $ra
/* 2959C 80038D9C 03140200 */   sra       $v0, $v0, 16
.size CalculateTranslationTween, . - CalculateTranslationTween
