      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      08/02/2023
      * Purpose:   Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-ITEM-01.
          05 WS-CODIGO        PIC 9(002) VALUE 06.
          05 WS-NOME          PIC X(006) VALUE 'CARLOS'.
       
       01 WS-ITEM-02.
          05 WS-CODIGO        PIC 9(002).
          05 WS-NOME          PIC X(006).

       77 WS-CONTEUDO         PIC X(100) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY ' '           
            DISPLAY '**************************************************'
            STRING
                'VALORES DE WS-ITEM-02 ANTES DA INSTRUCAO MOVE CORR. '
                'WS-CODIGO: ' WS-CODIGO OF WS-ITEM-02 '; '
                'WS-NOME:'    WS-NOME   OF WS-ITEM-02
                DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING  
            
            DISPLAY WS-CONTEUDO

            DISPLAY '*** INSTRUCAO MOVE CORR WS-ITEM-01 TO WS-ITEM-02.'
            MOVE CORR WS-ITEM-01 TO WS-ITEM-02

            STRING
                'VALORES DE WS-ITEM-02 APOS A INSTRUCAO MOVE CORR. '
                'WS-CODIGO: ' WS-CODIGO OF WS-ITEM-02 '; '
                'WS-NOME: '   WS-NOME   OF WS-ITEM-02
                DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO
            DISPLAY '**************************************************'
            DISPLAY ' '

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
