<?php

require_once( 'controller/homeController.php' );
require_once( 'controller/loginController.php' );
require_once( 'controller/signupController.php' );
require_once( 'controller/mediaController.php' );
require_once( 'controller/contactController.php' );
require_once( 'controller/profileController.php' );

/**************************
* ----- HANDLE ACTION -----
***************************/

$user_id = isset( $_SESSION['user_id'] ) ? $_SESSION['user_id'] : false;

if ( isset( $_GET['action'] ) ):
  switch( $_GET['action']):

    case 'login':

      if ( !empty( $_POST ) ) login( $_POST );
      else loginPage();

    break;

    case 'signup':

      signupPage();
      if ( !empty( $_POST ) ) signup( $_POST );
        else signupPage();

    break;

    case 'media':
      if(empty($user_id)): 
        header('Location:index.php');
      else: 
        mediaPage();
      endif;
    break;

    case 'contact':
      sendMail();
    break;

    case 'profile':
      if(empty($user_id)): 
        header('Location:index.php');
      else: 
        profilePage();
      endif;
    break;

    case 'newPassword':
      if(empty($user_id)): 
        header('Location:index.php');
      else: 
        setNewPassword();
      endif;
    break;

    case 'newMail':
      if(empty($user_id)): 
        header('Location:index.php');
      else: 
        setNewEmail();
      endif;
    break;

    case 'logout':
      logout();
    break;

  endswitch;

else:

  $media_id=isset($_GET['media']) ? $_GET['media'] : null;

  if ($media_id):
        mediaDetails($media_id);
  elseif ($user_id):
        mediaPage();
  else:
    homePage();
  endif;

endif;
