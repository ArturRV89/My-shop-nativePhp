// 
// Функция добавления товара в корзину
// 



// @param integer itemId - ID продукта
// @return в случае успеха обновятся данные корзины на странице
// 

function addToCart(itemId)
{
    console.log("js - addToCart()");
    $.ajax({
        type: 'POST',
        url: "/cart/addtocart/" + itemId + '/',
        dataType: 'json',
        success: function (data) {
            if ( data['success']){
                $('#cartCntItems').html(data['cntItems']);

                $('#addCart_' + itemId).hide();
                $('#removeCart_' + itemId).show();
            }
        }
    });
}



// удаление продукта из корзины
// 
// @param integer itemId - ID продукта
// @return в случае успеха обновляется данные корзины на странице
// 

function removeFromCart(itemId) 
{
    console.log("js - removeFromCart("+itemId+")");
    $.ajax({
        method: 'POST',
        url: "/cart/removefromcart/" + itemId + '/',
        dataType: 'json',
        success: function (data) {
            if (data['success']){
                $('#cartCntItems').html(data['cntItems']);

                $('#addCart_' + itemId).show();
                $('#removeCart_' + itemId).hide();
            }
        }
    });
}



// подсчет стоимости купленного товара
// 
// @param integer itemId ID продукта
// 

function conversionPrice(itemId) 
{
    var newCnt = $('#itemCnt_'+ itemId).val();
    var itemPrice = $('#itemPrice_'+ itemId).attr('value');
    var itemRealPrice = newCnt * itemPrice;

    $('#itemRealPrice_' + itemId).html(itemRealPrice);
}



// получение данных с формы
// 
// @param obj_form - формы для заплнения
// 

function getData(obj_form) 
{
    var hData = {};
    $('input, textarea, select' , obj_form).each (function(){
        if (this.name && this.name != '') {
            hData[this.name] = this.value;
            console.log('hData[' + this.name + '] = ' + hData[this.name]);
        }
    });
    return hData;
}



// 
// регистрация нового пользователя
// 

function registerNewUser() 
{
    var postData = getData ('#registerBox');
    $.ajax ({
        type: 'POST',
        url: "/user/register/",
        data: postData,
        dataType: 'json',
        success: function (data) {
            if (data['success']) {
                alert (data['message']);

                // блок в левом столбце
                $('#registerBox').hide();

                $('#userLink').attr('href', '/user/');
                $('#userLink').html(data['userName']);
                $('#userBox').show();
            } else {
                alert(data['message']);
            }
        }
    });
}



// 
// авторизация пользователя
// 

function login() 
{
    var email = $('#loginEmail').val();
    var pwd = $('#loginPwd').val();

    var postData = "email="+ email +"&pwd=" +pwd;

    $.ajax({
        type: 'POST',
        url: "/user/login/",
        data: postData,
        dataType: 'json',
        success: function (data){
            if (data['success']){
                $('#registerBox').hide();
                $('#loginBox').hide();

                $('#userLink').attr('href', '/user/');
                $('#userLink').html(data['displayName']);
                $('#userBox').show();
                
            } else {
                alert(data['message']);
            }
        }
    });
}
