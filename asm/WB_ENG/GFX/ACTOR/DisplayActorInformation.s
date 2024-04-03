.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DisplayActorInformation
/* 52724 80061F24 CC11828F */  lw         $v0, %gp_rel(ActorInfoDisplayFlag)($gp)
/* 52728 80061F28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5272C 80061F2C 18004010 */  beqz       $v0, .L80061F90
/* 52730 80061F30 1000BFAF */   sw        $ra, 0x10($sp)
/* 52734 80061F34 00008294 */  lhu        $v0, 0x0($a0)
/* 52738 80061F38 00000000 */  nop
/* 5273C 80061F3C 641782A7 */  sh         $v0, %gp_rel(info_sptr)($gp)
/* 52740 80061F40 04008394 */  lhu        $v1, 0x4($a0)
/* 52744 80061F44 00000000 */  nop
/* 52748 80061F48 661783A7 */  sh         $v1, %gp_rel(info_sptr + 0x2)($gp)
/* 5274C 80061F4C 08008294 */  lhu        $v0, 0x8($a0)
/* 52750 80061F50 64178327 */  addiu      $v1, $gp, %gp_rel(info_sptr)
/* 52754 80061F54 681782A7 */  sh         $v0, %gp_rel(info_sptr + 0x4)($gp)
/* 52758 80061F58 000060C8 */  lwc2       $0, 0x0($v1)
/* 5275C 80061F5C 040061C8 */  lwc2       $1, 0x4($v1)
/* 52760 80061F60 00000000 */  nop
/* 52764 80061F64 00000000 */  nop
/* 52768 80061F68 0100184A */  RTPS
/* 5276C 80061F6C 5C178227 */  addiu      $v0, $gp, %gp_rel(info_sxy)
/* 52770 80061F70 00004EE8 */  swc2       $14, 0x0($v0)
/* 52774 80061F74 58178327 */  addiu      $v1, $gp, %gp_rel(info_distptr)
/* 52778 80061F78 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 5277C 80061F7C 00000000 */  nop
/* 52780 80061F80 C3600C00 */  sra        $t4, $t4, 3
/* 52784 80061F84 00006CAC */  sw         $t4, 0x0($v1)
/* 52788 80061F88 6AFC000C */  jal        DrawActorCollision
/* 5278C 80061F8C 00000000 */   nop
.L80061F90:
/* 52790 80061F90 1000BF8F */  lw         $ra, 0x10($sp)
/* 52794 80061F94 00000000 */  nop
/* 52798 80061F98 0800E003 */  jr         $ra
/* 5279C 80061F9C 1800BD27 */   addiu     $sp, $sp, 0x18
.size DisplayActorInformation, . - DisplayActorInformation
