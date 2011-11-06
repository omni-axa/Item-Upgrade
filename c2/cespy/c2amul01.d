EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(3)
			PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567887
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("amul14",1)~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("cdamul14",1)~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("amul14cd",1)~ THEN GOTO XO#ItemUp04
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyLT("amul14",2)
			NumItemsPartyLT("cdamul14",2)
			NumItemsPartyLT("amul14cd",2)~ THEN GOTO XO#ItemUp01
		IF ~OR(3)
				!PartyHasItem("amul22")
				!PartyHasItem("amul24")
				!PartyHasItem("amul25")~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678887
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678987
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",35)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1)
													 DestroyItem("amul14")
													 TakePartyItemNum("amul14",1)
													 DestroyItem("amul14")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678987
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",35)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdamul14",1)
													 DestroyItem("cdamul14")
													 TakePartyItemNum("cdamul14",1)
													 DestroyItem("cdamul14")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678987
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",35)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14cd",1)
													 DestroyItem("amul14cd")
													 TakePartyItemNum("amul14cd",1)
													 DestroyItem("amul14cd")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF WEIGHT #-1 ~GlobalGT("XO#TOBCraft","GLOBAL",0) GlobalGT("XO#TOBItemUp","GLOBAL",0)~ THEN BEGIN XO#CRAFT SAY #70888
		IF ~~ THEN DO ~SetGlobal("XO#TOBCraft","GLOBAL",0)  SetGlobal("XO#TOBItemUp","GLOBAL",0)~ EXIT
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END