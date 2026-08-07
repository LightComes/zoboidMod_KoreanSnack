require 'Items/ProceduralDistributions'

local function AddSnacksToWorldContainers()
    print("KoreanSnacks: 월드 컨테이너 스폰 등록 시작!")

    -- 1. 과자 40종 리스트 (이전과 동일)
    local snackList = {
        "Pocachip", "Kokoalcorn", "HomerunBall", "Saewookang", "Pringles",
        "Matdongsan", "SquidPeanut", "Custard", "Ace", "HoneyButterChip",
        "CCornChip", "Margaret", "ChicChoc", "HoneyTwistSnack", "Heim",
        "Cheetos", "TurtleChips", "Oreo", "Kancho", "Jollypong",
        "DrYouBar", "CouqueDasse", "OhGamja", "SwingChip", "LotteSand",
        "CaramelCorn", "Chamssal", "KOnionRings", "ButterWaffle", "BadaCoconut",
        "MarineBoy", "ChokchokhanChocochip", "Kukhee", "Yegam", "SunChip",
        "MoistChewyCake", "FreshBerry", "DrYouDiget", "ChocoPick", "SumiChip"
    }

    local moduleName = "KoreanSnack."

    -- 2. 과자가 스폰될 '가구/장소'와 '등장 확률'을 설정합니다.
    -- 숫자가 높을수록 자주 나옵니다. (바닐라 과자들은 보통 5~20 사이의 값을 가집니다)
local targetContainers = {
    -- 🏪 편의점 및 상점 (과자 파밍 1순위)
    "StoreShelfSnacks",      -- 일반 편의점, 주유소, 동네 슈퍼의 과자 매대
    "GigamartCrisps",        -- 대형 마트(기가마트) 감자칩/스낵 전용 코너
    "GigamartCandy",         -- 대형 마트 사탕/초콜릿 전용 코너
    "GigamartBakingMisc",    -- 대형 마트 제과/베이킹 코너
    "CandyStoreSnacks",      -- 사탕/간식 전용 상점 진열대

    -- 🏠 일반 가정집 주방 (일상 파밍)
    "KitchenRandom",         -- 일반 주방 찬장 및 서랍 (가장 흔함)
    "KitchenBreakfast",      -- 시리얼 등 가벼운 간식 보관 찬장
    "FridgeSnacks",          -- 냉장고 안의 간식 보관칸
    "HoarderKitchenFood",    -- 수집강박증 환자의 꽉 찬 주방

    -- 🏢 회사 사무실 및 학교 (비상식량 컨셉)
    "OfficeDesk",            -- 사무실 일반 책상 서랍
    "OfficeDeskStressed",    -- 스트레스 받은 직원의 책상 서랍
    "BreakRoomCounter",      -- 회사 탕비실 카운터
    "BreakRoomShelves",      -- 회사 탕비실 선반
    "ClassroomDesk",         -- 교실 학생 책상 서랍
    "SchoolLockers",         -- 학교 복도 학생 사물함

    -- 🍿 휴게/오락 시설 (특수 파밍)
    "VendingMachineSnack",   -- 과자 자판기 (필수)
    "TheatreSnacks",         -- 극장/영화관 매점 카운터
    "TheatrePopcorn",        -- 영화관 팝콘 코너
    "RecRoomShelf",          -- 당구장/오락실 등 휴게실 선반
    "BowlingAlleyCounters",  -- 볼링장 카운터 주변

    -- 🍻 카페 및 술집 (안주류)
    "BarCounterMisc",        -- 일반 술집(살룬/바) 카운터 주변
    "WildWestBarCounter",    -- 서부극 테마파크 술집 카운터
    "CafeCounterMix",        -- 카페 카운터 주변

    -- 📦 물류 창고 (대량 파밍용 나무 상자)
    "CrateChips",            -- 감자칩/스낵류 나무 상자
    "CrateCandyPackage",     -- 캔디/과자 패키지 나무 상자
    "CrateChocolate",        -- 초콜릿 나무 상자
    "CrateCrackers",         -- 크래커 나무 상자
    "CratePopcorn",          -- 팝콘 나무 상자
    "CrateTortillaChips",    -- 토르티야(나초) 칩 나무 상자

    -- 🚓 기타 재미있는 스폰 장소
    "ArmySurplusSnacks",     -- 군장점(서플러스) 전투식량/간식 코너
    "PoliceDesk",            -- 경찰서 순경 책상 (도넛, 과자 등)
    "ButcherSnacks"          -- 정육점 계산대 옆 간식/육포 매대
}

    -- 3. 이중 반복문: 40개의 과자를 지정한 모든 컨테이너에 일괄 등록합니다.
    for _, snackName in ipairs(snackList) do
        local fullItemName = moduleName .. snackName

        for _, container in ipairs(targetContainers) do
            -- 해당 컨테이너가 게임 내에 실제로 존재하는지 확인 (오류 방지)
            if ProceduralDistributions.list[container] then
                
                -- 컨테이너 아이템 목록에 [과자 이름, 확률] 순서로 찔러 넣습니다.
                table.insert(ProceduralDistributions.list[container].items, fullItemName)
                table.insert(ProceduralDistributions.list[container].items, 50)  -- 등장 확률: 50 (적절히 조정 가능)
                
            end
        end
    end
end

-- 4. 엔진이 바닐라 스폰 테이블을 불러오기 직전(Pre)에 우리 과자들을 슬쩍 끼워 넣습니다.
Events.OnPreDistributionMerge.Add(AddSnacksToWorldContainers)