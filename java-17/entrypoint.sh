cd /home/container

echo "Starting container, script by vk.com/securityerror for MineHosting.ru"

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
# echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}