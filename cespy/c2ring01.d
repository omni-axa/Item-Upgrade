EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("ring06")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567840
		IF ~PartyHasItem("ring06")
			OR(2)
				!PartyHasItem("ring31")
				!PartyHasItem("misc42")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ring06")
			PartyHasItem("ring31")
			PartyHasItem("misc42")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678840
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678940
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",1)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("ring31",1)
													 DestroyItem("ring31")
													 TakePartyItemNum("misc42",1)
													 DestroyItem("misc42")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END