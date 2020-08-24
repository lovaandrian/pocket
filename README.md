pocket
=====

A suite of Erlang utilities

Build
-----

    $ rebar3 compile

## EXPORTS

    pocket:binary_decode_unsigned_pcap(BinaryReverse) -> Integer
	
        Types   BinaryReverse = binary()

        Convert some part of Wireshark (CAP, PCAP) encoded content from reverse binary data into the decimal value.

## EXAMPLES

* decode the actual number of octets of packet saved in a Wireshark serie, or obtained from a live CAP/PCAP message received sniffed from an interface


	Eshell V11.0  (abort with ^G)
	
	1> BinaryReverse = <<15, 0, 0, 64>>.
	
	<<15,0,0,64>>
	
	2> pocket:binary_decode_unsigned_pcap(BinaryReverse).
	
	1073741839
