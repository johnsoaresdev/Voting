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