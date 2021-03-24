function save_highscore() {
	var file_id = file_text_open_write("highscore.sav");

	file_text_write_string(file_id, base64_encode(base64_encode(base64_encode(string(global.highscore)))));
	file_text_writeln(file_id);
	file_text_write_string(file_id, base64_encode(base64_encode(base64_encode(string(global.adventure_highscore)))));
	file_text_close(file_id);


}
