FROM node:16.13.2-alpine
WORKDIR /app
COPY package*.json tsconfig.json ./

## Typescript problems, i'll fix this later
# ARG APP_ENV
# RUN if [ "${APP_ENV}" = "prod" ] ; then npm i --only=production ; else npm i ; fi

RUN npm i
COPY . .
CMD ["npm", "start"]