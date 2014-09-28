package com.xpi.settle.sys

class OrderInfo {

    String oifOrderno
    Long oifVersion
    String oifStatus
    Double oifTrxamout
    String oifCrytype
    String oifSucctime
    String oifTimeout
    String oifProfitinf
    String oifUserid
    String oifPaycst
    String oifPayacc
    String oifRcvcst
    String oifRcvacc
    String oifOrdertype
    String oifMallid
    String oifGoodsinf
    String oifGoodsnum
    String oifNotifyurl
    String oifRefundtime
    Double oifRefundamt
    Integer oifRefundcount = 0
    Double oifFeeamount = 0
    String oifReqip
    String oifDescription
    String oifTranflow
    String oifOldorderno
    String oifBatchno
    String oifRemarkone
    String oifRemarktwo
    String oifSettleNo
    String oifSettleDate
    String oifSettleStatus = '01'
    String oifCsttype
    Integer oifNotifycount = 0
    String oifNotifyflag
    String oifNotifycontent
    String oifTradeMode = '1'
    String oifTransType
    String oifLogisticsName
    String oifLogisticsOrderno
    String oifLogisticsSendtime
    String oifLogisticsType
    String oifReturnurl
    String oifSecuredDefaultPaytime

    static constraints = {
        oifOrderno blank: false, size: 1..30
        oifVersion nullable: true, range: 1..9999999999
        oifStatus nullable: true, size: 0..2
        oifTrxamout nullable: true, scale: 2
        oifCrytype nullable: true, size: 0..3
        oifSucctime nullable: true, size: 0..14
        oifTimeout nullable: true, size: 0..14
        oifProfitinf nullable: true, size: 0..255
        oifUserid nullable: true, size: 0..10
        oifPaycst nullable: true, size: 0..10
        oifPayacc nullable: true, size: 0..20
        oifRcvcst nullable: true, size: 0..10
        oifRcvacc nullable: true, size: 0..20
        oifOrdertype nullable: true, size: 0..2
        oifMallid nullable: true, size: 0..20
        oifGoodsinf nullable: true, size: 0..200
        oifGoodsnum nullable: true, size: 0..20
        oifNotifyurl nullable: true, size: 0..300
        oifRefundtime nullable: true, size: 0..14
        oifRefundamt nullable: true, scale: 2
        oifRefundcount nullable: true, range: 0..99
        oifFeeamount nullable: true, scale: 2
        oifReqip nullable: true, size: 0..19
        oifDescription nullable: true, size: 0..200
        oifTranflow nullable: true, size: 0..20
        oifOldorderno nullable: true, size: 0..19
        oifBatchno nullable: true, size: 0..19
        oifRemarkone nullable: true, size: 0..100
        oifRemarktwo nullable: true, size: 0..100
        oifSettleNo nullable: true, size: 0..20
        oifSettleDate nullable: true, size: 0..14
        oifSettleStatus nullable: true, size: 0..2
        oifCsttype nullable: true, size: 0..2
        oifNotifycount nullable: true, range: 0..99
        oifNotifyflag nullable: true, size: 0..1
        oifNotifycontent nullable: true, size: 0..80
        oifTradeMode nullable: true, size: 0..1
        oifTransType nullable: true, size: 0..1
        oifLogisticsName nullable: true, size: 0..80
        oifLogisticsOrderno nullable: true, size: 0..80
        oifLogisticsSendtime nullable: true, size: 0..14
        oifLogisticsType nullable: true, size: 0..10
        oifReturnurl nullable: true, size: 0..300
        oifSecuredDefaultPaytime nullable: true, size: 0..14
    }
}
