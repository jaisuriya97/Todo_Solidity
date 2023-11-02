## Step 1: Install Truffle
- ### Error: 
            I use  ```npm install -g truffle@5.0.2 ``` so,I got a Error 
             ```
            Error: Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/bare-box/master/truffle-box.json. Got error: . Please check the format of the requested resource.

             ```

- ### Solution:
             ```
            npm init
            npm i truffle
            ./node_modules/.bin/truffle init
            
             ```
## Step 2:Install Dependencies

- ``` npm i chai ```
- ``` npm i chai-as-promised ```
- ``` npm i chai-bignumber ```
- ``` npm i lite-server ```
- ``` npm i nodemon ```
- ``` npm i @truffle/contract ```

## Step 3:

- Create a new file called TodoList.sol in contracts Folder


## Notes
- ### To compile use truffle compiler
    - if version erroe use ```pragma solidity ^0.5.2;``` => ``` pragma solidity >=0.5.2; ``` to solve