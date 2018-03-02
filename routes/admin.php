<?php


CRUD::resource('tbltype', 'TblTypeCrudController');
CRUD::resource('tblcategory', 'TblCategoryCrudController');
CRUD::resource('tblproduct', 'TblProductCrudController');
CRUD::resource('tblposition', 'TblPositionCrudController');
CRUD::resource('tblpostjob', 'TblPostJobCrudController');
CRUD::resource('tblapplyjob', 'TblApplyJobCrudController');
Route::get('apply-job-detail', 'TblApplyJobCrudController@applyJobHistory');
CRUD::resource('tblcardcategory', 'TblCardCategoryCrudController');
CRUD::resource('tblcard', 'TblCardCrudController');

CRUD::resource('admin-user', 'AdminUserCrudController');
CRUD::resource('tblpromotion', 'TblPromotionCrudController');