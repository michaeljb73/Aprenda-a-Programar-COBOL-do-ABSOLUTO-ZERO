      ******************************************************************
      * Author: Michael J. Bezerra - Cobol do Zero
      * Date:
      * Purpose: Treinamento curso COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_PERFORM_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.

      * PERFORM P003-INICIO THRU P003-FIM.
      * PERFORM P001-INICIO THRU P001-FIM.
      * PERFORM P002-INICIO THRU P002-FIM.
      * PERFORM P004-INICIO THRU P004-FIM.

       PERFORM S2.
       PERFORM S1.
       PERFORM S3.

       S1 SECTION.
           P001-INICIO.
               DISPLAY "PARAGRAFO 1".
           P001-FIM.

           P002-INICIO.
               DISPLAY "PARAGRAFO 2".
           P002-FIM.

       S2 SECTION.
           P003-INICIO.
               DISPLAY "PARAGRAFO 3".
           P003-FIM.

       S3 SECTION.
           P004-INICIO.
                STOP RUN.
           P004-FIM.

       END PROGRAM EXEMPLE_PERFORM_01.
