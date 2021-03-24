function load_highscore() {
	if (file_exists("highscore.sav")) {
		var file_id = file_text_open_read("highscore.sav");
	
		global.highscore = real(base64_decode(base64_decode(base64_decode(file_text_read_string(file_id)))));
		file_text_readln(file_id);
		global.adventure_highscore = real(base64_decode(base64_decode(base64_decode(file_text_read_string(file_id)))));
		file_text_close(file_id);
	
		if (!is_real(global.highscore)) global.highscore = 0;
		if (!is_real(global.adventure_highscore)) global.adventure_highscore = 0;
	
	}


}
