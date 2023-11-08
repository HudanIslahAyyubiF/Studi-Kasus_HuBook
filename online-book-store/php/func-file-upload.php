<?php
function upload_file($files, $allowed_exs, $path)
{
  $file_name = $files['name'];
  $tmp_name = $files['tmp_name'];
  $error = $files['error'];

  if ($error === 0) {

    $file_ex = pathinfo($file_name, PATHINFO_EXTENSION);
    $file_ex_lc = strtolower($file_ex);

    if (in_array($file_ex_lc, $allowed_exs)) {
      $sm['status'] = 'success';
      $sm['data'] = $file_name;

      return $sm;

    } else {
      $em['status'] = 'error';
      $em['data'] = "You can't upload files of this type";

      return $em;
    }
  } else {
    $em['status'] = 'error';
    $em['data'] = 'Error occurred while uploading!';

    return $em;
  }
}