EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(5)
			PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("ring06")
			PartyHasItem("cdring06")
			PartyHasItem("ring06cd")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567890
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("amul16")
			!PartyHasItem("ring06")
			!PartyHasItem("cdring06")
			!PartyHasItem("ring06cd")~ THEN GOTO XO#ItemUp01
		IF ~OR(3)
				!PartyHasItem("ring08")
				!PartyHasItem("ring40")
				!PartyHasItem("amul16")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("ring06")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("cdring06")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("ring06cd")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp04
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678890
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678990
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",38)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678990
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",38)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("cdring06",1)
													 DestroyItem("cdring06")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678990
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",38)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("ring06cd",1)
													 DestroyItem("ring06cd")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END