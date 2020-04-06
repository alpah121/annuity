//annuity.sol
/*
<li>deposit</li>
<li>withdraw</li>
<li>constructor</li>
<li>isOnTrack</li>
<li>borrow</li>
<li>deathOccured</li>
<li>highRiskWithdraw</li>
<li>lowRiskWithdraw</li>
<li>calculateSplit</li>
<li>settings</li>
*/


pragma ^0.4.4;

contract annuity {
uint monthlyWithdraw = 1;
int totalInAccount = 0;
uint term;
enum Status {deposit, confirm, withdraw}
Status public status;
address owner payable;
address manager payable;
manager = ;
struct Payment {
	uint timestamp;
	uint amount;
}

Payment[] payments;
uint totalPayments; 

function deposit() public payable
	{
	require(status == Status.deposit);
	require(msg.value > 0);
	payments.push(Payment(block.timestamp, msg.value));
	totalPayments += 1;
	totalInAccount += msg.value;
	}
	
function withdraw() public 
	{
	require(msg.sender == owner);
	require(status == Status.withdraw);
	require(totalInAccount >= monthlyWithdraw);
	totalInAccount -= monthlyWithdraw;
	owner.transfer(monthlyWithdraw);
	}
	
constructor(uint _term, address _owner) public payable 
	{
	require(msg.sender == manager);
	require(msg.value > 0);
	require(_term >= 12);
	createdOn = now;
	term = _term;
	endOfTerm = now + (term * 1 minutes);
	owner = _owner;
	payments.push(Payment(block.timestamp, msg.value));
	totalPayments += 1;
	totalInAccount += msg.value;
	status = Status.deposit;
	}
	
function confirm(address _owner)
	{
	require()	
	}
}
