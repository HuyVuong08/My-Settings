#!/bin/bash

#Update
sudo apt-get -y update

#-------------------------------------------

#Install Curl
sudo apt-get install -y curl

#-------------------------------------------

#Download Icon Themes

curl -O https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MTM5NDc2MzgiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImQ5NzMzZWFhZmU4MGViZGVjY2E2NmFmNjAxMWE5NzE1NzBjZWM5NDI2NTc3YzM3NmZmMjNiNDM4MTkxZDk3NDljZTdjZTdkYmNmZGY5MzA3MTU1ZjQ0MWE4YWZiODQ3OTQ3NWNmY2ZhNTcwZDdiZDU0NjZhNTEzNTYwY2Y4ODZmIiwidCI6MTYxNDMzNjMwNCwic3RmcCI6ImFjODQ1Zjk1Y2I1YjQyNGRjODNkNDEyNDJkMTExOWI1Iiwic3RpcCI6IjEyMy4yMC43LjIyMCJ9.RGC__mJM73u4OEcA5kRKThQO2bBhbamgI7VOWP-3Qlk/Mkos-Big-Sur.tar.xz | sudo tar -xj
