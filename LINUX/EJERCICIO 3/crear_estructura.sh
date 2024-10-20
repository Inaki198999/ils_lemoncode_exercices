#!/bin/bash


DEFAULT_TEXT="Que me gusta la bash!!!!"


TEXT="${1:-$DEFAULT_TEXT}"


mkdir -p foo/dummy foo/empty


echo "$TEXT" > foo/dummy/file1.txt
touch foo/dummy/file2.txt


cat foo/dummy/file1.txt > foo/dummy/file2.txt


mv foo/dummy/file2.txt foo/empty/
