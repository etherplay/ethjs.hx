package ethjs;

import haxe.extern.EitherType;

typedef Error = Dynamic; //TODO?
typedef Block = Dynamic; //TODO
typedef ABI = Array<Dynamic>; //TODO

#if hxnodejs
@:jsRequire('ethjs')
#end
@:native('Eth')
extern class Eth{
	function new(provider : Dynamic); //TODO use Web3.Provider ?
	function getBlockByNumber(number : Float, fetchTransaction : Bool, callback : Error -> Block) : Void; //TODO web3 block
	static function toWei(number : EitherType<Float,String>, unit : String) : BN;
	function contract(abi : ABI) : ContractFactory;
}

extern class ContractFactory{
	function at(address : String) : Contract;
}

typedef Contract = Dynamic; //TODO