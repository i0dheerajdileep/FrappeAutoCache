#!/bin/bash

while inotifywait -e close_write your_html_directory/*.html; do
    bench clear-cache
done

