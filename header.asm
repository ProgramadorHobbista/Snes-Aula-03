org $00FFB0

;==variáveis header===
!ExpansioRAMSize = $00
!SpecialVersion = $00
!CartridgeType = $00
!MapMode = $20
!ROMSize = $0C
!RAMSize = $00
!DestinationCode = $01
!FixedValue = $33
!MaskROMVersion = $01
!ComplementCheck = $FFFF
!CheckSum = $FFFF
;===inner header===
db "PH"
db "PPHH"
db $00,$00,$00,$00,$00,$00,$00
db !ExpansioRAMSize
db !SpecialVersion
db !CartridgeType
db "PROGRAMADORHOBBISTA A"
db !MapMode
db !CartridgeType
db !ROMSize
db !RAMSize
db !DestinationCode
db !FixedValue
db !MaskROMVersion
dw !ComplementCheck
dw !CheckSum

;=========VECTOR TABLE==========
;=========NATIVO================
db $01,$02,$03,$04
db $01,$02 ; coprocessor
db $01,$02 ; break
db $01,$02 ; abort
dw nmi
db $01,$02 ;
dw irq
;=========EMULADO===============
db $00,$00,$00,$00
db $01,$02 ; coprocessor
db $01,$02 ;
db $01,$02 ; abort
dw nmi
dw reset
dw irq