import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";


contract PIXCToken is ERC20, Ownable{
   string public name;
   string public symbol;
   uint32 public decimals;

   /**
   * @dev assign totalSupply to account creating this contract */  constructor() public {
      symbol = "PIXC";
      name = "Pixcoin";
      decimals = 18;
      _mint(owner(),1000000000 * (uint256(10) ** decimals));

   }

}