#!/bin/bash

function foo {
  curl "http://www.leipzig.de/freizeit-kultur-und-tourismus/spielplaetze/?tx_ewerkaddressdatabase_pi%5B__widget_0%5D%5BcurrentPage%5D=$1"
}

FOO_INDEX=1

while true ; do
  # TODO danach zu grep'en reicht nicht, steigt bei seite 12 aus, max meint es sind 31 ...
  foo $FOO_INDEX | grep -q "address-list-item address-list-item-teaser" || break
  FOO_INDEX=$(( FOO_INDEX + 1 ))
done
