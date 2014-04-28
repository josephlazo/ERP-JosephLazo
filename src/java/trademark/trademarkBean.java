/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package trademark;

/**
 *
 * @author Joseph
 */
public class trademarkBean implements java.io.Serializable {
    public int idTrademark;
    public String trademarkName;

    public trademarkBean() {
    }

    public int getIdTrademark() {
        return idTrademark;
    }

    public void setIdTrademark(int idTrademark) {
        this.idTrademark = idTrademark;
    }

    public String getTrademarkName() {
        return trademarkName;
    }

    public void setTrademarkName(String trademarkName) {
        this.trademarkName = trademarkName;
    }
    
    
}
