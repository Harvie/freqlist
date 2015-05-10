#!/bin/bash
cat lists-enabled/* | sed -e 's/#.*//g' | while read l; do
	[ -z "$l" ] && continue; #discard empty lines

	ch_group="$(echo "$l" | cut -d ';' -f 1)"
	ch_name="$(echo "$l" | cut -d ';' -f 2)"
	ch_name6="$(echo "$l" | cut -d ';' -f 3)"
	ch_freq="$(echo "$l" | cut -d ';' -f 4)"
	ch_bandwidth="$(echo "$l" | cut -d ';' -f 5)"
	ch_modulation="$(echo "$l" | cut -d ';' -f 6)"
	ch_txpower="$(echo "$l" | cut -d ';' -f 7)"
	ch_duplex="$(echo "$l" | cut -d ';' -f 8)"
	ch_offset="$(echo "$l" | cut -d ';' -f 9)"
	ch_tone="$(echo "$l" | cut -d ';' -f 10)"
	ch_ctcss_rx="$(echo "$l" | cut -d ';' -f 11)"
	ch_ctcss_tx="$(echo "$l" | cut -d ';' -f 12)"
	ch_dtcs_rx="$(echo "$l" | cut -d ';' -f 13)"
	ch_dtcs_tx="$(echo "$l" | cut -d ';' -f 14)"

	echo $ch_group, $ch_name6, $ch_freq
done
