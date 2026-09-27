@echo off
cd /d "Z:\public\Pato\Dashboards\Comex"
start "" http://localhost:4173
call npx serve . -l 4173
