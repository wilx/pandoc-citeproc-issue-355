#!/bin/sh

set -x

diff -ud ./iso690-numeric-cs.csl ./iso690-numeric-cs-wilx.csl

pandoc -f markdown -t native --bibliography citace.yaml --csl ./iso690-numeric-cs.csl -o original.native test.md

pandoc -f markdown -t native --bibliography citace.yaml --csl ./iso690-numeric-cs-wilx.csl -o modified.native test.md

diff -ud original.native modified.native | wdiff -td



diff -ud ./iso690-numeric-cs.csl ./iso690-numeric-cs-no-space.csl

pandoc -f markdown -t native --bibliography citace.yaml --csl ./iso690-numeric-cs-no-space.csl -o no-space.native test.md

diff -ud original.native no-space.native | wdiff -td
