(define (problem FreeCell10-4)
(:domain freecell)
(:requirements :strips :typing)
(:objects
	diamond club heart spade - suitsort
	N0 N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 - denomination
	clubA - card
	spadeA - card
	club7 - card
	diamond5 - card
	diamond9 - card
	diamond6 - card
	club5 - card
	club9 - card
	spade5 - card
	heart9 - card
	diamond3 - card
	spade10 - card
	heartA - card
	diamond4 - card
	diamond8 - card
	club10 - card
	heart3 - card
	heart2 - card
	spade6 - card
	spade2 - card
	club2 - card
	club6 - card
	diamond7 - card
	heart7 - card
	spade7 - card
	diamond10 - card
	spade9 - card
	club8 - card
	heart8 - card
	heart10 - card
	heart6 - card
	heart5 - card
	club3 - card
	heart4 - card
	spade4 - card
	diamond2 - card
	spade8 - card
	diamondA - card
	spade3 - card
	club4 - card
	diamond0 - card
	club0 - card
	heart0 - card
	spade0 - card
	
)
(:init
	(successor N1 N0)
	(successor N2 N1)
	(successor N3 N2)
	(successor N4 N3)
	(successor N5 N4)
	(successor N6 N5)
	(successor N7 N6)
	(successor N8 N7)
	(successor N9 N8)
	(successor N10 N9)
	(cellspace N4)
	(clear clubA)
	(on clubA club9)
	(on club9 diamond8)
	(on diamond8 club6)
	(on club6 heart8)
	(on heart8 diamond2)
	(bottomcol diamond2)
	(clear spadeA)
	(on spadeA spade5)
	(on spade5 club10)
	(on club10 diamond7)
	(on diamond7 heart10)
	(on heart10 spade8)
	(bottomcol spade8)
	(clear club7)
	(on club7 heart9)
	(on heart9 heart3)
	(on heart3 heart7)
	(on heart7 heart6)
	(on heart6 diamondA)
	(bottomcol diamondA)
	(clear diamond5)
	(on diamond5 diamond3)
	(on diamond3 heart2)
	(on heart2 spade7)
	(on spade7 heart5)
	(on heart5 spade3)
	(bottomcol spade3)
	(clear diamond9)
	(on diamond9 spade10)
	(on spade10 spade6)
	(on spade6 diamond10)
	(on diamond10 club3)
	(on club3 club4)
	(bottomcol club4)
	(clear diamond6)
	(on diamond6 heartA)
	(on heartA spade2)
	(on spade2 spade9)
	(on spade9 heart4)
	(bottomcol heart4)
	(clear club5)
	(on club5 diamond4)
	(on diamond4 club2)
	(on club2 club8)
	(on club8 spade4)
	(bottomcol spade4)
	(colspace N0)
	(value clubA N1)
	(suit clubA club)
	(canstack clubA diamond2)
	(canstack clubA heart2)
	(value spadeA N1)
	(suit spadeA spade)
	(canstack spadeA diamond2)
	(canstack spadeA heart2)
	(value club7 N7)
	(suit club7 club)
	(canstack club7 diamond8)
	(canstack club7 heart8)
	(value diamond5 N5)
	(suit diamond5 diamond)
	(canstack diamond5 club6)
	(canstack diamond5 spade6)
	(value diamond9 N9)
	(suit diamond9 diamond)
	(canstack diamond9 club10)
	(canstack diamond9 spade10)
	(value diamond6 N6)
	(suit diamond6 diamond)
	(canstack diamond6 club7)
	(canstack diamond6 spade7)
	(value club5 N5)
	(suit club5 club)
	(canstack club5 diamond6)
	(canstack club5 heart6)
	(value club9 N9)
	(suit club9 club)
	(canstack club9 diamond10)
	(canstack club9 heart10)
	(value spade5 N5)
	(suit spade5 spade)
	(canstack spade5 diamond6)
	(canstack spade5 heart6)
	(value heart9 N9)
	(suit heart9 heart)
	(canstack heart9 club10)
	(canstack heart9 spade10)
	(value diamond3 N3)
	(suit diamond3 diamond)
	(canstack diamond3 club4)
	(canstack diamond3 spade4)
	(value spade10 N10)
	(suit spade10 spade)
	(value heartA N1)
	(suit heartA heart)
	(canstack heartA club2)
	(canstack heartA spade2)
	(value diamond4 N4)
	(suit diamond4 diamond)
	(canstack diamond4 club5)
	(canstack diamond4 spade5)
	(value diamond8 N8)
	(suit diamond8 diamond)
	(canstack diamond8 club9)
	(canstack diamond8 spade9)
	(value club10 N10)
	(suit club10 club)
	(value heart3 N3)
	(suit heart3 heart)
	(canstack heart3 club4)
	(canstack heart3 spade4)
	(value heart2 N2)
	(suit heart2 heart)
	(canstack heart2 club3)
	(canstack heart2 spade3)
	(value spade6 N6)
	(suit spade6 spade)
	(canstack spade6 diamond7)
	(canstack spade6 heart7)
	(value spade2 N2)
	(suit spade2 spade)
	(canstack spade2 diamond3)
	(canstack spade2 heart3)
	(value club2 N2)
	(suit club2 club)
	(canstack club2 diamond3)
	(canstack club2 heart3)
	(value club6 N6)
	(suit club6 club)
	(canstack club6 diamond7)
	(canstack club6 heart7)
	(value diamond7 N7)
	(suit diamond7 diamond)
	(canstack diamond7 club8)
	(canstack diamond7 spade8)
	(value heart7 N7)
	(suit heart7 heart)
	(canstack heart7 club8)
	(canstack heart7 spade8)
	(value spade7 N7)
	(suit spade7 spade)
	(canstack spade7 diamond8)
	(canstack spade7 heart8)
	(value diamond10 N10)
	(suit diamond10 diamond)
	(value spade9 N9)
	(suit spade9 spade)
	(canstack spade9 diamond10)
	(canstack spade9 heart10)
	(value club8 N8)
	(suit club8 club)
	(canstack club8 diamond9)
	(canstack club8 heart9)
	(value heart8 N8)
	(suit heart8 heart)
	(canstack heart8 club9)
	(canstack heart8 spade9)
	(value heart10 N10)
	(suit heart10 heart)
	(value heart6 N6)
	(suit heart6 heart)
	(canstack heart6 club7)
	(canstack heart6 spade7)
	(value heart5 N5)
	(suit heart5 heart)
	(canstack heart5 club6)
	(canstack heart5 spade6)
	(value club3 N3)
	(suit club3 club)
	(canstack club3 diamond4)
	(canstack club3 heart4)
	(value heart4 N4)
	(suit heart4 heart)
	(canstack heart4 club5)
	(canstack heart4 spade5)
	(value spade4 N4)
	(suit spade4 spade)
	(canstack spade4 diamond5)
	(canstack spade4 heart5)
	(value diamond2 N2)
	(suit diamond2 diamond)
	(canstack diamond2 club3)
	(canstack diamond2 spade3)
	(value spade8 N8)
	(suit spade8 spade)
	(canstack spade8 diamond9)
	(canstack spade8 heart9)
	(value diamondA N1)
	(suit diamondA diamond)
	(canstack diamondA club2)
	(canstack diamondA spade2)
	(value spade3 N3)
	(suit spade3 spade)
	(canstack spade3 diamond4)
	(canstack spade3 heart4)
	(value club4 N4)
	(suit club4 club)
	(canstack club4 diamond5)
	(canstack club4 heart5)
	(home diamond0)
	(value diamond0 N0)
	(suit diamond0 diamond)
	(home club0)
	(value club0 N0)
	(suit club0 club)
	(home heart0)
	(value heart0 N0)
	(suit heart0 heart)
	(home spade0)
	(value spade0 N0)
	(suit spade0 spade)
)
(:goal (and
	(home diamond10)
	(home club10)
	(home heart10)
	(home spade10)
)))