		</div>
	</div>

	<div id="footer">
		<div class="jumbotron push-spaces">
			<strong><?php echo $this->lang->line('common_copyrights', date('Y')); ?> · 
			<a href="https:www.infinizee.com" target="_blank">Infinizee</a>  · 
  			<?php echo $this->config->item('application_version'); ?> - <?php echo substr($this->config->item('commit_sha1'), 0, 6); ?></strong>.
		</div>
	</div>
</body>
</html>
