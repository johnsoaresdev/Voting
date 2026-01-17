# Sui Voting System (Move 2024)

A decentralized voting smart contract built on the **Sui Blockchain**, implemented using the **Move 2024 edition**.

This project demonstrates core Sui concepts such as **shared objects**, **on-chain events**, and **CLI-based interaction**, making it ideal for learning and portfolio purposes.

---

## ✨ Features

- **Shared Objects**
  - Polls are created as shared objects using `transfer::share_object`, enabling global access.

- **On-chain Events**
  - Emits a `VoteEvent` on every vote, allowing off-chain indexing and real-time tracking.

- **Simple & Dynamic Polls**
  - Create polls with a question and two customizable options.

- **Move 2024 Edition**
  - Uses the latest Move language edition supported by Sui.

---

## 📦 Smart Contract Overview

Each poll contains:
- A question
- Two voting options
- Vote counters for each option

Anyone can:
- Create a poll
- Vote on an existing poll

---

## 🛠 How to Interact (Sui CLI)

### 1️⃣ Create a Poll

```bash
sui client call \
  --package <PACKAGE_ID> \
  --module voting \
  --function create_poll \
  --args "Your Question" "Option A" "Option B" \
  --gas-budget 10000000
```

This command creates a new poll and shares it on-chain.

---

### 2️⃣ Cast a Vote

```bash
sui client call \
  --package <PACKAGE_ID> \
  --module voting \
  --function vote \
  --args <POLL_OBJECT_ID> <1_OR_2> \
  --gas-budget 10000000
```

- Use `1` to vote for **Option A**
- Use `2` to vote for **Option B**

Each vote emits a `VoteEvent`.

---

## 📡 Events

### VoteEvent
Emitted every time a vote is cast.

Example use cases:
- Off-chain analytics
- Frontend real-time updates
- Indexing with Sui indexers

---

## 🚀 Deployment (Mainnet)

- **Network:** Sui Mainnet  
- **Package ID:**  
```
0x780f03675fec5aa405133cb7629d25f355f186951453b353ed4337882f21c75c
```

---

## 📚 Learning Goals

This project was built to practice:
- Shared objects
- Transaction entry functions
- Event emission
- CLI-based interaction
- Clean Move module design

---

## 📄 License

MIT License
