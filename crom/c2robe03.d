EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("clck17")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123455
		IF ~PartyHasItem("clck17")
			OR(3)
				!PartyHasItem("clck01")
				!PartyHasItem("scrl7u")
				!PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("clck17")
			PartyHasItem("clck01")
			PartyHasItem("scrl7u")
			PartyHasItem("scrl5k")~ THEN GOTO XO#ItemUp02
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234855
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234955
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",16)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("clck17",1)
													 DestroyItem("clck17")
													 TakePartyItemNum("clck01",1)
													 DestroyItem("clck01")
													 TakePartyItemNum("scrl7u",1)
													 DestroyItem("scrl7u")
													 TakePartyItemNum("scrl5k",1)
													 DestroyItem("scrl5k")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END