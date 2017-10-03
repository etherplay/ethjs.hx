package ethjs;

typedef Account = {
	address : String,
	privateKey : String,
	publicKey : String
}

#if hxnodejs
@:jsRequire("ethjs-account")
#else
@:native('ethAccount')
#end
extern class EthAccount{
	public static function generate(randomString : String) : Account;
	public static function privateToPublic(privateKey : String) : Dynamic; //Buffer
	public static function publicToAddress(publicKey : Dynamic/*Buffer*/) : String; 
	public static function privateToAccount(privateKey : String) : Account; 
}
