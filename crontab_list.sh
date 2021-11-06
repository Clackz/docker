# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf

# 收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1


# 88红包
5 0,6,18 * * * cd /scripts/ && npx tsc /scripts/jd_88hb.ts && node /scripts/jd_88hb.js >> /scripts/logs/jd_88hb.log 2>&1

# 抽奖
10 0 * * * cd /scripts/ && npx ts-node /scripts/jd_IndustryLottery.ts >> /scripts/logs/jd_IndustryLottery.log 2>&1

# 升级赚京豆
1 0,9,12,18 * * * cd /scripts/ && npx ts-node /scripts/jd_bean_box.ts >> /scripts/logs/jd_bean_box.log 2>&1

# 京东资产变动通知
2 9 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1

# 京东多合一签到
7 0,17 * * * cd /scripts/ && npx ts-node /scripts/jd_bean_sign.ts >> /scripts/logs/jd_bean_sign.log 2>&1

# 京东省钱大赢家
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1

# 口袋书店
1 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1

# 京东汽车
10 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1

# 京东汽车兑换
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1

# 京东手机狂欢城
5 0-18/6 * * * node /scripts/jd_carnivalcity.js >> /scripts/logs/jd_carnivalcity.log 2>&1

# 签到领现金
2 0-23/4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1

# 京喜财富岛
0 * * * * cd /scripts/ && npx ts-node /scripts/jd_cfd.ts >> /scripts/logs/jd_cfd.log 2>&1

# 京喜财富岛红包
0 0 * * * node /scripts/jd_cfd_hb.js >> /scripts/logs/jd_cfd_hb.log

# 京喜财富岛捡贝壳
10 0 * * * cd /scripts/ && npx ts-node /scripts/jd_cfd_shell.ts >> /scripts/logs/jd_cfd_shell.log 2>&1

# cookie有效性检查
0 * * * * cd /scripts/ && npx ts-node /scripts/jd_checkCookie.ts >> /scripts/logs/jd_checkCookie.log 2>&1

# 摇京豆
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1

# 天天提鹅
0 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1

# 东东世界
5 0,8,20 * * * cd /scripts/ && npx ts-node /scripts/jd_ddWorld.ts >> /scripts/logs/jd_ddWorld.log 2>&1

# 京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1

# 京喜工厂助力
50 * * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1

# 发财大赢家
#0 * * * * node /scripts/jd_facai.js >> /scripts/logs/jd_facai.log 2>&1

# 京东家庭号
1 12,23 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1

# 京东食力街
10 0 * * * cd /scripts/ && npx ts-node /scripts/jd_foodRunning.ts >> /scripts/logs/jd_foodRunning.log 2>&1

# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1

# 东东农场额外任务
0 11,12 * * * cd /scripts/ && npx ts-node /scripts/jd_fruit_moreTask.ts >> /scripts/log/jd_fruit_moreTask.log 2>&1

# 早起领豆
30 0 * * * cd /scripts/ && npx ts-node /scripts/jd_getUp.ts >> /scripts/logs/jd_getUp.log 2>&1

# 获取互助码
0 20 * * 6 cd /scripts/ && npx ts-node /scripts/jd_getShareCodes.ts >> /scripts/logs/jd_getShareCodes.log 2>&1

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

# 京享红包
0 0,12,18 * * * node /scripts/jd_jingxianghongbao.js >> /scripts/logs/jd_jingxianghongbao.log 2>&1

# 宠汪汪
0-23/2 * * * * node /scripts/jd_joy_new.js >> /scripts/logs/jd_joy.log 2>&1

# 汪汪乐园
0 9 * * * cd /scripts/ && npx ts-node /scripts/jd_joy_park.ts >> /scripts/logs/jd_joy_park.log 2>&1

# 京喜工厂成团
30 * * * * cd /scripts/ && npx ts-node /scripts/jd_jxgc.ts >> /scripts/logs/jd_jxgc.log 2>&1

# 惊喜牧场
10 0,12,18 * * * cd /scripts/ && npx ts-node /scripts/jd_jxmc.ts >> /scripts/logs/jd_jxmc.log 2>&1

# 惊喜牧场牛子
0,30 * * * * cd /scripts/ && npx ts-node /scripts/jd_jxmc_getCoin.ts >> /scripts/logs/jd_jxmc_getCoin.log 2>&1

# 京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1

# 京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1

# 京东直播
10-20/5 12 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1

# 幸运大转盘
4 10 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1

# 京东小魔方
0 * * * * cd /scripts/ && npx tsc /scripts/jd_mofang.ts && node /scripts/jd_mofang.js >> /scripts/logs/jd_mofang.log 2>&1

# 京东摇钱树
3 0-23/2 * * * cd /scripts/ && npx ts-node /scripts/jd_moneyTree.ts >> /scripts/logs/jd_moneyTree.log 2>&1

# 京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1

# 女装盲盒
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

# 东东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1

# 金融养猪
12 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1

# 京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1

# 京东全民开红包
#1 0,2,18 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1

# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /scripts/jd_reward.js >> /scripts/logs/jd_reward.log 2>&1

# 闪购盲盒
20 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1

# 进店领豆
10 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1

# 京东极速版发财大赢家
1 0,8,18 * * * cd /scripts/ && npx ts-node /scripts/jd_speed_redEnvelope.ts >> /scripts/logs/jd_speed_redEnvelope.log 2>&1

# 京东极速版红包
10 0,22 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1

# 京东极速版签到
0 7,19 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1

# 东东超市
11 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1

# 赚京豆
#10 0,7,23 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1

# 京东特物
0 9-20/1 * * * cd /scripts/ && npx ts-node /scripts/jd_tewu.ts >> /scripts/logs/jd_tewu.log 2>&1

# 取关京东店铺和商品
55 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1

# 京东预存验证码
58 7,15,23 * * * cd /scripts/ && node /scripts/jd_validate_Worker.js >> /scripts/logs/jd_validate_Worker.log 2>&1

# 家电星推官
0 0 0 * * * cd /scripts/ && npx ts-node /scripts/jd_xtg.ts >> /scripts/logs/jd_xtg.log 2>&1

# 京喜88红包宝箱
5 0,6,12 * * * cd /scripts/ && npx ts-node /scripts/jx_box.ts >> /scripts/logs/jx_box.log 2>&1

# 京喜牛牛福利社
1 0,9,19,23 * * * cd /scripts/ && npx ts-node /scripts/jx_nnfls.ts >> /scripts/logs/jx_nnfls.log 2>&1

# 京喜签到
#0 0 * * * cd /scripts/ && npx ts-node /scripts/jx_sign.ts >> /scripts/logs/jx_sign.log 2>&1

# 环境测试
0 12 * * * cd /scripts/ && npx ts-node /scripts/jd_api_test.ts >> /scripts/logs/jd_api_test.log 2>&1

