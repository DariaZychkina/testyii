<?php
/* @var $this SiteController */
$this->breadcrumbs=array(
	'Posts',
);
$this->pageTitle=Yii::app()->name;
?>

<h1>Welcome to <i><?php echo CHtml::encode(Yii::app()->name); ?></i></h1>

<h1><?php echo CHtml::link('Посмотреть посты',array('post/')); ?></h1>


