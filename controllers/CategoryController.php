<?php

// 
// Кантроллер страницы категории (/category/1)
// 



// подключаем модели
include_once ('../models/CategoriesModel.php');
include_once ('../models/ProductsModel.php');



// Форматирование страницы категории
// 
// @param object $smarty шаблонизатор
// 

function indexAction($smarty)
{
    $catId = isset($_GET['id']) ? $_GET['id'] : null;
    if ($catId == null) exit();
    
    $rsCategory = getCatById($catId);

    $rsProducts = null;
    $rsChildCats = null;
	$rsCategory = getCatById($catId);

    // если главная категория то показываем дечернии категории,
    // иначе показываем товар
    if ($rsCategory['parent_id'] == 0){
        $rsChildCats = getChildrenForCat($catId);

    } else {
        $rsProducts = getProductsByCat($catId);
    }

    $rsCategories = getAllMainCatsWithChildren();

    $smarty->assign('pageTitle', 'Товары категории ' . $rsCategory['name']);

    $smarty->assign('rsCategory' , $rsCategory);
    $smarty->assign('rsProducts' , $rsProducts);
    $smarty->assign('rsChildCats' , $rsChildCats);
    $smarty->assign('rsCategories', $rsCategories);

    loadTemplate($smarty, 'header');
    loadTemplate($smarty, 'category');
    loadTemplate($smarty, 'footer');
}