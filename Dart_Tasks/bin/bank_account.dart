class BankAccount {
  int _accountID;
  int _balance;

  BankAccount(int accountID): this.balance(accountID, 0); // first constructor

  BankAccount.balance(this._accountID, [this._balance = 0]); // second constructor (named constructor)

  void withdraw(int amount) {
    if (amount < 0) {
      throw 'Negative Amount';
    }

    if (amount <= _balance) {
      _balance -= amount;
      print("Successful Withdraw Transaction with $amount");
    }
    else {
      throw 'Insufficient Balance';
    }
  }

  void deposit(int amount) {
    _balance += amount;
    print("Successful Deposit Transaction with $amount");
  }

  void accountInfo() {
    print("\nAccount Info.");
    print("Account ID $_accountID");
    print("Balance $_balance");
  }
}

void main(List<String> arguments) {
  // With First Constructor
  print("First Constructor");
  try {
    var bank1 = BankAccount(111);
    bank1.deposit(1000);
    bank1.withdraw(500);
    bank1.deposit(150);
    bank1.accountInfo();
  }
  catch (e) {
    print(e);
  }

  // With Second Constructor
  print("\nSecond Constructor");
  try {
    var bank2 = BankAccount.balance(111, 1000);
    bank2.deposit(10500);
    bank2.withdraw(11500);
    bank2.deposit(1500);
    bank2.withdraw(2500);
    bank2.accountInfo();
  }
  catch (e) {
    print(e);
  }
}