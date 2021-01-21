BEGIN "mh#llgen"

IF ~True()~
BEGIN greeting
  SAY ~A genie wearing wireframe spectacles and holding an oversized quill pen appears before you.  He is reading from a huge book that floats in mid air before him and takes a moment to notice you.~
  = ~"Oh, a thousand apologies master, I did not quite realize I had been summoned.", he finally blurts as he realizes what happened, "What knowledge do you seek?"~
  IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_3%)~
    REPLY ~Where is the mage Jon Irenicus?~
    GOTO irenicus_1
  IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_3%)~
    REPLY ~Who were the men in black leather at the Promenade?~
    GOTO shadow_thieves_1
  IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_3%)~
    REPLY ~Who were the robed mages that took Irenicus and Imoen?~
    GOTO cowled_mages_1
  IF ~Global("Chapter", "GLOBAL", %bg2_chapter_2%)~
    REPLY ~Where can I find a lot of gold in this city?~
    GOTO copper_coronet_1
  IF ~~
    REPLY ~Never mind.  You're dismissed.~
    GOTO all_done
END

IF ~~
BEGIN all_done
  SAY ~The genie bows to you, "Farewell for now, master."  Then with a snap of his fingers, he is gone.~
  IF ~~
    DO ~SetInterrupt(FALSE)
        ForceSpell(Myself, DRYAD_TELEPORT)~
  EXIT
END

IF ~~
BEGIN irenicus_1
  SAY ~The genie frowns and looks puzzled for a moment.  "I am sorry, my master, but the one you seek protects himself with powerful magic.  I cannot discern his current location."~
  = ~He smiles apologetically and then adds, "My advice is to contact someone who can look into matters for you in a more mundane way.  In the City of Coin, any information will be available for the right price."~
  IF ~~
    GOTO all_done
END

IF ~~
BEGIN shadow_thieves_1
  SAY ~The genie taps his chin with his quill, "In life, they were members of the Shadow Thieves, one of the power groups of Athkatla.  They will likely not take such slaughter of their members lightly."~
  = ~After a moment he adds cryptically, "Lawless and amoral they may be, but their evil is nothing compared to what they are up against.  They may be a light in the darkness."~
  IF ~~
    GOTO all_done
END

IF ~~
BEGIN cowled_wizards_1
  SAY ~The genie frowns at the mention, "They are the Cowled Wizards, and they seek to control all magic that goes on in the City of Coin.  Beware their wrath if you break their rules!"~
  = ~He continues after a moment, "Should you wish to parlay with them, seek them out in a place of law.  They rarely allow outsiders to meddle in their affairs though."~
  IF ~~
    GOTO all_done
END

IF ~~
BEGIN copper_coronet_1
  SAY ~The genie sighs, "Gold, jewels, riches, it's always the same that you mortals seek.  Very well, let me see here..."
  = ~He pages through his book for a minute, "Ah, here.  Gold can be gained in many places in the City of Coin, but I see your fate is especially bright in a place called the Copper Coronet.  Many a soul seeking help and offering an appropriate reward can be found there."~
  = ~He reads on a bit, mumbling to himself, "Should that not work with you, I advice you to seek out the villages of Trademeet or Imnesvale.  Many opportunities will present themselves there."~
  = ~Still reading on, he continues, "Also the castle held by the d'Arnise family or the lands known as the Windspear Hills may be worth seeking out."~
  = ~Finally he frowns, "Mm, what's this?  It seems a task of divine origin is waiting for you in the ruins known as Watcher's Keep.  Beware though, the rewards may be great, but so are the risks!"~
  = ~Slamming his book shut, he turns back to you, "These are all the opportunities I foresee for you, master."~
  IF ~~
    GOTO all_done
END


