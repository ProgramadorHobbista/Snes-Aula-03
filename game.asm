;PROGRAMADOR HOBBISTA
;https://www.youtube.com/@ProgramadorHobbista
org $008000

irq:
    RTI
nmi:
    RTI
reset:

; ;=======breve inicialização do SNES
;     SEI
;     CLC
;     XCE
;     REP #$30
;     LDX #$1FFF
;     TXS
;     SEP #$20
;     REP #$10
; ;=======código para alteração da paleta (CGRAM)

;     LDA #$0F
;     STA $2100 

;     STZ $2121 ;índice da paleta de cores

;     LDA #$17
;     STA $2122 ;valor do primeiro byte da cor

;     LDA #$40
;     STA $2122 ;valor do segundo byte da cor
    

loop:
    bra loop