function fn()
{
var config=
{
baseurl:"https://reqres.in",
listUsers:"/api/users?page=2"
}
    karate.log("from karate config");
    karate.configure("ssl",false);
    return config;
}