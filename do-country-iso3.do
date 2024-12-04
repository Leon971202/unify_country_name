//转小写
replace country=strlower(country)

//中国
replace country="china" if country=="china (mainland)"
//英国
replace country="united kingdom" if country=="uk"
//德国
replace country="former federal republic of germany" if country=="germany" | country=="former federal republic of germany"
//波黑
replace country="bosnia and herzegovina" if country=="bosnia-herzegowina" | country=="bosnia hercegovina" | country=="bosnia herzegovina" 
//捷克
replace country="czechia" if country=="czech republic"
//卡塔尔
replace country="qatar" if country=="quatar"
//委内瑞拉
replace country="venezuela" if country=="venezuela, bolivarian republic of" | country=="venezuela (bolivarian republic of)"
//越南
replace country="viet nam" if country=="vietnam"
//韩国
replace country="republic of korea" if country=="rep. of korea" | country=="korea, republic of" | country=="korea, republic of" | country=="korea" | country=="south korea" | country=="korea, south"
//伊朗
replace country="iran" if country=="iran (islamic republic of)" |country=="iran, islamic republic of"
//摩尔多瓦
replace country="moldova" if country=="moldova, republic of" |country=="republic of moldova"
//朝鲜
replace country="north korea" if country=="korea, democratic people's republic of" | country=="dem. people's republic of korea" | country =="korea, north"
//美国
replace country="united states" if country=="united states (the)"| country=="united states of america" | country=="us"
//澳门
replace country="macau, china" if country=="macau" | country=="macao" | country=="china, macao sar"| country=="china, macao special administrative region" | country=="macao, china"
//香港
replace country="hong kong, china" if country=="hong kong" |country=="china, hong kong sar" | country=="china, hong kong special administrative region" | country=="hong kong sar" | country=="china hong kong sar"
//台湾
replace country="taiwan, china" if country=="china, taiwan province of china" | country=="taiwan" | country=="china, taiwan province" | country=="chinese taipei"
//沙特
replace country="saudi arabia" if country=="saudiarabia" | country=="saudi arabia, kingdom of"
//乌克兰
replace country="ukraine" if country=="ukrainian ssr"
//俄罗斯
replace country="russian federation" if country=="russian federation" | country=="russia" 
//波多黎各
replace country="puerto rico" if country=="the commonwealth of puerto rico"
//玻利维亚
replace country="plurinational state of bolivia" if country=="bolivia (plurinational state of)" | country=="bolivia, plurinational state of"
//老挝
replace country="lao people's dem. rep." if country=="lao people's democratic republic" | country=="lao people's dem rep" | country=="laos"  | country=="lao pdr"
//瑞士
replace country="swaziland" if country=="eswatini"  
//密克罗尼西亚联邦
replace country="federated state of micronesia" if country=="micronesia (fed. states of)" | country=="micronesia"
//法属波利尼西亚
replace country="french polynesia" if country=="polynesia"
//北马其顿
replace country="the former yugoslav republic of macedonia" if country=="north macedonia"
//叙利亚
replace country="syria" if country=="syrian arab republic"
//坦桑尼亚
replace country="united republic of tanzania" if country=="tanzania - mainland"
//也门
replace country="yemen" if country=="yemen, rep." | country=="yemen, people's democratic republic"
//玻利维亚
replace country="Plurinational State Of Bolivia" if country=="bolivia"
//坦桑尼亚
replace country="united republic of tanzania" if country=="tanzania, tnited republic of" | country=="tanzania"
//刚果（金）
replace country="democratic republic of the congo" if country=="congo"  | country=="congo (kinshasa)" | country=="democratic republic of congo"  | country=="drc" | country=="congo, the democratic republic of the"
//文莱
replace country="brunei darussalam" if country=="brunei"
//缅甸
replace country="myanmar" if country=="burma"
//特立尼达和多巴哥
replace country="trinidad and tobago" if country=="trinidad & tobago"
//黎巴嫩
replace country="lebanon" if country=="lebanese republic"
//吉尔吉斯斯坦
replace country="kyrgyzstan" if country=="kyrgyz republic"
//巴林
replace country="bahrain" if country=="bahrain, kingdom of"
//科威特
replace country="kuwait" if country=="kuwait, the state of"
//冈比亚
replace country="gambia" if country=="the gambia"
//圣多美和普林西比
replace country="sao tome and principe" if country=="sao tomé and principe"
//斯洛伐克
replace country="slovakia" if country=="slovak republic"
//土耳其
replace country="turkey" if country=="türkiye"
//捷克和斯洛伐克联邦共和国
replace country="czechoslovakia" if country=="czech and slovak federal republic"
//圣马丁岛
replace country="saint martin (france)" if country=="saint martin"
//replace country=strproper(country)

replace country="" if country==""
replace country="" if country=="" |country==""
replace country="" if country=="" | country=="" | country==""

merge m:1 country using "C:\Users\wangy\Desktop\stata代码\国家名称统一\country-iso"