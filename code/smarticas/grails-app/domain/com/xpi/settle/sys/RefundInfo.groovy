package com.xpi.settle.sys

class RefundInfo {

    String rifOrderNo
    Long rifVersion
    String rifStatus
    Double rifTrxAmount
    String rifCryType
    String rifSuccTime
    String rifUserId
    String rifPayCst
    String rifpayAcc
    String rifRcvCst
    String rifRcvAcc
    String rifOrderType
    String rifMallId
    String rifNotifyUrl
    String rifFeeAmount
    String rifReqIp
    String rifDescription
    String rifTranFlow
    String rifOldOrderNo
    String rifOldTranFlow
    String rifPayAccName
    String rifPayAccNo
    String rifPayStatus
    Double rifPayAmount
    String rifCfmUser
    String rifCfmDate
    String rifCstType
    String rifSettleStatus = '01'
    String rifSettleNo
    Double rifMerRefundAmt

    static constraints = {
        rifOrderNo nullable: true, size: 0..20
        rifVersion nullable: true, range: 0..9999999999
        rifStatus nullable: true, size: 0..2
        rifTrxAmount nullable: true, scale: 2
        rifCryType nullable: true, size: 0..3
        rifSuccTime nullable: true, size: 0..14
        rifUserId nullable: true, size: 0..10
        rifPayCst nullable: true, size: 0..10
        rifpayAcc nullable: true, size: 0..20
        rifRcvCst nullable: true, size: 0..10
        rifRcvAcc nullable: true, size: 0..20
        rifOrderType nullable: true, size: 0..2
        rifMallId nullable: true, size: 0..20
        rifNotifyUrl nullable: true, size: 0..300
        rifFeeAmount nullable: true, scale: 2
        rifReqIp nullable: true, size: 0..19
        rifDescription nullable: true, size: 0..200
        rifTranFlow nullable: true, size: 0..20
        rifOldOrderNo nullable: true, size: 0..30
        rifOldTranFlow nullable: true, size: 0..20
        rifPayAccName nullable: true, size: 0..40
        rifPayAccNo nullable: true, size: 0..20
        rifPayStatus nullable: true, size: 0..2
        rifPayAmount nullable: true, scale: 2
        rifCfmUser nullable: true, size: 0..40
        rifCfmDate nullable: true, size: 0..14
        rifCstType nullable: true, size: 0..2
        rifSettleStatus nullable: true, size: 2..2
        rifSettleNo nullable: true, size: 0..20
        rifMerRefundAmt nullable: true, scale: 2
    }
}
