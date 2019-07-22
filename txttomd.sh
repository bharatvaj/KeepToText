#!/bin/bash
_IFS=$IFS
for i in *; do IFS='.' read -ra ADDR <<< $i; mv "$i" "${ADDR[0]}.md"; done
IFS=_IFS

for i in *; do sed -i 's/☐/\n- [ ] /g' "$i"; sed -i 's/☑/\n- [x] /g' "$i"; done

# for i in *; do echo ' ' > "$i.md"; done
