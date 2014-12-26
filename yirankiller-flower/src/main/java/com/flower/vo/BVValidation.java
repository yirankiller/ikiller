package com.flower.vo;

/**
 * Created by eason on 14-10-31.
 */

/**
 * @Description Bootstrap Validation return class
 *              will convert to json data when return.
 */
public class BVValidation {
    private boolean valid;
    public BVValidation(){};
    public BVValidation(boolean valid){
        this.valid = valid;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
}
