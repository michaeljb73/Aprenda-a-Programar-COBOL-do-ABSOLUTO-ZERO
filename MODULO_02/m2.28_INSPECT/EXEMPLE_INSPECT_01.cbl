      ******************************************************************
      * Author: Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date: 24/01/2023
      * Purpose: Ensinar COBOL à Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_INSPECT_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-DATA                 PIC X(10)   VALUE SPACES.
       01  WS-DATA-R               REDEFINES   WS-DATA.
           03 WS-DATA-DD           PIC 9(02).
           03 FILLER               PIC X.
           03 WS-DATA-MM           PIC 9(02).
           03 FILLER               PIC X.
           03 WS-DATA-AA           PIC 9(04).
       77  WS-NOME-MES-AUX         PIC X(15)   VALUE SPACES.
       77  WS-TECLA-AUX            PIC X.
       77  WS-TOTAL                PIC 9(02).
       77  FILLER                  PIC X(10)   VALUE "12/02/2012".

       01  WS-MESES-ANO            PIC 99      VALUE ZEROS.
           88 WS-MES-ATUAL                     VALUE 1 THRU 12.

       01  WS-DIAS-MES             PIC 99      VALUE ZEROS.
           88 WS-FEV-NB                        VALUE 1 THRU 28.
           88 WS-FEV-B                         VALUE 1 THRU 29.
           88 WS-MES-30                        VALUE 1 THRU 30.
           88 WS-MES-31                        VALUE 1 THRU 31.

       PROCEDURE DIVISION.
       P100-INICIAL.
            DISPLAY "INICIO DO PROCESSAMENTO".

            MOVE '12'      TO WS-DATA(01:02).
            MOVE '/'       TO WS-DATA(03:01).
            MOVE '03'      TO WS-DATA(04:02).
            MOVE '/'       TO WS-DATA(06:01).
            MOVE '2021'    TO WS-DATA(07:04).

            DISPLAY WS-DATA.

      ***************************************************************
      * COMANDO INSPECT PARA VERIFICAR TOTAL DE CARACTERES
      * QUE SE DESEJA CONTAR.
      ***************************************************************

      *      INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL '/'
      *      BEFORE INITIAL '21'.

      *      DISPLAY "CONTEGEM TOTAL DO CARACTER '/': " WS-TOTAL.

      ***************************************************************
      * COMANDO INSPECT NA SUBSTITUINDO DE CARACTERES.
      ***************************************************************

            INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "12".

            DISPLAY WS-DATA.

       P100-INICIAL-FIM.
       END PROGRAM EXEMPLE_INSPECT_01.
