# CONTRIBUTING

Contributions are welcome to this repository 

We welcome new problems/exercises and also solutions.

## 01. HOW TO CONTRIBUTE

The recommended way to contribute is as follows:

1. Fork this repository 
2. Add changes desired (see 03 and 04 below)
3. Create a pull request

## 02. FILE FORMATTING 

This repository should contain files in ASCII format. EBCDIC translation should
be handled by FTP upload or the use of the AWS tape that contains a dump of the
PDS datasets.

## 03. ADDING NEW PROBLEM EXERCISES

1. Create a simple text file (with no extension) in the PROG.QUIZ directory with
   a unique name that complies to the naming restrictions of a PDS member
   (starts with a letter and is alphanumeric).  Please do not use any special
   characters (#, @ or $)

2. Add an entry listing the filename and the description to the 00README in the
   PROG.QUIZ directory.

## 04. ADDING SAMPLE SOLUTIONS TO PROBLEM/EXERCISES

1. Choose the problem/exercise you wish to solve from those listed in the
   PROG.QUIZ directory

2. Solve the problem by writing a programme in your preferred language and
   ensuring that the programme both compiles on MVS 3.8J (either standard TK4-
   or with the SYSCPK additions) and that the programme file contains the
   appropriate JCL at the top of the file to execute correctly

3. Add the file to the appropriate language directory:

        PROG.ALGOL
        PROG.ASM
        PROG.BASIC
        PROG.COBOL
        PROG.FORTRAN PROG.PASCAL PROG.PL1 PROG.PL360 PROG.QUIZ PROG.REXX
        PROG.RPG PROG.SIMULA PROG.SNOBOL

4. Commit file changes to your forked repo and 


## 05. HELP I'M NEW TO GITHUB


Any issues, please raise a issue or contact me by email at mvs at
s370.org


## 06. CORRECTIONS TO ERRORS IN PROGRAMS/JCL

If you find any error in either the programs of JCL please do one of the
following: 

1. Submit a GitHub ISSUE by clicking the ISSUES tab and click NEW ISSUE and tell
   us as much as you can about the issue and if possible any suggested changes.

2. (EVEN BETTER) Fork repo, correct the program/JCL as needed and submit a PULL
   REQUEST to include your changes.


## ALTERNATIVE SOLUTIONS

If you feel you have a better or innivative solution to any of the problems that
have already been solved ... we would still like to see your solution(s).

I would suggest you create a new file as per section 04 (above) but rename your
file adding a number 2 (or a 3 etc) to the LAST character of the filename.

Please remember that the filename wil actually end up as a PDS member name so
your are limited to a length of 8 characters - if this exceeds the 8 characters
allowed then remove the trailing last character before adding your number)
