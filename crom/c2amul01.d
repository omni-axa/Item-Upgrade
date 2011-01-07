EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123478
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("amul14",1)~ THEN GOTO XO#ItemUp02
		IF ~OR(4)
				!PartyHasItem("amul22")
				!PartyHasItem("amul24")
				!PartyHasItem("amul25")
				NumItemsPartyLT("amul14",2)~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234878
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
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
													 DestroyItem("amul14")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF WEIGHT #-1 ~GlobalGT("XO#Craft","ar0334",0)~ THEN BEGIN XO#CRAFT SAY #59797
		IF ~~ THEN DO ~SetGlobal("XO#Craft","ar0334",0)~ EXIT
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END