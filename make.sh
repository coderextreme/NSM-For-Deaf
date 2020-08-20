#!/bin/sh
# rm -r frames mp4s primes videos.txt html_primes html_nsm
echo mkdr
mkdir -p frames mp4s primes html_primes html_nsm
echo deaf.pl
perl deaf.pl < EnglishNSM.txt | sh | sort -u | sh
echo nsm.pl
perl nsm.pl < EnglishNSM.txt > interface.html
echo deaf2.pl
perl deaf2.pl < Eng2.txt | sh | sort -u | sh
echo nsm2.pl
perl nsm2.pl < Eng2.txt > index.html
echo getglyphogram.py
cat primes.txt | tr ' ' '\0' | xargs -0 python getglyphogram.py
echo goddard.py
cat primesandphrases.txt | tr '\n' '\0' | xargs -0 python goddard.py
