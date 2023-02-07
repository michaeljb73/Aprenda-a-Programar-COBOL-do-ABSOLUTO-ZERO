      ******************************************************************
      * Author: Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date: 30/01/2023
      * Purpose: Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_INITIALIZE_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-NOME.
           03 WS-FIRSTNAME    PIC X(15)  VALUE 'ANDRE'.
           03 FILLER          PIC X(15)  VALUE 'COSTA'.
           03 WS-ID           PIC 9(003) VALUE  ZEROES.
      *    03 WS-LASTNAME     PIC X(15)  VALUE 'COSTA'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY 'SAIDA 1: '
            DISPLAY WS-NOME.

      *     RESETAR VARIAVEIS. OBS.: O FILLER SERÁ CONSERVDO.

            INITIALIZE WS-NOME REPLACING   ALPHANUMERIC  BY 'NOME'
                                           NUMERIC       BY 1

            DISPLAY 'SAIDA 2: '
            DISPLAY WS-NOME.

            DISPLAY 'SAIDA 3: '
            INITIALIZE WS-NOME
            DISPLAY WS-NOME.

            DISPLAY 'SAIDA 4: '
            INITIALIZE WS-NOME REPLACING   ALPHANUMERIC  BY SPACES
                                           NUMERIC       BY ZEROES
            DISPLAY WS-NOME.

            STOP RUN.
       END PROGRAM EX_INITIALIZE_01.
