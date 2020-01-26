# scsa-monorepo

A collection of all scsa-\* repositories

## Prerequisites

-   Z shell
-   Node.js
-   npm

## Install

At first the bootstrapping scripts, within the `.bootstrap` folder need some privileges. The following snippet will enable execution rights.

```zsh
chmod +x ./.bootstrap/*.sh
chmod +x ./.bootstrap/**/*.sh
```

In order to install all dependencies an symlinking the internal ones, enter the following lines.
```zsh
npm run bootstrap
```

Now you are free to run the applications in dev mode, by entering `npm run watch` or build the application by entering `npm run build && npm start`.
