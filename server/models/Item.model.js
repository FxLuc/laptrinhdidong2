const mongoose = require("mongoose")

const itemSchema = new mongoose.Schema({
  _id: {
    type: String,
    lenght: 42,
    required: true,
  },
  name: {
    type: String,
    required: true,
  },
  price: {
    type: Number,
    min: 0,
    default: 0,
  },
  state: {
    type: Number,
    min: 0,
    default: 0
  },
  owner: {
    type: String,
    lenght: 42,
    required: true,
    ref: 'Account'
  },
  purchaser: {
    type: String,
    lenght: 42,
    default: '0x0000000000000000000000000000000000000000',
    ref: 'Account'
  },
  description: {
    type: String,
  },
  specifications: {
    type: String,
    required: true,
  },
  externaLink: {
    type: String,
  },
  picture: {
    type: String,
    default: "http://localhost:4000/pictures/default.png",
  },
}, {timestamps: true})

module.exports = mongoose.model("Item", itemSchema)