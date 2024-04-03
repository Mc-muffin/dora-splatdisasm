.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestartVehicleAI
/* 38860 80048060 0000A0AC */  sw         $zero, 0x0($a1)
/* 38864 80048064 0C0080AC */  sw         $zero, 0xC($a0)
/* 38868 80048068 0800A0AC */  sw         $zero, 0x8($a1)
/* 3886C 8004806C 0C00A0AC */  sw         $zero, 0xC($a1)
/* 38870 80048070 0400A0AC */  sw         $zero, 0x4($a1)
/* 38874 80048074 5C0080AC */  sw         $zero, 0x5C($a0)
/* 38878 80048078 2800A28C */  lw         $v0, 0x28($a1)
/* 3887C 8004807C 00000000 */  nop
/* 38880 80048080 2800438C */  lw         $v1, 0x28($v0)
/* 38884 80048084 00000000 */  nop
/* 38888 80048088 06006010 */  beqz       $v1, .L800480A4
/* 3888C 8004808C 01000224 */   addiu     $v0, $zero, 0x1
/* 38890 80048090 06006214 */  bne        $v1, $v0, .L800480AC
/* 38894 80048094 00000000 */   nop
/* 38898 80048098 00040224 */  addiu      $v0, $zero, 0x400
/* 3889C 8004809C 0800E003 */  jr         $ra
/* 388A0 800480A0 540082AC */   sw        $v0, 0x54($a0)
.L800480A4:
/* 388A4 800480A4 000C0224 */  addiu      $v0, $zero, 0xC00
/* 388A8 800480A8 540082AC */  sw         $v0, 0x54($a0)
.L800480AC:
/* 388AC 800480AC 0800E003 */  jr         $ra
/* 388B0 800480B0 00000000 */   nop
.size RestartVehicleAI, . - RestartVehicleAI
