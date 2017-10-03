package ethjs;

#if hxnodejs
@:jsRequire("ethjs-signer")
#else
@:native('ethSigner')
#end
extern class EthSigner{
	public static function sign(tx : Dynamic, privateKey : String) : String; 
}