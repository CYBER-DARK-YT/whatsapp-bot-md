FROM node:lts-buster

RUN git clone https://github.com/CYBER-DARK-YT/Dark-Bot.git /root/LyFE/

WORKDIR /root/LyFE/

RUN apt-get update && \

  apt-get install -y \

  ffmpeg \

  imagemagick \

  webp && \

  apt-get upgrade -y && \

  rm -rf /var/lib/apt/lists/*

RUN npm install -g npm@8.11.0

RUN npm install -g nodemon 

RUN npm install -g forever

RUN npm i cfonts

RUN npm i -g heroku

CMD ["npm", "start"]

CMD ["node", "index.js"]



