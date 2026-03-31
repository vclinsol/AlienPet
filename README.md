# AlienPet

On-chain experiment for state-based asset generation.

## Overview
Minimalist implementation of a minting system with weighted outcome logic. Built for L1 testnet stress testing and contract interaction benchmarking.

## Deployment
- Compiler: 0.8.19
- EVM: London/Paris
- Environment: Injected Provider (EVM Compatible)

## Interface
- `mint()`: Generates random value and updates global supply.
- `getVault(address)`: View function for user balance.
