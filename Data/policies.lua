local P = {}


P.policies = {
	{name = "Free Education", money=1000, pop=-5},
	{name = "Free Health Care", money=1000, pop=-5},
	{name = "Closed Borders", money=1000, pop=-5},
	{name = "Gun Control", money=1000, pop=-5},
	{name = "", money=1000, pop=-5},
	{name = "Capital Gain Tax", money=1000, pop=-5},
	{name = "Estate Tax", money=1000, pop=-5},
}

--[[
P.policies = {
	{name="Education Policy",o1="Free",o2="Moderate",o3="Private",
	e1={employment=50, health=5, education=15, wealth=10, freedom = 50, budget=500},
	e2={employment=50, health=0, education=15, wealth=10, freedom = 50, budget=500},
	e3={employment=50, health=10, education=15, wealth=10, freedom = 50, budget=500}
	},
	{name="Healthcare Policy",o1="Free",o2="Moderate",o3="Private",
	e1={employment=50, health=10, education=15, wealth=10, freedom = 50, budget=500},
	e2={employment=50, health=10, education=15, wealth=10, freedom = 50, budget=500},
	e3={employment=50, health=10, education=15, wealth=10, freedom = 50, budget=500}
	},
}
]]
return P