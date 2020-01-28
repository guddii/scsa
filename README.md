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
npm install
npm run bootstrap
```

Now you are free to build and run the applications by entering `npm run build && npm start`.
