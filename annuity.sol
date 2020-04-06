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
uint recommendedPayment = 0.003;
uint monthlyWithdraw = 1;
enum Status {deposit, confirm, withdraw}
Status public status;

struct Payment {
	uint timestamp;
	uint amount;
}

Payment[] payments;
uint totalPayments; 

function deposit() public payable
	{
	require(msg.value > 0);
	payments.push(Payment(block.timestamp, msg.value));
	totalPayments += 1;
	}
	
function withdraw() public 
	{
	require(status == Status.withdraw);
	
	}
}
