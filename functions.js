var mysql=require('mysql');
var db=mysql.createConnection({ host:'localhost',user:'root',password:'',database:'chatapp'});
var usersdatares='';
var users_id='';

fetchUserName=function(user_id){
    var Name="select * from users where user_id=?";
    return new Promise((resolve,reject)=>{
db.query(Name,[user_id],function(err,res){
    return resolve(res[0].name);
})

    })
}

fetchfrnds= function(user_id){
    var fetched="select * from users where user_id=?";    
    return new Promise((resolve,reject) =>{
        db.query(fetched,[user_id],function(err,res){                        
            for(z=0;z<res.length;z++){                                
                friendsarray=res[z].friends;
                usersdatares=res[z];
            }
            
            return resolve([usersdatares,friendsarray]);
        })
    })
}

saveId=function saveId(saveId){
    users_id=saveId;
    return users_id;
}

function sum(sum1,sum2){
    return sum1+sum2;
}

function callback(usersdatares){    
return usersdatares;
}
var arrayfrnds=[];
arrayfrnds=[];
allusersfun=function allusersfun(user_id){
    users="select friends from users where user_id=?";
    return new Promise((resolve,reject) =>{
        db.query(users,[user_id],function(err,result){
            if(result[0]!=''){
                var usersdecode=JSON.parse(result[0].friends);              
                return resolve(usersdecode);  
            }else{
                var usersdecode=[];
                return resolve(usersdecode);
            }
        })
    })    

}

singleUser=function singleUser(user_id){
    return new Promise((resolve,reject) =>{
    var frndsqry="select * from users where user_id=?"; 
    db.query(frndsqry,[user_id],function(err,ress){        
    return resolve(ress[0]);                 
    })
})
}

addfrnd= function addfrnd(mine_id,id){
var sql = "select friends from users where user_id=?";
db.query(sql,[mine_id],function(err,res){
    if(err){
        console.log(err)
    }else{    
    if(res[0].friends!=null){     
        var array=[];   
        array=JSON.parse(res[0].friends);    
        array.push(id);
        var stringarray= JSON.stringify(array);
    }else{                
        var array=[];
        array.push(id);        
       var stringarray= JSON.stringify(array);
    }
var sql1='update users set friends=? where user_id=?';
    db.query(sql1,[stringarray,mine_id],function(err,res){
        if(err){
            console.log(err)
        }else{
            console.log('success');
        }
    })
}
})
}

AllUsers= function (user_id){

    var ExceptMe="select * from users where user_id!=?";

    return new Promise((resolve,reject)=>{
        db.query(ExceptMe,[user_id],function(err,res){
            // console.log(res);
            resolve(res);
        })
    })
}

oldpass= function(userId) {
    var pass="select * from users where user_id=?";
    return new Promise((resolve,reject)=>{
db.query(pass,[userId],function(err,res){
    resolve(res[0].password);
})

    })

}

module.exports = { fetchfrnds ,fetchUserName ,sum , oldpass ,addfrnd , allusersfun,singleUser,saveId,AllUsers};