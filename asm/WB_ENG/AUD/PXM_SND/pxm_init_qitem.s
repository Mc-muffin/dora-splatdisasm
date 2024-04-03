.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_qitem
/* 45848 80055048 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4584C 8005504C 000082A0 */  sb         $v0, 0x0($a0)
/* 45850 80055050 080080AC */  sw         $zero, 0x8($a0)
/* 45854 80055054 040080A4 */  sh         $zero, 0x4($a0)
/* 45858 80055058 100080AC */  sw         $zero, 0x10($a0)
/* 4585C 8005505C 030080A0 */  sb         $zero, 0x3($a0)
/* 45860 80055060 020080A0 */  sb         $zero, 0x2($a0)
/* 45864 80055064 0800E003 */  jr         $ra
/* 45868 80055068 0C0080AC */   sw        $zero, 0xC($a0)
.size pxm_init_qitem, . - pxm_init_qitem
