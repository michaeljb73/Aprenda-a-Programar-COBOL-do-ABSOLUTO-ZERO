      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      00/02/2023
      * Purpose:   Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_LENGTH_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-ENDERECO.
           03 WS-RUA       PIC X(20).
           03 WS-BIRRO     PIC X(20).
           03 WS-CIDADE    PIC X(30).
       
       77  WS-COMPRIMENTO  PIC 99 VALUES 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
            DISPLAY 'O COMPRIMENTO DO GRUPO ENDERECO E: '
                    LENGTH OF WS-ENDERECO

      *     /* OUTRA FORMA */
            
            COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)

            DISPLAY 'OUTRA FORMA: ' WS-COMPRIMENTO
           
            STOP RUN.
       END PROGRAM EX_LENGTH_01.