FROM cypress/base:14.15.4
COPY cypress.config.ts .
COPY tsconfig.json .
COPY package.json .
COPY package-lock.json .
COPY ./cypress/ cypress
RUN npm ci --production
ENTRYPOINT ["npx", "cypress", "run", "--config-file"]