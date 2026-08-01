require 'Foraging/forageSystem'

local function onAddForageDefs(forageSystem)
  print("onAddForageDefs PocaChips")
  local pocachipItem = {
    -- 1. 아이템 타입: 반드시 "모듈명.아이템명" 형태로 작성해야 합니다.
    type = "KoreanSnack.Pocachip",
    
    -- 2. 환경 변수: 눈이 올 때 과자 봉지가 눈에 덮여 발견 확률이 떨어지는 수치입니다.
    snowChance = -10,
    
    -- 3. 획득량 및 경험치
    minCount = 1,
    maxCount = 1,
    xp = 5,
    
    -- 4. 채집 카테고리: 게임 내 채집 UI에서 '정크푸드' 분류로 탐색되게 합니다.
    categories = {
        "Trash",           -- 인공물/쓰레기류 (빈 병, 과자 봉지 등)
        -- "Junk",           -- 잡동사니 (쓸모없는 부품, 잡템)
        -- "Berries",        -- 베리류
        -- "Mushrooms",      -- 버섯류
        -- "Herbs",          -- 약초류
        -- "WildPlants",     -- 일반 야생 식물
        -- "ForestRarities", -- 숲의 희귀 식물 및 아이템
        -- "Stones",         -- 돌멩이, 바위 조각
        -- "Firewood",       -- 나뭇가지, 땔감
        -- "Insects",        -- 곤충, 지렁이 등
        -- "Animals",        -- 소형 야생 동물
        -- "DeadAnimals",    -- 동물 사체
        -- "Crops",          -- 야생 농작물
        -- "Medical",        -- 의료용품 및 약초 연계
    },
    
    -- 5. 스폰 지역 (가중치): 숫자가 높을수록 해당 지역에서 잘 나옵니다.
	zones = {
		  DeepForest  = 0,  -- 깊은 숲 (나무가 매우 빽빽하고 도심에서 먼 곳)
		  Forest      = 0,  -- 일반 숲 (일반적인 나무 군락)
		  Vegitation  = 0,  -- 초목/풀숲 (도심지나 도로변에 있는 수풀 지대)
		  FarmLand    = 0,  -- 농경지 (작물이 자라는 밭, 경작지)
		  Farm        = 0,  -- 농장 (농장 건물 및 시설 주변)
		  TrailerPark = 3,  -- 트레일러 파크 (주거 구역이므로 쓰레기가 발견될 수 있음)
		  TownZone    = 5,  -- 도심지 (일반적인 주택가, 상가 등 인공적인 구역)
		  ForagingNav = 2,  -- 길가 (도로변에 쓰레기가 버려져 있을 확률이 있음)
		},
  }

  -- 정의한 포카칩 데이터를 채집 시스템에 등록
  forageSystem.addItemDef(pocachipItem)
end

-- 모드가 로드될 때 onAddForageDefs 이벤트를 실행하도록 훅(Hook)을 걸어줍니다.
Events.onAddForageDefs.Add(onAddForageDefs)