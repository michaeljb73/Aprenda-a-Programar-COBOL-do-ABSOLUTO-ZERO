      ******************************************************************
      * Author: Aprenda COBOL - SEC4 M2.17
      * Date: 10/01/2023
      * Purpose: Aprender COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. sec5_m2_17.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-N1 PIC 9(02) VALUE ZEROS.
       77 WS-N2 PIC 9(02) VALUE ZEROS.
       77 WS-N3 PIC Z(03) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 5 TO WS-N1
            MOVE 8 TO WS-N2
            COMPUTE WS-N3 = WS-N1 + WS-N2
            DISPLAY "O resultado da operacao e: " WS-N3
            STOP RUN.
       END PROGRAM sec5_m2_17.
