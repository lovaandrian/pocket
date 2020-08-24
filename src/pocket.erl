-module(pocket).
-export([binary_decode_unsigned_pcap/1]).

%%%%
%%%% 0F 00 00 40 binary() ==> 40 00 00 0F ==> 16#4000000F =>  1073741839 decimal()
%%%%
binary_decode_unsigned_pcap(LReverse)->

	%% LReverse = 0F 00 00 40 binary() 
	%% LReverse = <<16#0F, 0, 0, 16#40>>,

	Un = lists:reverse([ <<A:4,B:4>> ||<<A:4, B:4>><= LReverse]),
	%% [<<0,0xF>>,<<0,0>>,<<0,0>>,<<4,0>>]
	%% [<<4,0>>,<<0,0>>,<<0,0>>,<<0,0xF>>]
		
	Deux = list_to_binary(Un),
	%% <<64, 0, 0, 15>>	
	
	binary:decode_unsigned (Deux)
	%% 1073741839
.
