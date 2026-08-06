-- 1. 바닐라 루트 테이블을 불러옵니다.
require "Items/SuburbsDistributions"

local default_lootRate = 2.0
local itmeModuleName = "KoreanSnack";

local koreanSnack_ItemList = {
    {
        itmeName  = "Pocachip",
        LootRate = 2.0,
    }

}

local function getItems (items)

end

-- 2. 좀비 주머니에 과자를 넣는 함수를 정의합니다.
local function AddPocachipToZombies()
    -- table 선언
    local maleItemTable = SuburbsDistributions.all.inventorymale.items;
    local femaleItemTable = SuburbsDistributions.all.inventoryfemale.items;

    for i, item in ipairs(koreanSnack_ItemList) do
        print(itmeModuleName .. "." .. item.itmeName);
        table.insert(maleItemTable, itmeModuleName .. "." .. item.itmeName);
        table.insert(maleItemTable, item.LootRate);
        table.insert(femaleItemTable, itmeModuleName .. "." .. item.itmeName);
        table.insert(femaleItemTable, item.LootRate);
    end



end

-- 3. 엔진이 바닐라 루트 테이블 세팅을 완료하는 시점에, 위에서 만든 함수를 실행하도록 훅(Hook)을 겁니다.
Events.OnPostDistributionMerge.Add(AddPocachipToZombies)