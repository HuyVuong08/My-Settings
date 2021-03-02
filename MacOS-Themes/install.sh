#!/bin/bash

#Update
#sudo apt-get update -y
#
##-------------------------------------------
#
##Install Curl
#sudo apt-get install -y curl

#-------------------------------------------

#Install Icon Themes

curl --header 'Host: dllb2.pling.com' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --referer 'https://www.pling.com/dl?file_id=1614180906&file_type=application/x-xz&file_name=01-WhiteSur-20210224152940.tar.xz&file_size=3032920&has_torrent=0&project_id=1405756&link_type=download&is_external=false&external_link=null' --cookie '_ga=GA1.2.732045892.1614331769; _gid=GA1.2.1149642976.1614678256' --header 'Upgrade-Insecure-Requests: 1' 'https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MTQxODA5MDYiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjBkZWRlNWE4N2U1YTI1ZThiOGU4NmJkODRmOWZiODAxMGNmMjc5NTA3ODY0M2YwNTYxYzM4N2RhZWFjNzY3YWE1YWE0YWFkY2M5NTkwMTM0OTAxMDBkZGUxNDMyMWIxZWM2MjQ4ZWQ0NTc4NTBjYTkzZGZhOTY0NWM5ZGRhYWQzIiwidCI6MTYxNDY4NDU3NCwic3RmcCI6IjdhNjQ1YzEwNmI2NzFiYmI2YTZkNjNkODc5MzZlN2YwIiwic3RpcCI6IjEyMy4yMS45MC4xNiJ9.6UkK8MQm83eQtxhQU3hhFqMoR80G7Mqpow9_35sN_Tk/01-WhiteSur-20210224152940.tar.xz' --output 'WhiteSur.tar.xz'
sudo tar -xJf WhiteSur.tar.xz -C /usr/share/icons/
rm WhiteSur.tar.xz

#-------------------------------------------

#Install GTk Themes

#Install Dark Themes
curl --header 'Host: dllb2.pling.com' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --referer 'https://www.gnome-look.org/dl?file_id=1612838129&file_type=application/x-xz&file_name=WhiteSur-dark.tar.xz&file_size=228364&has_torrent=0&project_id=1403328&link_type=download&is_external=false&external_link=null' --cookie '_ga=GA1.2.732045892.1614331769' --header 'Upgrade-Insecure-Requests: 1' 'https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MTI4MzgxMjkiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjQzNDkzNzQ2OTBiMjU4OGQ1OTIxMGQzZDZmZDM0MjY0MzRmN2FmNTM3YmIxMjBlZDE1NTk0MjRhMjg3OTU1YTg4OTAxM2VlZDczNjI5M2RiYzhlYTM5ZjY2OWE5ZjBlZjc0NGZmMDAwZGJlZmQ4NzY5N2RmMTBmZjBlYjdjZWM0IiwidCI6MTYxNDY4MTIxMCwic3RmcCI6IjljYjZiZDgzMjY3ZDFmODgzZGM4OWE0MjUyMDA4NjlmIiwic3RpcCI6IjEyMy4yMS45MC4xNiJ9.TVeOiIsqh94--fMGfelFsdkaNbsgr6BsOkNdKWn5Qis/WhiteSur-dark.tar.xz' --output 'WhiteSur-dark.tar.xz'
sudo tar -xJf WhiteSur-dark.tar.xz -C /usr/share/themes/
rm WhiteSur-dark.tar.xz

#Install Light Themes
curl --header 'Host: dllb2.pling.com' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --referer 'https://www.gnome-look.org/dl?file_id=1612837513&file_type=application/x-xz&file_name=WhiteSur-light.tar.xz&file_size=233316&has_torrent=0&project_id=1403328&link_type=download&is_external=false&external_link=null' --cookie '_ga=GA1.2.732045892.1614331769' --header 'Upgrade-Insecure-Requests: 1' 'https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MTI4Mzc1MTMiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjIzMDBkYzc0MjdlYTQyZTU5NjMwNGM0ZWJhOTZhZGNlZDFiNjFlMGNjNmMxYzE1MmViMzA4MDZjNzI4ZGVmOThlNDMxYTI3N2ZlMTJkNDA2ZjM0N2Y5MjcwNzAxNjI2ZmVjNDc0ZDY0N2NjMzhmMDZkMjYwMzhkMjllN2VmNTJmIiwidCI6MTYxNDY4MTI3NSwic3RmcCI6IjljYjZiZDgzMjY3ZDFmODgzZGM4OWE0MjUyMDA4NjlmIiwic3RpcCI6IjEyMy4yMS45MC4xNiJ9.BQWYIRAXL_kE_Z2XnAMOZIVYfJRhC1p2aDxOqV6JN5I/WhiteSur-light.tar.xz' --output 'WhiteSur-light.tar.xz'
sudo tar -xJf WhiteSur-light.tar.xz -C /usr/share/themes/
rm WhiteSur-light.tar.xz
