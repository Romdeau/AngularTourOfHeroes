docker run -it --rm -w /opt -v c:/Users/thomas.taege/Documents/angular/AngularTourOfHeroes:/opt --name angularbuild node:alpine npm install --production
docker run -d --rm -w /opt -v c:/Users/thomas.taege/Documents/angular/AngularTourOfHeroes:/opt -p 3000:3000 --name angulartut node:alpine npm start
