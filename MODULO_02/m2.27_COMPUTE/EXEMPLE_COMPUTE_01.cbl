      ******************************************************************
      * Author: Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date: 24/01/2023
      * Purpose: Ensinar COBOL à Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_COMPUTE_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-RESULT    PIC 9(05)   VALUE ZEROES.
       77 WS-NUM1      PIC 99      VALUE ZEROES.
       77 WS-NUM2      PIC 99      VALUE ZEROES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            COMPUTE WS-RESULT = 5 + 5
            COMPUTE WS-RESULT = WS-RESULT * 3
            COMPUTE WS-RESULT = WS-RESULT - 15
            COMPUTE WS-RESULT = WS-RESULT / 3
            COMPUTE WS-RESULT = WS-RESULT ** 3
            COMPUTE WS-RESULT = ( 5 * 2 ) + ( 5 + ( 3 + (8 - 2)))

            DISPLAY    'RESULTADO: ' WS-RESULT

            DISPLAY    '--------------------------------------------'

            DISPLAY    'INFORME O PRIMEIRO NUMERO: '
            ACCEPT     WS-NUM1

            DISPLAY    'INFORME O SEGUNDO NUMERO: '
            ACCEPT     WS-NUM2

            COMPUTE    WS-RESULT = WS-NUM1 + WS-NUM2

            DISPLAY    'RESULTADO: ' WS-RESULT

            STOP RUN.
       END PROGRAM EXEMPLE_COMPUTE_01.
