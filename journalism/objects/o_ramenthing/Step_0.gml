c_inputupdate();
c_input();
active = !instance_exists(o_textbox);
if !active exit;
c
if select.hit || count >= capacity {
	active = false;
	if count >= range.lower && count <= range.upper {
		textbox_create(txt_ramenwin);
	} else {
		textbox_create(txt_ramenlose);
	}
}