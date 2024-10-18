# ECM-Tools
ECM-Tools for encoding or decoding .ECM files Error Code Modeler

Original Author: Neill Corlett

# Introduction

The ECM format allows you to reduce the size of a typical CD image file
(BIN, CDI, NRG, CCD, or any other format that uses raw sectors; results may
vary).

It works by eliminating the Error Correction/Detection Codes (ECC/EDC) from
each sector whenever possible.  The encoder automatically adjusts to
different sector types and automatically skips any headers it encounters.

The results will vary depending on how much redundant ECC/EDC data is
present.  Note that for "cooked" ISO files, there will be no reduction.

# Windows users
you can just drag and drop your a file in to the included Win32 executables ecm.exe to encode or unecm.exe to decode.
or
Compile ecm.c and unecm.c if necessary.

# Linux users
open terminal run make file to produce executables, run 'sudo make install' to install both files in to your path

### Usage
open terminal in the same path as the files that you desire to work with

##### to encode a file

        ecm filename.abc

##### to decode a file

        unecm filename.ecm
