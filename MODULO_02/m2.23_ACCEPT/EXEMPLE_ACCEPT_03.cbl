      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE_ACCEPT_03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-CAMPOS-AUXILIARES.
           05 WS-YYYYMMDD          PIC X(008).
           05 WS-YYMMDD            PIC X(006).
           05 WS-HHMMSS            PIC X(006).
           05 WS-HHMMSSCC          PIC X(008).
           05 WS-DIA-SEMANA        PIC 9(001).
           05 WS-ANO-DIA           PIC 9(005).
           05 WS-DAY-YYYYDDD       PIC 9(007).

       PROCEDURE DIVISION.
       001-INICIO.

            INITIALIZE  WS-CAMPOS-AUXILIARES
                        REPLACING   ALPHABETIC  BY SPACES
                                    NUMERIC     BY ZEROES

            ACCEPT WS-DAY-YYYYDDD   FROM DAY    YYYYDDD
            ACCEPT WS-YYYYMMDD      FROM DATE   YYYYMMDD
            ACCEPT WS-YYMMDD        FROM DATE
            ACCEPT WS-HHMMSS        FROM TIME
            ACCEPT WS-HHMMSSCC      FROM TIME
            ACCEPT WS-DIA-SEMANA    FROM DAY-OF-WEEK
            ACCEPT WS-ANO-DIA       FROM DAY

            DISPLAY "WS-DAY-YYYYDDD    - " WS-DAY-YYYYDDD
            DISPLAY "WS-YYYYMMDD       - " WS-YYYYMMDD
            DISPLAY "WS-YYMMDD         - " WS-YYMMDD
            DISPLAY "WS-HHMMSS         - " WS-HHMMSS
            DISPLAY "WS-HHMMSSCC       - " WS-HHMMSSCC
            DISPLAY "WS-DIA-SEMANA     - " WS-DIA-SEMANA
            DISPLAY "WS-ANO-DIA        - " WS-ANO-DIA

            STOP RUN.
       END PROGRAM EXEMPLE_ACCEPT_03.
