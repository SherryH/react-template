This repo contains the following basic setup for a React project. 
Like Create-React-Apps, it allows you to scaffold a React project with only the dependencies listed in `package.json` by running one command.
CSS loader and Style loader are not included because I like using css-in-js for styling. Feel free to customise for your own purpose.

- Webpack 4
- Babel 7
- Eslint (Airbnb style)
- Jest

# Usage

## Setup the script

1. Clone this template repo to local machine
1. Create an alias on the shells config file e.g. `~/.bash_profile` or `~/.zshrc`

```
alias create-react='bash {PATH_TO_REPO}/create-react-template.sh'
```

3. Restart terminal

## Create a new React repo

4. Create a new project folder on your desired path
5. `cd` inside the new project folder
6. Run `create-react new-project "Project Title"`
   Substitude `new-project` with your npm project name and `Project Title` with the desired title on index.html
