require 'Foraging/forageSystem'

local function onAddForageDefs(forageSystem)

  snackList = {
    {Type = "KoreanSnack.Pocachip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Kokoalcorn", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.HomerunBall", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Saewookang", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Pringles", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Matdongsan", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.SquidPeanut", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Custard", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Ace", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.HoneyButterChip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.CCornChip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Margaret", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.ChicChoc", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.HoneyTwistSnack", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Heim", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Cheetos", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.TurtleChips", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Oreo", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Kancho", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Jollypong", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.DrYouBar", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.CouqueDasse", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.OhGamja", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.SwingChip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.LotteSand", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.CaramelCorn", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Chamssal", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.OnionRings", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.ButterWaffle", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.BadaCoconut", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.MarineBoy", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.ChokchokhanChocochip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Kukhee", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.Yegam", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.SunChip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.MoistChewyCake", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.FreshBerry", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.DrYouDiget", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.ChocoPick", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
    {Type = "KoreanSnack.SumiChip", snowChance = -10, minCount = 1, maxCount = 1, xp = 5, categories = "Garbage", DeepForest = 0, Forest = 0, Vegitation = 0, FarmLand = 0, Farm = 0, TrailerPark = 3, TownZone = 5, ForagingNav = 2},
  }


  for index, snack in ipairs(snackList) do
    local varSnack = {
      type = snack.Type,

      snowChance = snack.snowChance,
      minCount = snack.minCount,
      maxCount = snack.maxCount,
      xp = snack.xp,

      categories = {
        snack.categories,
      },
      zones = {
        DeepForest  = snack.DeepForest,
        Forest      = snack.Forest,
        Vegitation  = snack.Vegitation,
        FarmLand    = snack.FarmLand,
        Farm        = snack.Farm,
        TrailerPark = snack.TrailerPark,
        TownZone    = snack.TownZone,
        ForagingNav = snack.ForagingNav,
      },
    }
    forageSystem.addItemDef(varSnack)
  end
end
-- 모드가 로드될 때 onAddForageDefs 이벤트를 실행하도록 훅(Hook)을 걸어줍니다.
Events.onAddForageDefs.Add(onAddForageDefs);