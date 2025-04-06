#creer une image de node 18
FROM node:18
#creer un workdir
WORKDIR /usr/src/app
#copier le fichier package .json dans le path relatif
COPY package.json  .
#installer les dependencies
RUN npm install --force
#copier le reste des fichiers 
COPY . .
# 
EXPOSE 3001
#
CMD [ "npm","start" ]