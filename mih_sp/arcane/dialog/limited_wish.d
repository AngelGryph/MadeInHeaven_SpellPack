// Limited Wish additions

APPEND "wish"

IF ~~
BEGIN mh#wish_scrolls
  SAY @0
  IF ~~
    DO ~GiveItemCreate("mh#wiz72", LastTalkedToBy(Myself), 1, 1, 0)
        GiveItemCreate("mh#wiz84", LastTalkedToBy(Myself), 1, 1, 0)
        GiveItemCreate("mh#wiz91", LastTalkedToBy(Myself), 1, 1, 0)
	SetInterrupt(FALSE)
	ForceSpell(Myself, DRYAD_TELEPORT)~
    EXIT
END

END	// APPEND "wish"


EXTEND_BOTTOM "wish" 1
  IF ~CheckStatGT(LastTalkedToBy(Myself), 11, WIS)
      Global("mh#wish_scrolls", "GLOBAL", 0)~
    REPLY @1
      DO ~SetGlobal("mh#wish_scrolls", "GLOBAL", 1)~
      GOTO mh#wish_scrolls
END


