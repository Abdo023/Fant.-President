local T = {}

T.taxes = {
	{name = "Gas Tax", money=1000, pop=-5},
	{name = "Income Tax", money=1000, pop=-5},
	{name = "Property Tax", money=1000, pop=-5},
	{name = "Sales Tax", money=1000, pop=-5},
	{name = "Soda Tax", money=1000, pop=-5},
	{name = "Capital Gain Tax", money=1000, pop=-5},
	{name = "Estate Tax", money=1000, pop=-5},
}

--[[
T.taxes = {
	{Title = "Gas Tax", cap=10,soc=-10,con=0,lib=-5, budget = 1000},
	{Title = "Income Tax", cap=10,soc=-10,con=0,lib=-5, budget = 3000},
	{Title = "Property Tax", cap=10,soc=-10,con=0,lib=-5, budget = 5000},
	{Title = "Sales Tax", cap=10,soc=-10,con=0,lib=-5, budget = 1000},
	{Title = "Soda Tax", cap=10,soc=-10,con=0,lib=-5, budget = 3000},
	{Title = "Capital Gain Tax", cap=10,soc=-10,con=0,lib=-5, budget = 5000},
	{Title = "Estate Tax", cap=10,soc=-10,con=0,lib=-5, budget = 3000},
	{Title = "Tobacco Tax", cap=10,soc=-10,con=0,lib=-5, budget = 3000}
}
]]
return T