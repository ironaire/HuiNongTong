package com.xpi.settle.sys

class OrderInfo {

    String oifOrderNo
    Long oifVersion
    String oifStatus
    Double oifTrxAmout
    String oifCryType
    String oifSuccTime
    String oifTimeout
    String oifProfitInf
    String oifUserId
    String oifPayCst
    String oifPayAcc
    String oifRcvCst
    String oifRcvAcc
    String oifOrderType
    String oifMallId
    String oifGoodsInf
    String oifGoodsNum
    String oifNotifyUrl
    String oifRefundTime
    Double oifRefundAmt
    Integer oifRefundCount = 0
    Double oifFeeAmount = 0
    String oifReqIp
    String oifDescription
    String oifTranFlow
    String oifOldOrderNo
    String oifBatchNo
    String oifRemarkOne
    String oifRemarkTwo
    String oifSettleNo
    String oifSettleDate
    String oifSettleStatus = '01'
    String oifCstType
    Integer oifNotifyCount = 0
    String oifNotifyFlag
    String oifNotifyContent
    String oifTradeMode = '1'
    String oifTransType
    String oifLogisticsName
    String oifLogisticsOrderNo
    String oifLogisticsSendTime
    String oifLogisticsType
    String oifReturnUrl
    String oifSecuredDefaultPayTime

    static constraints = {
        oifOrderNo blank: false, size: 1..30
        oifVersion nullable: true, range: 1..9999999999
        oifStatus nullable: true, size: 0..2
        oifTrxAmout nullable: true, scale: 2
        oifCryType nullable: true, size: 0..3
        oifSuccTime nullable: true, size: 0..14
        oifTimeout nullable: true, size: 0..14
        oifProfitInf nullable: true, size: 0..255
        oifUserId nullable: true, size: 0..10
        oifPayCst nullable: true, size: 0..10
        oifPayAcc nullable: true, size: 0..20
        oifRcvCst nullable: true, size: 0..10
        oifRcvAcc nullable: true, size: 0..20
        oifOrderType nullable: true, size: 0..2
        oifMallId nullable: true, size: 0..20
        oifGoodsInf nullable: true, size: 0..200
        oifGoodsNum nullable: true, size: 0..20
        oifNotifyUrl nullable: true, size: 0..300
        oifRefundTime nullable: true, size: 0..14
        oifRefundAmt nullable: true, scale: 2
        oifRefundCount nullable: true, range: 0..99
        oifFeeAmount nullable: true, scale: 2
        oifReqIp nullable: true, size: 0..19
        oifDescription nullable: true, size: 0..200
        oifTranFlow nullable: true, size: 0..20
        oifOldOrderNo nullable: true, size: 0..19
        oifBatchNo nullable: true, size: 0..19
        oifRemarkOne nullable: true, size: 0..100
        oifRemarkTwo nullable: true, size: 0..100
        oifSettleNo nullable: true, size: 0..20
        oifSettleDate nullable: true, size: 0..14
        oifSettleStatus nullable: true, size: 2..2
        oifCstType nullable: true, size: 0..2
        oifNotifyCount nullable: true, range: 0..99
        oifNotifyFlag nullable: true, size: 0..1
        oifNotifyContent nullable: true, size: 0..80
        oifTradeMode nullable: true, size: 0..1
        oifTransType nullable: true, size: 0..1
        oifLogisticsName nullable: true, size: 0..80
        oifLogisticsOrderNo nullable: true, size: 0..80
        oifLogisticsSendTime nullable: true, size: 0..14
        oifLogisticsType nullable: true, size: 0..10
        oifReturnUrl nullable: true, size: 0..300
        oifSecuredDefaultPayTime nullable: true, size: 0..14
    }
}
