      ******************************************************************
      * Author: Michael J. Bezerra from C.A. Dorneles - cadcobol.com.br
      * Date: 18/01/2023
      * Purpose: Treinamento
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_MOVE_03.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      * Formatando as números
         01 WS-AUXILIARES.
           05 WS-VALOR-1     PIC ---.---.--9,99    VALUE ZEROES.
           05 WS-VALOR-2     PIC ***.***.**9,99    VALUE ZEROES.
           05 WS-VALOR-3     PIC $$$.$$$.$$9,99    VALUE ZEROES.
           05 WS-VALOR-4     PIC 999B999B999,99    VALUE ZEROES.
           05 WS-VALOR-5     PIC 999.999.999.99CR  VALUE ZEROES.
           05 WS-VALOR-6     PIC 999.999.999.99DB  VALUE ZEROES.

      * 01 WS-AUXILIARES.
      *     05 WS-VALOR-1     PIC 9(009)V99   VALUE ZEROES.
      *     05 WS-VALOR-2     PIC 9(009)V99   VALUE ZEROES.
      *     05 WS-VALOR-3     PIC 9(009)V99   VALUE ZEROES.
      *     05 WS-VALOR-4     PIC 9(009)      VALUE ZEROES.
      *     05 WS-VALOR-5     PIC 9(009)      VALUE ZEROES.

       PROCEDURE DIVISION.
       001-INICIO.

            MOVE    5892,12 TO WS-VALOR-1
            MOVE    1234,56 TO WS-VALOR-2
            MOVE      88,12 TO WS-VALOR-3
            MOVE       5892 TO WS-VALOR-4
            MOVE WS-VALOR-4 TO WS-VALOR-5
            MOVE      18342 TO WS-VALOR-6

            DISPLAY "WS-VALOR-1 ( ---.---.--9,99 ): "   WS-VALOR-1
            DISPLAY "WS-VALOR-2 ( ***.***.**9,99 ): "   WS-VALOR-2
            DISPLAY "WS-VALOR-3 ( $$$.$$$.$$9,99 ): "   WS-VALOR-3
            DISPLAY "WS-VALOR-4 ( 999B999B999,99 ): "   WS-VALOR-4
            DISPLAY "WS-VALOR-5 ( 999.999.999.99CR ): " WS-VALOR-5

            DISPLAY "WS-VALOR-6 ( 999.999.999.99DB ): " WS-VALOR-6

            STOP RUN.
       END PROGRAM EXEMPLE_MOVE_03.
