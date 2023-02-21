      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      22/02/2023
      * Purpose:   Ler arquivo CSV.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCSV.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

      * INSTRUÇÃO ASSIGN: Indica saída para o disco, fita, console...   
      * Com apenas o nome do arquivo, o mesmo será criado
      * na pasta de onde o executável é chamado.
      * Caso se passe o full path, ele será criado no local indicado.
      * Para fins didaticos, o executavel esta sendo chamado da pasta
      * raiz do projeto, criando, desta forma, o arquivo na pasta 
      * src\assets.       
            SELECT ARQCSV ASSIGN TO
            'src\assets\ARQCSV.csv'
            ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
      
      * FD-> FILE DESCRIPTION 
       FD ARQCSV.
       01 REG-CSV          PIC X(50).

       WORKING-STORAGE SECTION.
      
      * EOF - END OF FILE
       77 WS-EOF           PIC X(01) VALUE SPACE.
      
      * LAYOUT DOS CAMPOS
       01 WS-CSV.
          03 CSV-NOME         PIC X(10).
          03 FILLER           PIC X      VALUE ';'.
          03 CSV-ENDERECO     PIC X(15).
          03 FILLER           PIC X      VALUE ';'.
          03 CSV-CIDADE       PIC X(10).
          03 FILLER           PIC X      VALUE ';'.
          03 CSV-UF           PIC X(02).
          03 FILLER           PIC X      VALUE ';'.
          03 CSV-FONE         PIC X(08).
          03 FILLER           PIC X      VALUE ';'.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            
            MOVE 'I' TO WS-EOF

            OPEN OUTPUT ARQCSV

      *     LOOP TIPO WHILE
      *     (FAÇA ATÉ QUE WS-EOF SEJA F)
      *     WS-EOF = 'F' retorna falso
            PERFORM UNTIL WS-EOF = 'F'
                 DISPLAY 'Informe o nome: '
                 ACCEPT CSV-NOME

                 DISPLAY 'Informe o endereco: '
                 ACCEPT CSV-ENDERECO

                 DISPLAY 'Informe a cidade: '
                 ACCEPT CSV-CIDADE

                 DISPLAY 'Informe a UF: '
                 ACCEPT CSV-UF

                 DISPLAY 'Informe o telefone: '
                 ACCEPT CSV-FONE

                 MOVE WS-CSV TO REG-CSV

                 WRITE REG-CSV

                 DISPLAY 'Tecle <F> para finalizar'
                 ACCEPT WS-EOF

            END-PERFORM

            CLOSE ARQCSV

            GOBACK.
       END PROGRAM PROGCSV.
