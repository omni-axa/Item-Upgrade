EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("sw1h51")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123470
		IF ~PartyHasItem("sw1h51")
			PartyHasItem("misc6m")
			PartyHasItem("wand07")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("sw1h51")
			!PartyHasItem("misc6m")
			PartyHasItem("wand07")
			PartyHasItem("plot02i")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("sw1h51")
			!PartyHasItem("misc6m")
			PartyHasItem("wand07")
			PartyHasItem("plot02j")~ THEN GOTO XO#ItemUp04
		IF ~PartyHasItem("sw1h51")
			OR(2)
				!PartyHasItem("misc6m")
				!PartyHasItem("wand07")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw1h51")
			!PartyHasItem("misc6m")
			OR(2)
				!PartyHasItem("wand07")
				!PartyHasItem("plot02i")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw1h51")
			!PartyHasItem("misc6m")
			!PartyHasItem("plot02i")
			OR(2)
				!PartyHasItem("wand07")
				!PartyHasItem("plot02j")~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234870
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234970
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",41)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw1h51",1)
													 DestroyItem("sw1h51")
													 TakePartyItemNum("misc6m",1)
													 DestroyItem("misc6m")
													 TakePartyItemNum("wand07",1)
													 DestroyItem("wand07")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234970
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",41)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw1h51",1)
													 DestroyItem("sw1h51")
													 TakePartyItemNum("plot02i",1)
													 DestroyItem("plot02i")
													 TakePartyItemNum("wand07",1)
													 DestroyItem("wand07")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234970
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",41)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw1h51",1)
													 DestroyItem("sw1h51")
													 TakePartyItemNum("plot02j",1)
													 DestroyItem("plot02j")
													 TakePartyItemNum("wand07",1)
													 DestroyItem("wand07")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END