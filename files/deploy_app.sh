#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s app. 
  This is the cat of the day. Just look at them!
  Brought by ACME
  <center><img src="https://lh3.googleusercontent.com/pw/ACtC-3c209um-vnjDwRpdEBGlw1CW-t5AtFLTGXGBKeyaIRaL69frrJ9ii5yCn7_288sRGRrPoYAjk6LtIjlbDILRQ955YtACUr5fI0YKIBZfWBEoS3ZDdWuFPY1NTPZP46dgStqgYXh4egx_SFZzZcWPNdv=w1693-h1271-no?authuser=0"></img></center>
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
