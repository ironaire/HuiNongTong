package com.xpi.settle.sys

class PaymentInfo {

    String pifFlowNo
    String pifTranflowNo
    Long pifVersion
    Double pifTrxAmount
    Double pifSuccAmount
    String pifSuccTime
    String pifStatus
    String pifPayType
    String pifBankFlowNo
    String pifReturnCode
    String pifReturnMsg
    String pifClientIp
    String pifPFlowNo
    String pifDescription
    String pifBankId
    String pifBankMerId
    String pifBankAccNo
    String pifOldFlowNo
    String pifTransType
    String pifCheckTime
    String pifCheckRes
    String pifBatchNo
    String pifPayCstNo
    String pifRcvCstNo
    String pifCardNo


    static constraints = {
        pifFlowNo blank: false, size: 1..20
        pifTranflowNo nullable: true, size: 0..20
        pifVersion nullable: true, range: 0..9999999999999999999999
        pifTrxAmount nullable: true, scale: 2
        pifSuccAmount nullable: true, scale: 2
        pifSuccTime nullable: true, size: 0..14
        pifStatus nullable: true, size: 0..2
        pifPayType nullable: true, size: 0..2
        pifBankFlowNo nullable: true, size: 0..20
        pifReturnCode nullable: true, size: 0..19
        pifReturnMsg nullable: true, size: 0..100
        pifClientIp nullable: true, size: 0..100
        pifPFlowNo nullable: true, size: 0..20
        pifDescription nullable: true, size: 0..19
        pifBankId nullable: true, size: 0..20
        pifBankMerId nullable: true, size: 0..20
        pifBankAccNo nullable: true, size: 0..20
        pifOldFlowNo nullable: true, size: 0..20
        pifTransType nullable: true, size: 0..5
        pifCheckTime nullable: true, size: 0..8
        pifCheckRes nullable: true, size: 0..2
        pifBatchNo nullable: true, size: 0..20
        pifPayCstNo nullable: true, size: 0..10
        pifRcvCstNo nullable: true, size: 0..10
        pifCardNo nullable: true, size: 0..30
    }

}
