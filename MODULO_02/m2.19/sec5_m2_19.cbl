      ******************************************************************
      * Author: Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date: 22/01/2021
      * Purpose: Exemplo de uso de código COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. sec5_m2_19.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
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

       01  WS-MESES-ANO            PIC 99      VALUE ZEROS.
           88 WS-MES-ATUAL                     VALUE 1 THRU 12.

       01  WS-DIAS-MES             PIC 99      VALUE ZEROS.
           88 WS-FEV-NB                        VALUE 1 THRU 28.
           88 WS-FEV-B                         VALUE 1 THRU 29.
           88 WS-MES-30                        VALUE 1 THRU 30.
           88 WS-MES-31                        VALUE 1 THRU 31.

      * CRIAR ITEM DE GRUPO WS-MESES-ANO - SLIDES PAG 26 ( CAP5 07 DE 14 )
       PROCEDURE DIVISION.
      ***************************************************************
      *     INICIALIZA AS VARIAVEIS E CHAMA OS DEMAIS PARAGRAFOS
      ***************************************************************
       P100-INICIAL.
            DISPLAY "INICIO DO PROCESSAMENTO".
            MOVE 3 TO WS-MESES-ANO.

            IF WS-MES-ATUAL THEN
                DISPLAY "MES VERDADEIRO: " WS-MESES-ANO
            ELSE
                DISPLAY "ESSE MÊS NÃO EXITE: " WS-MESES-ANO
            END-IF.

            MOVE 31 TO WS-DIAS-MES.

            EVALUATE WS-DIAS-MES
               WHEN 1 THRU 28
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 29
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 30
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 31
                   DISPLAY WS-DIAS-MES
               WHEN OTHER
                   DISPLAY "O DIA DO MES NAO EXISTE " WS-DIAS-MES
            END-EVALUATE.

      *      STOP RUN.

            MOVE SPACES TO  WS-DATA
                            WS-NOME-MES-AUX
                            WS-TECLA-AUX.

      *     DISPLAY "INFORME UMA DATA: ".
      *     ACCEPT WS-DATA.

            MOVE '12'      TO WS-DATA(01:02).
            MOVE '/'       TO WS-DATA(03:01).
            MOVE '03'      TO WS-DATA(04:02).
            MOVE '/'       TO WS-DATA(06:01).
            MOVE '2021'    TO WS-DATA(07:04).

            DISPLAY WS-DATA.

      *      PERFORM P200-VER-MES       THRU P200-VER-MES-FIM.
      *      PERFORM P300-MOSTRA        THRU P300-MOSTRA-FIM.
      *      PERFORM P900-TERMINAL      THRU P900-TERMINAL-FIM.

       P100-INICIAL-FIM.
       END PROGRAM sec5_m2_19.
