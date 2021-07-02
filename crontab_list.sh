# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf

#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1



# 京东资产变动通知
2 9 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1

# 领京豆额外奖励
10 7 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1

# 省钱大赢家之翻翻乐
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1

# 东东超市兑换奖品
0 0 0 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1

# 口袋书店
1 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1

# 京东汽车
10 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1

# 京东汽车兑换
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1

# 签到领现金
2 0-23/4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1

# 京喜财富岛
5 8,13,19 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1

# 摇京豆
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1

# crazyJoy任务
10 9 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1

# 监控crazyJoy分红
10 12 * * * node /scripts/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1

# crazyJoy挂机
10 1,12 * * * node /scripts/jd_crazy_joy_coin.js >> /scripts/logs/jd_crazy_joy_coin.log 2>&1

# 天天提鹅
10 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1

# 小鸽有礼-每日抽奖
13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1

# 京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1

# 京东家庭号
1 12,23 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1

# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1

# 获取互助码
20 13 * * 6 node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1

# 金榜创造营
13 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1

# 东东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1

# 东东健康社区收集能量收集
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1

# 东东工厂
10 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1

# 京东赚赚
10 0 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1

# 领金贴
10 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1

# 宠汪汪
15 0-23/2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1

# 宠汪汪🐕喂食
15 0-23/1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1

# 宠汪汪积分兑换奖品
0 0-16/8 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1

# 宠汪汪赛跑
15 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1

# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1

# 跳跳乐瓜分京豆
1 0,11,21 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1

# 京喜领88元红包
4 10 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1

# 惊喜牧场
20 0-23/3 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1

# 京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1

# 京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1

# 京东直播
10-20/5 12 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1

# 超级直播间红包雨
0,30 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

# 幸运大转盘
4 10 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1

# 新潮品牌狂欢
4 10 * * * node /scripts/jd_mcxhd.js >> /scripts/logs/jd_mcxhd.log 2>&1

# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1

# 京东摇钱树
3 0-23/2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1

# 京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1

# 点点券
10 0,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1

# 女装盲盒抽京豆
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

# 东东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1

# 金融养猪
12 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1

# 京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1

# 京东保价
0 2 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1

# 京东全民开红包
1 1,2,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1

# 闪购盲盒
20 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1

# 进店领豆
10 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1

# 东东小窝
16 22 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1

# ✈️天天加速
8 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1

# 京东极速版红包
20 0,22 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1

# 京东极速版
0 7 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1

# 明星小店
0 1,21 * * * node /scripts/jd_star_shop.js >> /scripts/logs/jd_star_shop.log 2>&1

# 东东超市
11 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1

# 赚京豆
10 0,7,23 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1

# 取关京东店铺和商品
55 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1

# 家电星推官
0 0 0 * * * node /scripts/jd_xtg.js >> /scripts/logs/jd_xtg.log 2>&1

# 家电星推官好友互助
0 0 0 * * * node /scripts/jd_xtg_help.js >> /scripts/logs/jd_xtg_help.log 2>&1

# 环境测试
0 12 * * * node /scripts/jd_api_test.js >> /scripts/logs/jd_api_test.log 2>&1

# 电竞经理
0 0-23/2 * * * node /scripts/jd_EsportsManager.js >> /scripts/logs/jd_EsportsManager.log 2>&1