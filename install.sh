if [ -d "/minecraft_temp/" ]; then
    mv /minecraft_temp/* /minecraft
    cd ../minecraft
    rmdir /minecraft_temp
fi
