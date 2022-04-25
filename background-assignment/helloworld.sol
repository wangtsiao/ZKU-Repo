// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 < 0.9.0;

contract HelloWorld {
    
    // Declares a state variable called storedData of type uint (unsigned integer of 256 bits). 
    // We can think of it as a single slot in a database that everyone can query and alter by 
    // calling functions of the code that manages the database. 
    uint storedData;

    // Anyone could call storeNumber again with a different value and overwrite storedData, 
    // but the storedData is still stored in the history of the blockchain. 
    function storeNumber(uint x) public {
        storedData = x;
    }

    // Since this function don't have a side-effect, it should be declared as view.
    // Everyone can invoke retrieveNumber to get storedData.
    function retrieveNumber() public view returns (uint) {
        return storedData;
    }
}
