      ******************************************************************
      * Author: Carlos Alberto Dornelles - cadcobol.com.br
      * Date: 27 de Janeiro de 2023
      * Purpose: Treinamento da linguagem COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_NIVEL88.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 OPCAO                PIC X(001).
          88 VOGAL             VALUE           "a","e","i","o","u"
                                               "A","E","I","O","U".
          88 CONSOANTE         VALUE           "b","c","d","f","g"
                                               "h","j" THRU "n"
                                               "p" THRU "t"
                                               "v" THRU "z"
                                               "B","C","D"
                                               "F","G","H"
                                               "J" THRU "N"
                                               "P" THRU "T"
                                               "V" THRU "Z".
          88 NUMERO            VALUE           "0" THRU "9".
          88 CRACTER-VALIDO    VALUE           "a" THRU "z"
                                               "A" THRU "Z"
                                               "0" THRU "9".


       PROCEDURE DIVISION.
       001-INICIO.
            DISPLAY "Insira um caractere ou um digito."
            ACCEPT OPCAO.

            EVALUATE TRUE
                WHEN VOGAL     DISPLAY "OPCAO " OPCAO " eh uma VOGAL."
                WHEN CONSOANTE DISPLAY "OPCAO " OPCAO 
                               " eh uma CONSOANTE."
                WHEN NUMERO    DISPLAY "OPCAO " OPCAO " eh um NUMERO."
                WHEN OTHER     DISPLAY OPCAO " INVALIDA !"
            END-EVALUATE

            STOP RUN.
       END PROGRAM EX_NIVEL88.
