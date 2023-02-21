      ******************************************************************
      * Author:    Aprenda a Programar COBOL do ABSOLUTO ZERO!
      * Date:      08/02/2023
      * Purpose:   Aprender COBOL - Michael J. Bezerra
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX_PERFORM_THRU_03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.

            A-PARA.
            PERFORM DISPLAY 'IN A-PARA'
            END-PERFORM.
            PERFORM C-PARA THRU E-PARA.

            B-PARA.
            PERFORM DISPLAY 'IN B-PARA'
            STOP RUN
            END-PERFORM.

            C-PARA.
            PERFORM DISPLAY 'IN C-PARA'
            END-PERFORM.

            D-PARA.
            PERFORM DISPLAY "IN D-PARA"
            END-PERFORM.

            E-PARA.
            PERFORM DISPLAY "IN E-PARA"
            END-PERFORM.
     
           
      *     CONTINUAR EM:
      *     https://www.tutorialspoint.com/cobol/cobol_quick_guide.htm

       END PROGRAM EX_PERFORM_THRU_03.
