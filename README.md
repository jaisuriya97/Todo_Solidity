# UNDER CONSTRUCTION 🚧


## Step 1: Install Truffle
- ### Error: 
            I use  "npm install -g truffle@5.0.2 " so,I got a Error
  
             "
            Error: Error: Error: Error making request to https://raw.githubusercontent.com/truffle-box/bare-box/master/truffle-box.json. Got error: . Please check the format of the requested resource.

             "

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
- ``` npm i @truffle-contract ```

## Step 3:

- Create a new file called TodoList.sol in contracts Folder


## Notes
- ### To compile use truffle compiler
    - if version erroe use ```pragma solidity ^0.5.2;``` => ``` pragma solidity >=0.5.2; ``` to solve


    ### Error:
        web3 not defind
    ### Solution

    ``` 
                App = {
            loading: false,
            contracts: {},
            web3Provider: null, // Add a web3Provider property

            load: async () => {
                await App.loadWeb3();
                await App.loadAccount();
                await App.loadContract();
                await App.render();
            },

            loadWeb3: async () => {
                if (typeof web3 !== 'undefined') {
                // Use the injected web3 provider
                App.web3Provider = web3.currentProvider;
                web3 = new Web3(web3.currentProvider);
                } else if (window.ethereum) {
                // Modern dapp browsers
                window.web3 = new Web3(ethereum);
                App.web3Provider = ethereum;
                try {
                    // Request account access if needed
                    await ethereum.request({ method: 'eth_requestAccounts' });
                } catch (error) {
                    // User denied account access...
                    console.error('User denied account access');
                }
                } else {
                window.alert('Please connect to MetaMask.');
                }
            },

            loadAccount: async () => {
                // Set the current blockchain account
                const accounts = await web3.eth.getAccounts();
                App.account = accounts[0];
            },

            // Rest of your code remains the same
            // ...

            // Make sure to call App.load() when the DOM is ready
            };

            $(document).ready(() => {
            App.load();
            });


    ```

    ### loadAccount

    ```
            loadAccount: async () => {
        // Set the current blockchain account
        const accounts = await web3.eth.getAccounts();
        App.account = accounts[0];
        console.log('Current Account:', App.account);
        },


    ```
