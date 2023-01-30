      ******************************************************************
      * Author: Tutorialspoint - Basic Verbs
      * https: //www.tutorialspoint.com/cobol/cobol_basic_verbs.htm
      * Date: 03 de Janeiro de 2023
      * Purpose: Treinamento da lingugem COBOL.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_ACCEPT_04.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01   WS-STUDANT-NAME     PIC X(25).
       01   WS-SYS-DATE         PIC X(10).

       01   WS-BR-DATE.
            03 WS-BR-DAY        PIC X(02)    VALUE SPACE.
            03 FILLER           PIC X(1)     VALUE "/".
            03 WS-BR-MONTH      PIC X(02)    VALUE SPACE.
            03 FILLER           PIC X(1)     VALUE "/".
            03 WS-BR-YEAR       PIC X(0004)  VALUE SPACE.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Enter tudant's name: "
            ACCEPT  WS-STUDANT-NAME
            ACCEPT  WS-SYS-DATE FROM DATE YYYYMMDD.

      *      MOVE WS-SYS-DATE(07:02) TO WS-BR-DAY
      *      MOVE WS-SYS-DATE(05:02) TO WS-BR-MONTH
      *      MOVE WS-SYS-DATE(01:04) TO WS-BR-YEAR

            MOVE WS-SYS-DATE(07:02) TO WS-BR-DATE(01:02)
            MOVE WS-SYS-DATE(05:02) TO WS-BR-DATE(04:02)
            MOVE WS-SYS-DATE(01:04) TO WS-BR-DATE(07:04)


            DISPLAY "Name: " WS-STUDANT-NAME
            DISPLAY "Registration Date: " WS-BR-DATE

            STOP RUN.
       END PROGRAM EX_ACCEPT_04.
