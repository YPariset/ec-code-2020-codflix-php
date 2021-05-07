<?php

require_once( 'model/media.php' );

/***************************
* ----- LOAD HOME PAGE -----
***************************/

function mediaPage() {

  $searchByTitle = isset( $_GET['title'] ) ? $_GET['title'] : null;
  $searchByType = isset( $_GET['type'] ) ? $_GET['type'] : null;

  $medias = Media::filterMedias( $searchByTitle, $searchByType );

  require('view/mediaListView.php');

}
