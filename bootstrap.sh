#!/bin/bash

mkdir func
faas new --lang dockerfile iftop
faas build -f iftop.yml && faas deploy -f iftop.yml
