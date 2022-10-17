'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class contact extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  contact.init({
    nama: DataTypes.STRING,
    noHp: DataTypes.STRING,
    email: DataTypes.STRING,
    propict: DataTypes.STRING,
    createdBy: DataTypes.INTEGER,
    updatedBy: DataTypes.INTEGER,
    deletedBy: DataTypes.INTEGER,
    deletedAt: DataTypes.DATE,
    isDeleted: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'contact',
  });
  return contact;
};