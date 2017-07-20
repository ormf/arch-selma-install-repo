#!/bin/bash
for dir in cl-collider cl-coroutine cm cm-incudine cm-utils fomus fudi incudine orm-utils sc-osc scheduler simple-utils; \
    do rsync -av ~/work/programmieren/lisp/$dir ./cl-pkgs/; \
    done
