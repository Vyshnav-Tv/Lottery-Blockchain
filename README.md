Lottery Contract
This is a decentralized lottery application built on the Ethereum blockchain using Solidity. Participants can enter the lottery by sending 1 ether to the contract. Once there are at least 3 participants, the manager can trigger the selection of a random winner, who will receive the entire balance of the contract.

Features
Decentralized Lottery: Ensures transparency and fairness in selecting a winner.
Random Winner Selection: Uses the blockhash of the previous block, the current timestamp, and the number of participants to generate a pseudo-random number.
Manager-Only Functions: Only the manager can view the contract balance and pick a winner.
Contract Details
Manager: The address that deploys the contract becomes the manager.
Players: An array of participants who have entered the lottery by sending 1 ether.
Winner: The address of the selected winner.
