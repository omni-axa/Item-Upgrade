EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("sper08")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567867
		IF ~PartyHasItem("sper08")
			!PartyHasItem("misc45")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sper08")
			PartyHasItem("misc45")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678867
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678967
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",25)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("sper08",1)
													 DestroyItem("sper08")
													 TakePartyItemNum("misc45",1)
													 DestroyItem("misc45")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END