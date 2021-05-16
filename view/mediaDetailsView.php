<?php ob_start(); ?>

<div class="media-detail">
        <a class="item" href="index.php?media=<?= $media['id']; ?>">
            <div class="video">
                <div>
                    <iframe allowfullscreen="" frameborder="0"
                            src="<?= $media['trailer_url']; ?>" ></iframe>
                </div>
            </div>
            <div class="title"><?= $media['title']; ?></div>
            <div class="info-media">
                <div class="type">∙<?= $media['type']; ?></div>
                <div class="release_date">∙<?= $media['release_date']; ?></div>
            </div>
            <div class="summary"><?= $media['summary']; ?></div>
            
        </a>
       
        
       
</div>


<?php $content = ob_get_clean(); ?>
<?php require('dashboard.php'); ?>