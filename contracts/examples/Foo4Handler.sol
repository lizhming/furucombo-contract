pragma solidity ^0.6.0;

import "./Foo4.sol";
import "../handlers/HandlerBase.sol";

contract Foo4Handler is HandlerBase {
    event FooBytes32(bytes32 a);
    event FooUint256(uint256 b);

    function getContractName() public pure override returns (string memory) {
        return "Foo3Handler";
    }

    function bar(address to) external payable returns (bytes32 ret) {
        ret = Foo4(to).bar();
    }

    function barUint(address to) external payable returns (uint256 ret) {
        ret = Foo4(to).barUint();
    }

    function bar1(address to, bytes32 a)
        external
        payable
        returns (bytes32 ret)
    {
        ret = Foo4(to).bar1(a);
    }

    function bar2(
        address to,
        bytes32 a,
        bytes32 b
    ) external payable returns (bytes32 ret) {
        ret = Foo4(to).bar2(a, b);
    }

    function barUint1(address to, uint256 a)
        external
        payable
        returns (uint256 ret)
    {
        ret = Foo4(to).barUint1(a);
    }
}
