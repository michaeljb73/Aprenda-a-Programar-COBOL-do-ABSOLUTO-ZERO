      ******************************************************************
      * Author: Michael J. Bezerra - Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date: 20 de Janeiro de 2023
      * Purpose: Estudo de COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_SET_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      * 77 WS-NUM-1         PIC 99 VALUE 0.
      * 77 WS-NUM-2         PIC 99 VALUE 0.

       01  WS-PAGTO         PIC X  VALUE 'N'.
           88 WS-CONFIRM           VALUE 'S' FALSE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      DISPLAY 'ANTES DE SETAR WS-NUM-1 : ' WS-NUM-1
      *      SET WS-NUM-1   TO 5
      *      DISPLAY 'DEOPIS DE SETAR WS-NUM-1: ' WS-NUM-1

      *      DISPLAY '------------------------------------'

      *      DISPLAY 'ANTES DE SETAR WS-NUM-2 : ' WS-NUM-2
      *      SET WS-NUM-2   TO WS-NUM-1
      *      DISPLAY 'DEOPIS DE SETAR WS-NUM-2: ' WS-NUM-2

      *      DISPLAY '------------------------------------'

      *      SET WS-NUM-1   TO 7
      *      DISPLAY 'VALOR FINAL DE WS-NUM-1 : ' WS-NUM-1
      *      DISPLAY 'VALOR FINAL DE WS-NUM-2 : ' WS-NUM-2

            DISPLAY 'SITUACAO DO PAGAMENTO ATAL: '  WS-PAGTO
            SET WS-CONFIRM                          TO TRUE
            DISPLAY 'NOVA SITUACAO DO PAGAMETO:  '  WS-PAGTO
            SET WS-CONFIRM                          TO FALSE
            DISPLAY 'NOVA SITUACAO DO CORRIGIDO: '  WS-PAGTO

            STOP RUN.
       END PROGRAM EXEMPLE_SET_01.
