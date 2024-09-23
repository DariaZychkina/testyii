<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'Posts'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Все посты', 'url'=>array('index')),
	array('label'=>'Создать пост', 'url'=>array('create')),
	array('label'=>'Посмотреть пост', 'url'=>array('view', 'id'=>$model->id)),
);
?>

<h1>Update Post <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>