#!/bin/bash

dialog --checklist "Välj dina favorit-textredigerare" 10 60 3 vi \
 "Texteditorn vi" off emacs "Texteditorn EMACS" off nano "Texteditorn nano" off 2> /tmp/checkbox
Valen=`cat /tmp/checklist`
