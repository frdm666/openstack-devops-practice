FROM wordpress:latest

# Установка nano (CLI)
RUN apt-get update && apt-get install -y nano

# Изменение CSS в дефолтной теме Twenty Twenty-Five
RUN sed -i 's/body { color: black; }/body { color: blue; }/g' /usr/src/wordpress/wp-content/themes/twentytwentyfive/style.css
