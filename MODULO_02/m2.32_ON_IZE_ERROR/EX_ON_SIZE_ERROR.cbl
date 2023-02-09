      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      08/02/2023
      * Purpose:   Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_ON_SIZE_ERROR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77   WS-NUM-1               PIC 99    VALUE ZEROES.
       77   WS-NUM-2               PIC 9(02) VALUE ZEROES.
       77   WS-RESULT              PIC 99    VALUE ZEROES.

       PROCEDURE DIVISION.
       P001-INICIO.
            
            PERFORM P100-CALC.
            PERFORM P999-FIM.

       P100-CALC.
            
            DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
            ACCEPT WS-NUM-1

            DISPLAY 'DIGITE O SEGUNDO NUMERO: '
            ACCEPT WS-NUM-2

            COMPUTE WS-RESULT = WS-NUM-1 * WS-NUM-2
                    ON SIZE ERROR PERFORM P800-ERRO
            END-COMPUTE

            DISPLAY 'CALCULO OK! RESULTADO: ' WS-RESULT 
            .

       P800-ERRO.
            
            DISPLAY 'ERRO - TAMANHO DO RESULTADO ACIMA DO PERMITIDO !'
            PERFORM P999-FIM
       .

       P999-FIM. 
            STOP RUN.

       END PROGRAM EX_ON_SIZE_ERROR.
