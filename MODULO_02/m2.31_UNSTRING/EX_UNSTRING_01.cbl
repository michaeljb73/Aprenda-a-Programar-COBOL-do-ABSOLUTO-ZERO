      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_UNSTRING_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77   WS-NOME-COMPLETO                PIC X(30) VALUES SPACES.
       
       01   WS-NOME.
            03 WS-PRIM-NOME                 PIC X(10) VALUES SPACES.
            03 WS-NOME-MEIO                 PIC X(10) VALUES SPACES.
            03 WS-ULTI-NOME                 PIC X(10) VALUES SPACES.
       
       77   WS-MOSTRA                       PIC X(50) VALUES SPACES.
       
       01   WS-COUNT.
            03 WS-PONTEIRO                  PIC 9(02) VALUES ZEROES.
            03 WS-TOTAL-CAMPOS              PIC 9(02) VALUES ZEROES.
            03 WS-TM-1                      PIC 9(02) VALUES ZEROES.
            03 WS-TM-2                      PIC 9(02) VALUES ZEROES.
            03 WS-TM-3                      PIC 9(02) VALUES ZEROES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      ********************** FORMA 1 ********************************
            DISPLAY "************** FORMA 1 **************"
            INITIALIZE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA

            MOVE 'MARIO CEZAR CASTRO' TO WS-NOME-COMPLETO

            UNSTRING
               WS-NOME-COMPLETO
      *        // A forma DELIMITED BY ALL [SPACE, SPACES, " "]
      *        // irá prevenir contra um problema de ocorrerá caso
      *        // haja mais de um espaço entre as palavras.          
               DELIMITED BY SPACES
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
            END-UNSTRING.

            DISPLAY "WS-PRIM-NOME: " WS-PRIM-NOME
            DISPLAY "WS-NOME-MEIO: " WS-NOME-MEIO
            DISPLAY "WS-ULTI-NOME: " WS-ULTI-NOME
            DISPLAY " "

      ********************** FORMA 2 ********************************
            DISPLAY "************** FORMA 2 **************"
            INITIALIZE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE 'MARIO CEZAR CASTRO' TO WS-NOME-COMPLETO
            MOVE 1                    TO WS-PONTEIRO

            UNSTRING
               WS-NOME-COMPLETO        
               DELIMITED BY SPACES
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
      *        // Capturará o trecho pa posição 1 em diante.      
               WITH POINTER WS-PONTEIRO
      *        // TALLYING exibe o total de campos, no caso 3.            
               TALLYING IN  WS-TOTAL-CAMPOS
            END-UNSTRING.

            DISPLAY "WS-PRIM-NOME....: " WS-PRIM-NOME
            DISPLAY "WS-NOME-MEIO....: " WS-NOME-MEIO
            DISPLAY "WS-ULTI-NOME....: " WS-ULTI-NOME
            DISPLAY "WS-PONTEIRO.....: " WS-PONTEIRO
            DISPLAY "WS-TOTAL-CAMPOS : " WS-TOTAL-CAMPOS
            DISPLAY " "

      ********************** FORMA 3 ********************************
            DISPLAY "************** FORMA 3 **************"
            INITIALIZE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE 'MARIO*CEZAR;CASTRO' TO WS-NOME-COMPLETO
            MOVE 1                     TO WS-PONTEIRO

            UNSTRING
               WS-NOME-COMPLETO        
               DELIMITED BY "*" OR ";"
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
               WITH POINTER WS-PONTEIRO
               TALLYING IN  WS-TOTAL-CAMPOS
            END-UNSTRING.

            DISPLAY "WS-PRIM-NOME....: " WS-PRIM-NOME
            DISPLAY "WS-NOME-MEIO....: " WS-NOME-MEIO
            DISPLAY "WS-ULTI-NOME....: " WS-ULTI-NOME
            DISPLAY "WS-PONTEIRO.....: " WS-PONTEIRO
            DISPLAY "WS-TOTAL-CAMPOS : " WS-TOTAL-CAMPOS
            DISPLAY " "

      ********************** FORMA 4 ********************************
            DISPLAY "************** FORMA 4 **************"
            INITIALIZE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE 'MARIO*CEZAR;CASTRO;' TO WS-NOME-COMPLETO
            MOVE 1                     TO WS-PONTEIRO

            UNSTRING
               WS-NOME-COMPLETO        
               DELIMITED BY "*" OR ";"
               INTO WS-PRIM-NOME COUNT IN WS-TM-1
                    WS-NOME-MEIO COUNT IN WS-TM-2
                    WS-ULTI-NOME COUNT IN WS-TM-3
               WITH POINTER WS-PONTEIRO
               TALLYING IN  WS-TOTAL-CAMPOS
            END-UNSTRING.

            DISPLAY "WS-PRIM-NOME....: " WS-PRIM-NOME
            DISPLAY "WS-NOME-MEIO....: " WS-NOME-MEIO
            DISPLAY "WS-ULTI-NOME....: " WS-ULTI-NOME
            DISPLAY "WS-PONTEIRO.....: " WS-PONTEIRO
            DISPLAY "WS-TOTAL-CAMPOS.: " WS-TOTAL-CAMPOS
            DISPLAY "WS-TM-1.........: " WS-TM-1
            DISPLAY "WS-TM-2.........: " WS-TM-2
            DISPLAY "WS-TM-3.........: " WS-TM-3
            DISPLAY " "

      ********************** FORMA 5 ********************************
            DISPLAY "************** FORMA 5 **************"
            INITIALIZE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT

            MOVE '*MARIO;;;;;;CEZAR****CASTRO;' TO WS-NOME-COMPLETO
            MOVE 2                           TO WS-PONTEIRO

            UNSTRING
               WS-NOME-COMPLETO        
               DELIMITED BY ALL "*" OR ALL ";"
               INTO WS-PRIM-NOME COUNT IN WS-TM-1
                    WS-NOME-MEIO COUNT IN WS-TM-2
                    WS-ULTI-NOME COUNT IN WS-TM-3
               WITH POINTER WS-PONTEIRO
               TALLYING IN  WS-TOTAL-CAMPOS
            END-UNSTRING.

            DISPLAY "WS-PRIM-NOME....: " WS-PRIM-NOME
            DISPLAY "WS-NOME-MEIO....: " WS-NOME-MEIO
            DISPLAY "WS-ULTI-NOME....: " WS-ULTI-NOME
            DISPLAY "WS-PONTEIRO.....: " WS-PONTEIRO
            DISPLAY "WS-TOTAL-CAMPOS.: " WS-TOTAL-CAMPOS
            DISPLAY "WS-TM-1.........: " WS-TM-1
            DISPLAY "WS-TM-2.........: " WS-TM-2
            DISPLAY "WS-TM-3.........: " WS-TM-3
            DISPLAY " "            

            STOP RUN.
       END PROGRAM EX_UNSTRING_01.
