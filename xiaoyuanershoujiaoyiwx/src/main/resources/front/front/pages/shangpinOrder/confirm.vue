<template>
    <view class="content">
        <form>

            <view @tap="onAddressTap" class="cu-form-group">
                <view class="title">地址</view>
                <view v-if="addresszhi != null" style="height: auto;width: 600rpx;">
                    {{addresszhi.addressDizhi}}（{{addresszhi.addressName}} 收） {{addresszhi.addressPhone}}
                </view>
                <view v-else>
                选择地址
                </view>
            </view>
			<view class="cu-form-group">
			    <view class="title">购买清单</view>
			</view>
			<view :style='{"boxShadow":"0","backgroundColor":"rgba(255, 255, 255, 0.25)","borderColor":"rgba(228, 232, 230, 1)","margin":"0 0 0px 0","borderWidth":"2rpx","borderStyle":"none none solid none ","height":"100rpx"}'
			      class="cu-form-group">
			    <picker @change="quwuTypesChange" :value="quwuTypesIndex" :range="quwuTypesOptions" range-key="indexName">
			        <view
			                :style='{"padding":"0 30rpx","boxShadow":"0 0 16rpx var(--publicSubColor) inset","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"var(--publicMainColor)","borderRadius":"20rpx","color":"var(--publicMainColor)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx","marginTop":"7rpx"}'
			                class="uni-input">{{quwuTypes?quwuValue:"请选择取物类型"}}</view>
			    </picker>
			</view>
			<view class="cu-form-group">
                <view class="title">购买清单</view>
            </view>
            <view v-for="(item,index) in orderGoods " v-bind:key="index" class="cu-form-group">
                <image class="avator" :src="baseUrl+item.shangpinPhoto" mode=""></image>
                <view class="title" style="width: 75%;">
                    <view style="margin-top: -50rpx;">{{item.shangpinName}}</view>
                    <view >
                        x{{item.buyNumber}}
                        <text style="margin-left: 30upx;color: red;">￥{{item.shangpinNewMoney}}</text>
                    </view>
                </view>
            </view>
            <view @tap="onAddressTap" class="cu-form-group">
                <view class="title">总价</view>
                <view>
                    <text v-if="shangpinOrderPaymentTypes == 1">原价：￥{{(maxNewMouey).toFixed(2)}}</text>
                    <view v-if="shangpinOrderPaymentTypes == 1"></view>
                    <text v-if="shangpinOrderPaymentTypes == 1">折扣价：￥{{(maxNewMouey * zhekou).toFixed(2)}}</text>
                    <text v-if="shangpinOrderPaymentTypes == 2">{{(maxNewMouey).toFixed(2)}}积分</text>
                </view>
            </view>
        </form>
        <view class="padding" style="text-align: center;">
            <button @tap="onSubmitTap()" class="bg-red lg">确认支付</button>
        </view>
    </view>
</template>

<script>
    export default {
        data() {
            return {
                user: {},//登录用户
                orderGoods: [],//展示数据
                maxNewMouey: 0,//总价格
                addresszhi: {},//选中的地址
                shangpinOrderPaymentTypes:1,//是什么支付类型
				quwuTypes: '',//数字
				quwuValue: '',
				quwuTypesIndex : 0,
				quwuTypesOptions:[],
                zhi:[
                    {
                        id:1,
                        val:"余额"
                    },
                    {
                        id:2,
                        val:"积分"
                    },
                ],
                zhekou:1,//折扣
            }
        },
        computed: {
            baseUrl() {
                return this.$base.url;
            },
        },
        async onLoad(options) {
            // 获取订单信息，座位信息
            this.orderGoods = uni.getStorageSync('orderGoods');
            if(this.orderGoods.length>0){
                for (let i = 0; i < this.orderGoods.length; i++) {
                    this.maxNewMouey = this.maxNewMouey + parseFloat(this.orderGoods[i].shangpinNewMoney) * this.orderGoods[i].buyNumber
                }
            }
            uni.removeStorageSync("orderGoods")
        },
        async onShow() {
            let _this = this
            let table = uni.getStorageSync("nowTable");
            let userRes = await _this.$api.session(table)
            _this.user = userRes.data

            let huiyuandengjiTypesRes = await _this.$api.page("dictionary",{
                dicCode: "huiyuandengji_types",
                dicName: "会员等级类型",
                codeIndexStart: _this.user.huiyuandengjiTypes,
                codeIndexEnd: _this.user.huiyuandengjiTypes,
            })
            if(huiyuandengjiTypesRes.data.list.length >0){
                _this.zhekou = Number(huiyuandengjiTypesRes.data.list[0].beizhu);
            }

			let quwuTypesParams = {
                page: 1,
                limit: 100,
                dicCode: 'quwu_types',
            }
			let quwuTypes = await this.$api.page(`dictionary`, quwuTypesParams);
			this.quwuTypesOptions = quwuTypes.data.list
			
			
   			 let address = uni.getStorageSync('address')
            uni.removeStorageSync("address")
            if(address != null && address != ""){
                _this.addresszhi = address
            }else{
                address = await _this.$api.list('address',{
                    yonghuId: _this.user.id,
                    isdefaultTypes: 2
                });
                if(address.data.list.length > 0){
                    _this.addresszhi = address.data.list[0]
                }else{
                    _this.addresszhi = null
                }
            }
        },
        methods: {
			quwuTypesChange(e) {
			    this.quwuTypesIndex = e.target.value
			    this.quwuValue = this.quwuTypesOptions[this.quwuTypesIndex].indexName
			    this.quwuTypes = this.quwuTypesOptions[this.quwuTypesIndex].codeIndex
			},
            async onSubmitTap() {
                let _this = this;
                let table = uni.getStorageSync("nowTable");
                uni.showModal({
                    title: '提示',
                    content: '是否确认支付',
                    success: async function(res) {
                        if (res.confirm) {
                            if(_this.addresszhi == null){
                                _this.$utils.msg('请选择地址');
                                return
                            }
							if(_this.quwuTypes == null || _this.quwuTypes == ''){
							    _this.$utils.msg('请选择取物类型');
							    return
							}
							 let data = {
								addressId: _this.addresszhi.id,
								 shangpinId: _this.orderGoods[0].shangpinId,
								 buyNumber: _this.orderGoods[0].buyNumber,
								 yonghuId: _this.user.id,
								 quwuTypes: _this.quwuTypes,
								 shangpinOrderPaymentTypes:  _this.shangpinOrderPaymentTypes,
							 }
							await _this.$api.add('shangpinOrder',data);
                            _this.$utils.jump('/pages/shangpinOrder/list');
                        }
                    }
                });
            },
            async onAddressTap() {
                let _this = this
                _this.$utils.jump('/pages/address/list');
            }
        }
    }
</script>

<style lang="scss">
    .avator {
        width: 150upx;
        height: 150upx;
        margin: 20upx 0;
    }
</style>
