# Sui Voting System (Move 2024)

A decentralized voting smart contract built on the Sui Blockchain using the **Move 2024 edition**. 

## Features
- **Shared Objects**: Uses `transfer::share_object` allowing global interaction.
- **On-chain Events**: Emits `VoteEvent` for real-time tracking.
- **Dynamic Content**: Create custom polls with two options.

## How to Interact (via CLI)

### 1. Create a Poll
```bash
sui client call --package <PACKAGE_ID> --module voting --function create_poll --args "Your Question" "Option A" "Option B" --gas-budget 10000000


2. Cast a Vote
sui client call --package <PACKAGE_ID> --module voting --function vote --args <POLL_OBJECT_ID> <1_OR_2> --gas-budget 10000000

Deployed Address (Mainnet)
Package ID: 0x780f03675fec5aa405133cb7629d25f355f186951453b353ed4337882f21c75c