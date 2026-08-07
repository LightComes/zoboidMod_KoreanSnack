-- 1. 과자 이름만 깔끔하게 리스트(배열)로 정리합니다.
local koreanSnack_ItemList = {
    "Pocachip", "Kokoalcorn", "HomerunBall", "Saewookang", "Pringles",
    "Matdongsan", "SquidPeanut", "Custard", "Ace", "HoneyButterChip",
    "CCornChip", "Margaret", "ChicChoc", "HoneyTwistSnack", "Heim",
    "Cheetos", "TurtleChips", "Oreo", "Kancho", "Jollypong",
    "DrYouBar", "CouqueDasse", "OhGamja", "SwingChip", "LotteSand",
    "CaramelCorn", "Chamssal", "KOnionRings", "ButterWaffle", "BadaCoconut",
    "MarineBoy", "ChokchokhanChocochip", "Kukhee", "Yegam", "SunChip",
    "MoistChewyCake", "FreshBerry", "DrYouDiget", "ChocoPick", "SumiChip"
}

local itemModuleName = "KoreanSnack"

-- 2. 좀비가 죽을 때 실행될 함수를 만듭니다.
local function DropSnackOnZombieDead(zombie)
    -- 샌드박스 설정에서 확률을 가져옵니다. (설정이 없으면 기본값 2% 적용)
    local dropRate = SandboxVars.KoreanSnack.LootRate or 2

    -- 1부터 100 사이의 100면체 주사위를 굴립니다. (ZombRand는 1 <= x < 101 의 값을 반환)
    local roll = ZombRand(1, 101)

    -- 주사위 숫자가 드랍 확률(예: 100)보다 작거나 같으면 당첨!
    if roll <= dropRate then
        
        -- 40개의 과자 리스트 중에서 '랜덤으로 1개의 순번'을 뽑습니다.
        local randomIndex = ZombRand(1, #koreanSnack_ItemList + 1)
        local selectedSnack = koreanSnack_ItemList[randomIndex]
        
        -- 당첨된 좀비의 인벤토리 주머니에 선택된 과자 딱 1개를 찔러 넣습니다.
        zombie:getInventory():AddItem(itemModuleName .. "." .. selectedSnack)
    end
end

-- 3. '좀비가 죽었을 때(OnZombieDead)' 위 함수가 실행되도록 훅을 겁니다.
Events.OnZombieDead.Add(DropSnackOnZombieDead)