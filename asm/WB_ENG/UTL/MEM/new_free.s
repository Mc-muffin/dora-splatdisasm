.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel new_free
/* 40870 80050070 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40874 80050074 08008010 */  beqz       $a0, .L80050098
/* 40878 80050078 1000BFAF */   sw        $ra, 0x10($sp)
/* 4087C 8005007C FCFF838C */  lw         $v1, -0x4($a0)
/* 40880 80050080 00000000 */  nop
/* 40884 80050084 01006230 */  andi       $v0, $v1, 0x1
/* 40888 80050088 03004014 */  bnez       $v0, .L80050098
/* 4088C 8005008C 01006234 */   ori       $v0, $v1, 0x1
/* 40890 80050090 6640010C */  jal        CompactMemory
/* 40894 80050094 FCFF82AC */   sw        $v0, -0x4($a0)
.L80050098:
/* 40898 80050098 1000BF8F */  lw         $ra, 0x10($sp)
/* 4089C 8005009C 00000000 */  nop
/* 408A0 800500A0 0800E003 */  jr         $ra
/* 408A4 800500A4 1800BD27 */   addiu     $sp, $sp, 0x18
.size new_free, . - new_free
