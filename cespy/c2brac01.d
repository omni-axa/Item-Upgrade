EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(4)
			PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567886
		IF ~OR(5)
				!PartyHasItem("brac17")
				!PartyHasItem("brac14")
				!PartyHasItem("ring35")
				!PartyHasItem("ring36")
				NumItemsPartyLT("ring06",2)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("brac17")
			PartyHasItem("brac14")
			PartyHasItem("ring35")
			PartyHasItem("ring36")
			NumItemsPartyGT("ring06",1)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678886
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678986
		IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",34)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(5000)
													 DestroyGold(5000)
													 TakePartyItemNum("brac17",1)
													 DestroyItem("brac17")
													 TakePartyItemNum("brac14",1)
													 DestroyItem("brac14")
													 TakePartyItemNum("ring35",1)
													 DestroyItem("ring35")
													 TakePartyItemNum("ring36",1)
													 DestroyItem("ring36")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END