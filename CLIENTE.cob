       IDENTIFICATION DIVISION.
           PROGRAM-ID. CLIENTES.
       ENVIRONMENT DIVISION.
      ******************************************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  : LUCCAS BUENO DE LIMA
      ******************************************************************
       DATA DIVISION.
           FILE SECTION.
           WORKING-STORAGE SECTION.

           77 WRK-OPCAO        PIC X(01).
           77 WRK-MODULO       PIC X(25).
           77 WRK-TECLA        PIC X(01).

           SCREEN SECTION.
           01 TELA.
               05 LIMPA-TELA.
                   10 BLANK SCREEN.

                   10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                       BACKGROUND-COLOR 2.
                   10 LINE 01 COLUMN 4 PIC X(20)
                       BACKGROUND-COLOR 2 FROM 'SISTEMA DE CLIENTES'.

                   10 LINE 02 COLUMN 1  PIC X(25) ERASE EOL
                       BACKGROUND-COLOR 1.
                   10 LINE 02 COLUMN 10 PIC X(25)
                       BACKGROUND-COLOR 1 FROM WRK-MODULO.

           01 MENU.
               05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
               05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
               05 LINE 09 COLUMN 15 VALUE '3 - ALTERACAO'.
               05 LINE 10 COLUMN 15 VALUE '4 - EXCLUSAO'.
               05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
               05 LINE 12 COLUMN 15 VALUE 'X - SAIR'.
               05 LINE 13 COLUMN 15 VALUE 'OPCAO:'.
               05 LINE 13 COLUMN 22 USING WRK-OPCAO.

       PROCEDURE DIVISION.
      ******************************************************************
      * PRINCIPAL SECTION
      ******************************************************************
       0001-PRINCIPAL SECTION.

           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.

           STOP RUN.
      ******************************************************************
      * INICIAR SECTION
      ******************************************************************
       1000-INICIAR SECTION.
           DISPLAY TELA.
           ACCEPT MENU.

      ******************************************************************
      * PROCESSAR SECTION
      ******************************************************************
       2000-PROCESSAR SECTION.

           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5001-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN 'X'
                   CONTINUE
               WHEN OTHER
                   DISPLAY 'ENTRE COM UMA OPCAO VALIDA' AT 1515
           END-EVALUATE.

      ******************************************************************
      * FINALIZAR SECTION
      ******************************************************************
       3000-FINALIZAR SECTION.
           CONTINUE.

      ******************************************************************
      * INCLUIR SECTION
      ******************************************************************
       5001-INCLUIR SECTION.
           MOVE 'MODULO - INCLUSAO' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 1620.
