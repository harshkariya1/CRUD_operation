const { QueryTypes} = require('sequelize')
const sequelize = require("../model")

const fetchUsers = async (req, res) => {
    const users = await sequelize.query("Select * from user",{
        type: QueryTypes.SELECT
    });
    res.status(200).json({users : users})

}

module.exports = {
    fetchUsers
}