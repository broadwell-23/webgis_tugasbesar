<?php


function getExtension($str) {
	$i = strrpos($str,".");
	if (!$i) { return ""; }
	$l = strlen($str) - $i;
	$ext = substr($str,$i+1,$l);
	return $ext;
}


function clean($string) {
   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
   return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
}


function UploadCustomImage($temp, $prefix, $filename, $ext, $dir, $w=0, $h=0){
  
   // $upload_iname =	$fupload_name; // nama gambar yang di upload
   // $upload_itipe = strtolower($tipe); // tipe gambar yang di upload
   // $upload_idir  = $vdir_upload;//direktori gambar 
   // $vfile_upload = $upload_idir.$upload_iname;
   
	 if (strtolower($ext) == "gif"){
      $im_src = imagecreatefromgif($temp);
      // $src_width = imageSX($im_src);
      // $src_height = imageSY($im_src); 
    } 
	else if(strtolower($ext)=="png"){
      $im_src = imagecreatefrompng($temp);
      // $src_width = imageSX($im_src);
      // $src_height = imageSY($im_src);
 
    } else {
      $im_src = imagecreatefromjpeg($temp);
      // $src_width = imageSX($im_src);
      // $src_height = imageSY($im_src);
 
    }
	
    list($src_width,$src_height)=getimagesize($temp);
	
	
    //proses perubahan ukuran
	if (!empty($w) or $w!=0){
		$new_width  = $w;
		$new_height = ($new_width/$src_width)*$src_height;
	}
	else{
		$new_height = $h;
		$new_width  = ($new_height/$src_height)*$src_width;
	}
	
	$tmp=imagecreatetruecolor($new_width,$new_height);	
	
	
	
	$new_filename = $dir.$prefix.$filename.".".$ext;
	
	if (strtolower($ext) == "gif"){
		imagecopyresampled($tmp,$im_src,0,0,0,0,$new_width,$new_height,$src_width,$src_height);
		imagegif($tmp,$new_filename);
    } 
	else if(strtolower($ext)=="png"){
		imagealphablending($tmp, false);
		imagesavealpha($tmp,true);
		imagecopyresampled($tmp,$im_src,0,0,0,0,$new_width,$new_height,$src_width,$src_height);
		imagepng($tmp,$new_filename);	
    } else {
		imagecopyresampled($tmp,$im_src,0,0,0,0,$new_width,$new_height,$src_width,$src_height);
		imagejpeg($tmp,$new_filename,100); 
    }
	
	
	
    // $im = imagecreatetruecolor($upload_iwidth,$upload_iheight);
    // imagecopyresampled(dst_img, src_img, dst_x, dst_y, src_x, src_y, dst_w, dst_h, src_w, src_h)
    // imagecopyresampled($im, $im_src, 0, 0, 0, 0, $upload_iwidth, $upload_iheight, $src_width, $src_height);
    // imagejpeg($im, $upload_idir.$name.$upload_iname);

  // Hapus gambar di memori komputer
  // imagedestroy($im_src);
  // imagedestroy($im);
}



function tanggalIndo($waktu, $format) { //{tanggalIndoTiga tgl=0000-00-00 00:00:00 format="l, d/m/Y H:i:s"}
	if($waktu == "0000-00-00" || !$waktu || $waktu == "0000-00-00 00:00:00") {
		$rep = "";
	} else {
		if(preg_match('/-/', $waktu)) {
			$tahun = substr($waktu,0,4);
			$bulan = substr($waktu,5,2);
			$tanggal = substr($waktu,8,2);
		} else {
			$tahun = substr($waktu,0,4);
			$bulan = substr($waktu,4,2);
			$tanggal = substr($waktu,6,2);
		}

		$jam = substr($waktu,11,2);
		$menit= substr($waktu,14,2);
		$detik = substr($waktu,17,2);
		$hari_en = array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
		$hari_id = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu");
		$bulan_en = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
		$bulan_id = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
		$ret = @date($format, @mktime($jam, $menit, $detik, $bulan, $tanggal, $tahun));

		$replace_hari = str_replace($hari_en, $hari_id, $ret);
		$rep = str_replace($bulan_en, $bulan_id, $replace_hari);
		$rep = nl2br($rep);
	}
	return $rep;
}






function halaman($tot,$perhal,$adj,$file=""){
	$adjacents = $adj;
    $total_pages =$tot;
    $targetpage = "$file";
    $limit = $perhal;  
    if (ISSET($_GET['hal'])) $page = $_GET['hal']; else $page=1;

    if($page) 
        $start = ($page - 1) * $limit;
    else
        $start = 0;     

    // if ($page == 0) $page = 1;                    // Default Halaman 1
    $prev = $page - 1;                            // Halaman sebelumnya = $page - 1
    $next = $page + 1;                            // Halaman Berikutnya= $page + 1
    $lastpage = ceil($total_pages/$limit);        // Halaman Terakhir = Jumlah Halaman / Record per Halaman , dibulatkan
    $lpm1 = $lastpage - 1;                        // Halaman Terakhir - 1

    $pagination = "";
    // if($lastpage > 1)
    // {    
        $pagination .= "<div class=\"paging clearfix\">";
        $pagination.= " <label style='float:left;'>Halaman <strong>$page</strong> dari <strong>$lastpage</strong>  ( $tot Record )</label>"; 
        //Tombol Sebelumnya
        if ($page > 1) 
            $pagination.= "<a href=\"$targetpage"."$prev\"> &lt;</a>";
        else
            $pagination.= "<span class=\"disabled\"> &lt;</span>";    
        
        //Halaman  
        if ($lastpage < 7 + ($adjacents * 2))    //not enough pages to bother breaking it up
        {    
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage"."$counter\">$counter</a>";                    
            }
        }
        elseif($lastpage > 5 + ($adjacents * 2))    //enough pages to hide some
        {
            //close to beginning; only hide later pages
            if($page < 1 + ($adjacents * 2))        
            {
                for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage"."$counter\">$counter</a>";                    
                }
                $pagination.= " . . . ";
                //$pagination.= "<a href=\"$targetpage"."page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage"."$lastpage\">$lastpage</a>";        
            }
            //in middle; hide some front and some back
            elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
            {
                $pagination.= "<a href=\"$targetpage"."1\">1</a>";
                //$pagination.= "<a href=\"$targetpage"."page=2\">2</a>";
                $pagination.= " . . . ";
                for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage"."$counter\">$counter</a>";                    
                }
                $pagination.= " . . . ";
                //$pagination.= "<a href=\"$targetpage"."page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage"."$lastpage\">$lastpage</a>";        
            }
            //close to end; only hide early pages
            else
            {
                $pagination.= "<a href=\"$targetpage"."1\">1</a>";
                //$pagination.= "<a href=\"$targetpage"."page=2\">2</a>";
                $pagination.= " . . . ";
                for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage"."$counter\">$counter</a>";                    
                }
            }
        }
        
        //Tombol Selanjutnya
        if ($page < $counter - 1) 
            $pagination.= "<a href=\"$targetpage"."$next\">&gt; </a>";
        else
            $pagination.= "<span class=\"disabled\">&gt; </span>";       
        $pagination.= "</div>";        
    // }
        echo $pagination;
}



function ribuan($angka){
	$jum =number_format($angka,0,',','.');
	return $jum;
}

function get_client_ip() {
     $ipaddress = '';
     if (ISSET($_SERVER['HTTP_CLIENT_IP']))
         $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
     else if(ISSET($_SERVER['HTTP_X_FORWARDED_FOR']))
         $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
     else if(ISSET($_SERVER['HTTP_X_FORWARDED']))
         $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
     else if(ISSET($_SERVER['HTTP_FORWARDED_FOR']))
         $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
     else if(ISSET($_SERVER['HTTP_FORWARDED']))
         $ipaddress = $_SERVER['HTTP_FORWARDED'];
     else if(ISSET($_SERVER['REMOTE_ADDR']))
         $ipaddress = $_SERVER['REMOTE_ADDR'];
     else
         $ipaddress = 'UNKNOWN';

     return $ipaddress; 
}





?>