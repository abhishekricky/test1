<?php

class RActiveRecord extends CActiveRecord {

    public function getDbConnection() {

        if (Yii::app()->user->isGuest) {
            return Yii::app()->db;
        } else {
            switch (Yii::app()->user->getState('db')) {
                case "surat":
                    return Yii::app()->db1;
                    break;
                case "ahm":
                    return Yii::app()->db2;
                    break;
                default:
                    return Yii::app()->db;
            }
        }
    }

}
