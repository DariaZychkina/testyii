<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
	<?php echo $content; ?>

	<div class="span-5 last">
		<div id="sidebar">
		<?php
			if(!Yii::app()->user->isGuest) $this->widget('UserMenu');
		?>
		</div><!-- sidebar -->
	</div>
</div><!-- content -->
<?php $this->endContent(); ?>