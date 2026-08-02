-- 1. 바닐라 루트 테이블을 불러옵니다.
require "Items/SuburbsDistributions"

-- 2. 좀비 주머니에 포카칩을 넣는 함수를 정의합니다.
local function AddPocachipToZombies()
    if koreanSnack_ItemList == nil then 
        print("koreanSnack_ItemList is nil");
    else 
        for index, item in ipairs(koreanSnack_ItemList) do
            print(index .. "번째 아이템" .. item .. "입니다.");
        end
    end


    
    -- 하드코딩으로 남자 좀비에게 포카칩 추가 (확률 2.0)
    table.insert(SuburbsDistributions.all.inventorymale.items, "KoreanSnack.Pocachip")
    table.insert(SuburbsDistributions.all.inventorymale.items, 100.0)

    -- 하드코딩으로 여자 좀비에게 포카칩 추가 (확률 2.0)
    table.insert(SuburbsDistributions.all.inventoryfemale.items, "KoreanSnack.Pocachip")
    table.insert(SuburbsDistributions.all.inventoryfemale.items, 100.0)
end

-- 3. 엔진이 바닐라 루트 테이블 세팅을 완료하는 시점에, 위에서 만든 함수를 실행하도록 훅(Hook)을 겁니다.
Events.OnPostDistributionMerge.Add(AddPocachipToZombies)