      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      27/02/2023
      * Purpose:   Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_MAT_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-NUM-1 PIC 99 VALUE 0.
       77 WS-NUM-2 PIC 99 VALUE 0.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM P001-INICIO
            PERFORM P500-CALC
            PERFORM P999-FIM
            .

       P001-INICIO.
            INITIALIZE WS-NUM-1
                       WS-NUM-2

            DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
            ACCEPT WS-NUM-1
            DISPLAY 'DIGITE O SEGUNDO NUMERO:  '
            ACCEPT WS-NUM-2
            .

       P300-ERRO.
            DISPLAY 'ERRO DE PROCESSAMENTO !'
            PERFORM P999-FIM
            .

       P500-CALC.
            DISPLAY 'WS-NUM-1: ' WS-NUM-1
            DISPLAY 'WS-NUM-2: ' WS-NUM-2
            
            DISPLAY 'FUNCAO ADD: '
            ADD WS-NUM-1      TO WS-NUM-2
                              ON SIZE ERROR PERFORM P300-ERRO
            END-ADD
            DISPLAY 'VALOR DE WS-NUM-2 APOS ADD: ' WS-NUM-2

            DISPLAY 'FUNCAO SUBTRACT: '
            SUBTRACT 2        FROM WS-NUM-2
                              ON SIZE ERROR PERFORM P300-ERRO
            END-SUBTRACT
            DISPLAY 'VALOR DE WS-NUM-2 APOS ADD: ' WS-NUM-2

            .     

       P999-FIM.          
            STOP RUN.

       END PROGRAM EX_MAT_01.
      *     Continuar aos 20min.
