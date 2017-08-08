local F = {}


function F.nextMonth(  )
	Data.month = Data.month + 1
	Data.money = Data.money + Data.monthTaxMoney + Data.monthPolicyMoney
	Data.pop = Data.pop + Data.monthTaxPop + Data.monthPolicyPop
end

function F.addValue( v, amount )
    Data[v] = Data[v] + amount
end

function F.deductValue( v, amount )
    if (Data[v] < amount) then
    	print( "Not enough: "..v )
        return
    end
    Data[v] = Data[v] - amount
end

function F.compareValues( v,amount )
	if (Data.values[v] >= amount) then
		return true
	else
		return false
	end
end

function F.comparePartValues( k,amount )
	print("Have: "..Data.parts[k].have)
	if (Data.parts[k].have >= amount) then
		return true
	else
		return false
	end
end

function F.checkValue( v )
	if (Data.values[v] <= 0) then
		return false
	else
		return true
	end
end

function F.deductDaysRemaining(  )
	if (Data.daysRemaining == 0) then
		print( "No remaining days" )
		return
	end
	Data.values.food = Data.values.food - 1
	Data.daysRemaining = Data.daysRemaining - 1
end

--UI

function F.updateLabels(  )
	local stage = display.getCurrentStage( )
	local labels = stage.valuesLabels
	local bar = labels.popBar
	labels.setTxt(Data.money, Data.month)
	UI.editBar(bar, Data.pop)
end








return F