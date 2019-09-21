module.exports = {
  networks:{
    development:{
      host:"127.0.0.1",//localhost
      port:8545,//port where ganache is running 
      network_id:"*"//match any network id
    }
  },
  solc:{
    optimizer:{
      enabled:true,
      runs:200
    }
  }
}