#!/bin/bash
if [ $1 = "add" ]; then
cat << END > ~/.snip/$2
$3
END
exit 0
fi
if [ $1 = "del" ]; then
if [ ! -f ~/.snip/$2 ]; then
echo "Snip Command ($2) not found!"
exit 1
else
rm -f ~/.snip/$2
exit 0
fi
fi
if [ $1 = "list" ]; then
ls ~/.snip
exit 0
fi
if [ ! -f ~/.snip/$1 ]; then
echo "Snip Command ($1) not found!"
exit 1
else
bash ~/.snip/$1
fi
