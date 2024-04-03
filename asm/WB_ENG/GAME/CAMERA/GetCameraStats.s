.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraStats
/* 2A92C 8003A12C 0980043C */  lui        $a0, %hi(currentCamera)
/* 2A930 8003A130 F456848C */  lw         $a0, %lo(currentCamera)($a0)
/* 2A934 8003A134 B40A828F */  lw         $v0, %gp_rel(hi_vpx)($gp)
/* 2A938 8003A138 2C00888C */  lw         $t0, 0x2C($a0)
/* 2A93C 8003A13C 00000000 */  nop
/* 2A940 8003A140 2A104800 */  slt        $v0, $v0, $t0
/* 2A944 8003A144 02004010 */  beqz       $v0, .L8003A150
/* 2A948 8003A148 00000000 */   nop
/* 2A94C 8003A14C B40A88AF */  sw         $t0, %gp_rel(hi_vpx)($gp)
.L8003A150:
/* 2A950 8003A150 B80A828F */  lw         $v0, %gp_rel(hi_vpy)($gp)
/* 2A954 8003A154 3000878C */  lw         $a3, 0x30($a0)
/* 2A958 8003A158 00000000 */  nop
/* 2A95C 8003A15C 2A104700 */  slt        $v0, $v0, $a3
/* 2A960 8003A160 02004010 */  beqz       $v0, .L8003A16C
/* 2A964 8003A164 00000000 */   nop
/* 2A968 8003A168 B80A87AF */  sw         $a3, %gp_rel(hi_vpy)($gp)
.L8003A16C:
/* 2A96C 8003A16C BC0A828F */  lw         $v0, %gp_rel(hi_vpz)($gp)
/* 2A970 8003A170 3400868C */  lw         $a2, 0x34($a0)
/* 2A974 8003A174 00000000 */  nop
/* 2A978 8003A178 2A104600 */  slt        $v0, $v0, $a2
/* 2A97C 8003A17C 02004010 */  beqz       $v0, .L8003A188
/* 2A980 8003A180 00000000 */   nop
/* 2A984 8003A184 BC0A86AF */  sw         $a2, %gp_rel(hi_vpz)($gp)
.L8003A188:
/* 2A988 8003A188 C00A828F */  lw         $v0, %gp_rel(hi_vrx)($gp)
/* 2A98C 8003A18C 3800858C */  lw         $a1, 0x38($a0)
/* 2A990 8003A190 00000000 */  nop
/* 2A994 8003A194 2A104500 */  slt        $v0, $v0, $a1
/* 2A998 8003A198 02004010 */  beqz       $v0, .L8003A1A4
/* 2A99C 8003A19C 00000000 */   nop
/* 2A9A0 8003A1A0 C00A85AF */  sw         $a1, %gp_rel(hi_vrx)($gp)
.L8003A1A4:
/* 2A9A4 8003A1A4 C40A828F */  lw         $v0, %gp_rel(hi_vry)($gp)
/* 2A9A8 8003A1A8 3C00838C */  lw         $v1, 0x3C($a0)
/* 2A9AC 8003A1AC 00000000 */  nop
/* 2A9B0 8003A1B0 2A104300 */  slt        $v0, $v0, $v1
/* 2A9B4 8003A1B4 02004010 */  beqz       $v0, .L8003A1C0
/* 2A9B8 8003A1B8 00000000 */   nop
/* 2A9BC 8003A1BC C40A83AF */  sw         $v1, %gp_rel(hi_vry)($gp)
.L8003A1C0:
/* 2A9C0 8003A1C0 C80A828F */  lw         $v0, %gp_rel(hi_vrz)($gp)
/* 2A9C4 8003A1C4 4000838C */  lw         $v1, 0x40($a0)
/* 2A9C8 8003A1C8 00000000 */  nop
/* 2A9CC 8003A1CC 2A104300 */  slt        $v0, $v0, $v1
/* 2A9D0 8003A1D0 02004010 */  beqz       $v0, .L8003A1DC
/* 2A9D4 8003A1D4 00000000 */   nop
/* 2A9D8 8003A1D8 C80A83AF */  sw         $v1, %gp_rel(hi_vrz)($gp)
.L8003A1DC:
/* 2A9DC 8003A1DC 9C0A828F */  lw         $v0, %gp_rel(lo_vpx)($gp)
/* 2A9E0 8003A1E0 00000000 */  nop
/* 2A9E4 8003A1E4 2A100201 */  slt        $v0, $t0, $v0
/* 2A9E8 8003A1E8 02004010 */  beqz       $v0, .L8003A1F4
/* 2A9EC 8003A1EC 00000000 */   nop
/* 2A9F0 8003A1F0 9C0A88AF */  sw         $t0, %gp_rel(lo_vpx)($gp)
.L8003A1F4:
/* 2A9F4 8003A1F4 A00A828F */  lw         $v0, %gp_rel(lo_vpy)($gp)
/* 2A9F8 8003A1F8 00000000 */  nop
/* 2A9FC 8003A1FC 2A10E200 */  slt        $v0, $a3, $v0
/* 2AA00 8003A200 02004010 */  beqz       $v0, .L8003A20C
/* 2AA04 8003A204 00000000 */   nop
/* 2AA08 8003A208 A00A87AF */  sw         $a3, %gp_rel(lo_vpy)($gp)
.L8003A20C:
/* 2AA0C 8003A20C A40A828F */  lw         $v0, %gp_rel(lo_vpz)($gp)
/* 2AA10 8003A210 00000000 */  nop
/* 2AA14 8003A214 2A10C200 */  slt        $v0, $a2, $v0
/* 2AA18 8003A218 02004010 */  beqz       $v0, .L8003A224
/* 2AA1C 8003A21C 00000000 */   nop
/* 2AA20 8003A220 A40A86AF */  sw         $a2, %gp_rel(lo_vpz)($gp)
.L8003A224:
/* 2AA24 8003A224 A80A828F */  lw         $v0, %gp_rel(lo_vrx)($gp)
/* 2AA28 8003A228 00000000 */  nop
/* 2AA2C 8003A22C 2A10A200 */  slt        $v0, $a1, $v0
/* 2AA30 8003A230 02004010 */  beqz       $v0, .L8003A23C
/* 2AA34 8003A234 00000000 */   nop
/* 2AA38 8003A238 A80A85AF */  sw         $a1, %gp_rel(lo_vrx)($gp)
.L8003A23C:
/* 2AA3C 8003A23C 0980043C */  lui        $a0, %hi(currentCamera)
/* 2AA40 8003A240 F456848C */  lw         $a0, %lo(currentCamera)($a0)
/* 2AA44 8003A244 AC0A828F */  lw         $v0, %gp_rel(lo_vry)($gp)
/* 2AA48 8003A248 3C00838C */  lw         $v1, 0x3C($a0)
/* 2AA4C 8003A24C 00000000 */  nop
/* 2AA50 8003A250 2A106200 */  slt        $v0, $v1, $v0
/* 2AA54 8003A254 02004010 */  beqz       $v0, .L8003A260
/* 2AA58 8003A258 00000000 */   nop
/* 2AA5C 8003A25C AC0A83AF */  sw         $v1, %gp_rel(lo_vry)($gp)
.L8003A260:
/* 2AA60 8003A260 B00A828F */  lw         $v0, %gp_rel(lo_vrz)($gp)
/* 2AA64 8003A264 4000838C */  lw         $v1, 0x40($a0)
/* 2AA68 8003A268 00000000 */  nop
/* 2AA6C 8003A26C 2A106200 */  slt        $v0, $v1, $v0
/* 2AA70 8003A270 02004010 */  beqz       $v0, .L8003A27C
/* 2AA74 8003A274 00000000 */   nop
/* 2AA78 8003A278 B00A83AF */  sw         $v1, %gp_rel(lo_vrz)($gp)
.L8003A27C:
/* 2AA7C 8003A27C 0800E003 */  jr         $ra
/* 2AA80 8003A280 00000000 */   nop
.size GetCameraStats, . - GetCameraStats
