contract Bank {
    
    string public name;
    string public symbol;
    uint8 public decimals;
    
    mapping(address => uint256) public balance;
    
    event Transfer(address from, address to, uint256 value);

    function Bank(uint256 initialBalance, string tokenName, string tokenSymbol, uint8 decimalUnits) {
        balance[msg.sender] = initialBalance;
        name = tokenName;
        symbol = tokenSymbol;
        decimals = decimalUnits;
    }
    
    function transfer(address to, uint256 value) {
        if (balance[msg.sender] < vaue) throw;
        if (balance[to] + value < balance[to]) throw;
        balance[msg.sender] -= value;
        balance[to] += value;
        Transfer(msg.sender, to, value);
    }
    
}