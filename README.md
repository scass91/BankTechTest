# Bank tech test

[![Build Status](https://travis-ci.com/scass91/BankTechTest.svg?branch=master)](https://travis-ci.com/scass91/BankTechTest)
[![Coverage Status](https://coveralls.io/repos/github/scass91/BankTechTest/badge.svg?branch=master)](https://coveralls.io/github/scass91/BankTechTest?branch=master)

# My Approach

1. I wrote out the user stories from the acceptance criteria
2. I diagrammed what I would need in order to separate class and responsibility
3. After that, I attempted to TDD my code in as simple a fashion as possible


# User Stories

```
As a Customer,
So I can store my hard earned cash,
I would like to be able to deposit money in a bank account

As a Customer,
So I can spend my hard earned cash,
I would like to be able to withdraw my money from my bank account

As a Customer,
So I can see how much money I have,
I want to be able to check my balance

As a Customer,
So I can track my own spending,
I want to be able to see what date my balance changed

As a Bank Manager,
So I can keep the bank in profit,
I want all bank accounts to start with a balance of 0
```

-----------------
Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
