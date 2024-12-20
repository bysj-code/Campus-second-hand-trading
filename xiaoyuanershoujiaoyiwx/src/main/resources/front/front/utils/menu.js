const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-addressbook",
                        "buttons":[
                            "查看"
                        ],
                        "menu":"收货地址",
                        "menuJump":"列表",
                        "tableName":"address"
                    }
                ],
                "menu":"收货地址"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-activity",
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告信息",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告信息"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-goods",
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"商品",
                        "menuJump":"列表",
                        "tableName":"shangpin"
                    }
                ],
                "menu":"商品"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-favor",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"商品收藏",
                        "menuJump":"列表",
                        "tableName":"shangpinCollection"
                    }
                ],
                "menu":"商品收藏"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-evaluate",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"商品评价",
                        "menuJump":"列表",
                        "tableName":"shangpinCommentback"
                    }
                ],
                "menu":"商品评价"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-order",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"商品订单",
                        "menuJump":"列表",
                        "tableName":"shangpinOrder"
                    }
                ],
                "menu":"商品订单"
            }
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"用户",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;
