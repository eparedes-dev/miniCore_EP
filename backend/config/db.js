const mysql = require ('mysql2');

const {Sequelize,Op} = require('sequelize')

const sequelize = new Sequelize('bd_minicore', 'root', '123456', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false
})

sequelize.sync(/*{ force: true }*/)
    .then(() => {
        console.log(`Database & tables created!`);
    });

module.exports = {sequelize,Sequelize,Op}