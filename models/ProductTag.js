const { Model, DataTypes } = require("sequelize");

const sequelize = require("../config/connection");

class ProductTag extends Model {}

ProductTag.init(
  {
    product_id: {
      type: DataTypes.STRING,
      allowNull: false,
      len: [1, 160],
    },
    tag_id: {
      type: DataTypes.STRING,
      allowNull: false,
      len: [1, 160],
    },
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: "product_tag",
  }
);

module.exports = ProductTag;
